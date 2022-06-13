package org.apache.commons.io.input;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import org.apache.commons.io.FileUtils;

/* loaded from: classes5.dex */
public class Tailer implements Runnable {
    private static final int DEFAULT_BUFSIZE = 4096;
    private static final Charset DEFAULT_CHARSET = Charset.defaultCharset();
    private static final int DEFAULT_DELAY_MILLIS = 1000;
    private static final String RAF_MODE = "r";
    private final Charset cset;
    private final long delayMillis;
    private final boolean end;
    private final File file;
    private final byte[] inbuf;
    private final TailerListener listener;
    private final boolean reOpen;
    private volatile boolean run;

    public Tailer(File file, TailerListener tailerListener) {
        this(file, tailerListener, 1000);
    }

    public Tailer(File file, TailerListener tailerListener, long j) {
        this(file, tailerListener, j, false);
    }

    public Tailer(File file, TailerListener tailerListener, long j, boolean z) {
        this(file, tailerListener, j, z, 4096);
    }

    public Tailer(File file, TailerListener tailerListener, long j, boolean z, boolean z2) {
        this(file, tailerListener, j, z, z2, 4096);
    }

    public Tailer(File file, TailerListener tailerListener, long j, boolean z, int i) {
        this(file, tailerListener, j, z, false, i);
    }

    public Tailer(File file, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        this(file, DEFAULT_CHARSET, tailerListener, j, z, z2, i);
    }

    public Tailer(File file, Charset charset, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        this.run = true;
        this.file = file;
        this.delayMillis = j;
        this.end = z;
        this.inbuf = new byte[i];
        this.listener = tailerListener;
        tailerListener.init(this);
        this.reOpen = z2;
        this.cset = charset;
    }

    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z, int i) {
        return create(file, tailerListener, j, z, false, i);
    }

    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        return create(file, DEFAULT_CHARSET, tailerListener, j, z, z2, i);
    }

    public static Tailer create(File file, Charset charset, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        Tailer tailer = new Tailer(file, charset, tailerListener, j, z, z2, i);
        Thread thread = new Thread(tailer);
        thread.setDaemon(true);
        thread.start();
        return tailer;
    }

    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z) {
        return create(file, tailerListener, j, z, 4096);
    }

    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z, boolean z2) {
        return create(file, tailerListener, j, z, z2, 4096);
    }

    public static Tailer create(File file, TailerListener tailerListener, long j) {
        return create(file, tailerListener, j, false);
    }

    public static Tailer create(File file, TailerListener tailerListener) {
        return create(file, tailerListener, 1000, false);
    }

    public File getFile() {
        return this.file;
    }

    protected boolean getRun() {
        return this.run;
    }

    public long getDelay() {
        return this.delayMillis;
    }

    @Override // java.lang.Runnable
    public void run() {
        Throwable th;
        InterruptedException e;
        Exception e2;
        Throwable th2;
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2 = null;
        long j = 0;
        long j2 = 0;
        while (getRun() && randomAccessFile2 == null) {
            try {
                try {
                    try {
                        randomAccessFile2 = new RandomAccessFile(this.file, "r");
                    } catch (FileNotFoundException unused) {
                        this.listener.fileNotFound();
                    }
                    if (randomAccessFile2 == null) {
                        Thread.sleep(this.delayMillis);
                    } else {
                        j2 = this.end ? this.file.length() : 0;
                        j = this.file.lastModified();
                        randomAccessFile2.seek(j2);
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (InterruptedException e3) {
                e = e3;
            } catch (Exception e4) {
                e2 = e4;
            }
        }
        while (getRun()) {
            boolean isFileNewer = FileUtils.isFileNewer(this.file, j);
            int i = (this.file.length() > j2 ? 1 : (this.file.length() == j2 ? 0 : -1));
            if (i < 0) {
                this.listener.fileRotated();
                try {
                    randomAccessFile = new RandomAccessFile(this.file, "r");
                    try {
                        try {
                            readLines(randomAccessFile2);
                        } catch (Throwable th4) {
                            th2 = th4;
                            try {
                                throw th2;
                            } catch (Throwable th5) {
                                if (randomAccessFile2 != null) {
                                    try {
                                        randomAccessFile2.close();
                                    } catch (Throwable th6) {
                                        try {
                                            th2.addSuppressed(th6);
                                        } catch (FileNotFoundException unused2) {
                                            randomAccessFile2 = randomAccessFile;
                                            this.listener.fileNotFound();
                                            Thread.sleep(this.delayMillis);
                                        }
                                    }
                                }
                                throw th5;
                                break;
                            }
                        }
                    } catch (IOException e5) {
                        this.listener.handle(e5);
                    }
                    if (randomAccessFile2 != null) {
                        try {
                            try {
                                randomAccessFile2.close();
                            } catch (FileNotFoundException unused3) {
                                j2 = 0;
                                randomAccessFile2 = randomAccessFile;
                                this.listener.fileNotFound();
                                Thread.sleep(this.delayMillis);
                            }
                        } catch (InterruptedException e6) {
                            e = e6;
                            randomAccessFile2 = randomAccessFile;
                            Thread.currentThread().interrupt();
                            this.listener.handle(e);
                            if (randomAccessFile2 != null) {
                                try {
                                    randomAccessFile2.close();
                                } catch (IOException e7) {
                                    e = e7;
                                    this.listener.handle(e);
                                    stop();
                                }
                            }
                            stop();
                        } catch (Exception e8) {
                            e2 = e8;
                            randomAccessFile2 = randomAccessFile;
                            this.listener.handle(e2);
                            if (randomAccessFile2 != null) {
                                try {
                                    randomAccessFile2.close();
                                } catch (IOException e9) {
                                    e = e9;
                                    this.listener.handle(e);
                                    stop();
                                }
                            }
                            stop();
                        } catch (Throwable th7) {
                            th = th7;
                            randomAccessFile2 = randomAccessFile;
                            if (randomAccessFile2 != null) {
                                try {
                                    randomAccessFile2.close();
                                } catch (IOException e10) {
                                    this.listener.handle(e10);
                                }
                            }
                            stop();
                            throw th;
                        }
                    }
                    j2 = 0;
                    randomAccessFile2 = randomAccessFile;
                } catch (Throwable th8) {
                    th2 = th8;
                    randomAccessFile = randomAccessFile2;
                }
            } else {
                if (i > 0) {
                    j2 = readLines(randomAccessFile2);
                    j = this.file.lastModified();
                } else if (isFileNewer) {
                    randomAccessFile2.seek(0);
                    j2 = readLines(randomAccessFile2);
                    j = this.file.lastModified();
                }
                if (this.reOpen && randomAccessFile2 != null) {
                    randomAccessFile2.close();
                }
                Thread.sleep(this.delayMillis);
                if (getRun() && this.reOpen) {
                    randomAccessFile = new RandomAccessFile(this.file, "r");
                    randomAccessFile.seek(j2);
                    randomAccessFile2 = randomAccessFile;
                }
            }
        }
        if (randomAccessFile2 != null) {
            try {
                randomAccessFile2.close();
            } catch (IOException e11) {
                e = e11;
                this.listener.handle(e);
                stop();
            }
        }
        stop();
    }

    public void stop() {
        this.run = false;
    }

    private long readLines(RandomAccessFile randomAccessFile) throws IOException {
        int read;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(64);
        try {
            long filePointer = randomAccessFile.getFilePointer();
            long j = filePointer;
            boolean z = false;
            while (getRun() && (read = randomAccessFile.read(this.inbuf)) != -1) {
                long j2 = filePointer;
                for (int i = 0; i < read; i++) {
                    byte b = this.inbuf[i];
                    if (b == 10) {
                        this.listener.handle(new String(byteArrayOutputStream.toByteArray(), this.cset));
                        byteArrayOutputStream.reset();
                        j2 = ((long) i) + j + 1;
                        z = false;
                    } else if (b != 13) {
                        if (z) {
                            this.listener.handle(new String(byteArrayOutputStream.toByteArray(), this.cset));
                            byteArrayOutputStream.reset();
                            j2 = ((long) i) + j + 1;
                            z = false;
                        }
                        byteArrayOutputStream.write(b);
                    } else {
                        if (z) {
                            byteArrayOutputStream.write(13);
                        }
                        z = true;
                    }
                }
                j = randomAccessFile.getFilePointer();
                filePointer = j2;
            }
            randomAccessFile.seek(filePointer);
            if (this.listener instanceof TailerListenerAdapter) {
                ((TailerListenerAdapter) this.listener).endOfFileReached();
            }
            byteArrayOutputStream.close();
            return filePointer;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
