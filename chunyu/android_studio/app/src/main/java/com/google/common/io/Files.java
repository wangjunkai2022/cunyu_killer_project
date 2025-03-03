package com.google.common.io;

import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.collect.TreeTraverser;
import com.google.common.graph.SuccessorsFunction;
import com.google.common.graph.Traverser;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class Files {
    private static final int TEMP_DIR_ATTEMPTS = 10000;
    private static final TreeTraverser<File> FILE_TREE_TRAVERSER = new TreeTraverser<File>() { // from class: com.google.common.io.Files.2
        public String toString() {
            return "Files.fileTreeTraverser()";
        }

        public Iterable<File> children(File file) {
            return Files.fileTreeChildren(file);
        }
    };
    private static final SuccessorsFunction<File> FILE_TREE = new SuccessorsFunction<File>() { // from class: com.google.common.io.Files.3
        public Iterable<File> successors(File file) {
            return Files.fileTreeChildren(file);
        }
    };

    /* loaded from: classes2.dex */
    private enum FilePredicate implements Predicate<File> {
        IS_DIRECTORY {
            @Override // java.lang.Enum, java.lang.Object
            public String toString() {
                return "Files.isDirectory()";
            }

            public boolean apply(File file) {
                return file.isDirectory();
            }
        },
        IS_FILE {
            @Override // java.lang.Enum, java.lang.Object
            public String toString() {
                return "Files.isFile()";
            }

            public boolean apply(File file) {
                return file.isFile();
            }
        }
    }

    private Files() {
    }

    public static BufferedReader newReader(File file, Charset charset) throws FileNotFoundException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(charset);
        return new BufferedReader(new InputStreamReader(new FileInputStream(file), charset));
    }

    public static BufferedWriter newWriter(File file, Charset charset) throws FileNotFoundException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(charset);
        return new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), charset));
    }

    public static ByteSource asByteSource(File file) {
        return new FileByteSource(file);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class FileByteSource extends ByteSource {
        private final File file;

        private FileByteSource(File file) {
            this.file = (File) Preconditions.checkNotNull(file);
        }

        @Override // com.google.common.io.ByteSource
        public FileInputStream openStream() throws IOException {
            return new FileInputStream(this.file);
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            if (this.file.isFile()) {
                return Optional.of(Long.valueOf(this.file.length()));
            }
            return Optional.absent();
        }

        @Override // com.google.common.io.ByteSource
        public long size() throws IOException {
            if (this.file.isFile()) {
                return this.file.length();
            }
            throw new FileNotFoundException(this.file.toString());
        }

        @Override // com.google.common.io.ByteSource
        public byte[] read() throws IOException {
            Closer create = Closer.create();
            try {
                FileInputStream fileInputStream = (FileInputStream) create.register(openStream());
                return ByteStreams.toByteArray(fileInputStream, fileInputStream.getChannel().size());
            } finally {
                try {
                    throw create.rethrow(th);
                } finally {
                }
            }
        }

        public String toString() {
            return "Files.asByteSource(" + this.file + ")";
        }
    }

    public static ByteSink asByteSink(File file, FileWriteMode... fileWriteModeArr) {
        return new FileByteSink(file, fileWriteModeArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class FileByteSink extends ByteSink {
        private final File file;
        private final ImmutableSet<FileWriteMode> modes;

        private FileByteSink(File file, FileWriteMode... fileWriteModeArr) {
            this.file = (File) Preconditions.checkNotNull(file);
            this.modes = ImmutableSet.copyOf(fileWriteModeArr);
        }

        @Override // com.google.common.io.ByteSink
        public FileOutputStream openStream() throws IOException {
            return new FileOutputStream(this.file, this.modes.contains(FileWriteMode.APPEND));
        }

        public String toString() {
            return "Files.asByteSink(" + this.file + ", " + this.modes + ")";
        }
    }

    public static CharSource asCharSource(File file, Charset charset) {
        return asByteSource(file).asCharSource(charset);
    }

    public static CharSink asCharSink(File file, Charset charset, FileWriteMode... fileWriteModeArr) {
        return asByteSink(file, fileWriteModeArr).asCharSink(charset);
    }

    public static byte[] toByteArray(File file) throws IOException {
        return asByteSource(file).read();
    }

    @Deprecated
    public static String toString(File file, Charset charset) throws IOException {
        return asCharSource(file, charset).read();
    }

    public static void write(byte[] bArr, File file) throws IOException {
        asByteSink(file, new FileWriteMode[0]).write(bArr);
    }

    @Deprecated
    public static void write(CharSequence charSequence, File file, Charset charset) throws IOException {
        asCharSink(file, charset, new FileWriteMode[0]).write(charSequence);
    }

    public static void copy(File file, OutputStream outputStream) throws IOException {
        asByteSource(file).copyTo(outputStream);
    }

    public static void copy(File file, File file2) throws IOException {
        Preconditions.checkArgument(!file.equals(file2), "Source %s and destination %s must be different", file, file2);
        asByteSource(file).copyTo(asByteSink(file2, new FileWriteMode[0]));
    }

    @Deprecated
    public static void copy(File file, Charset charset, Appendable appendable) throws IOException {
        asCharSource(file, charset).copyTo(appendable);
    }

    @Deprecated
    public static void append(CharSequence charSequence, File file, Charset charset) throws IOException {
        asCharSink(file, charset, FileWriteMode.APPEND).write(charSequence);
    }

    public static boolean equal(File file, File file2) throws IOException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(file2);
        if (file == file2 || file.equals(file2)) {
            return true;
        }
        long length = file.length();
        long length2 = file2.length();
        if (length == 0 || length2 == 0 || length == length2) {
            return asByteSource(file).contentEquals(asByteSource(file2));
        }
        return false;
    }

    public static File createTempDir() {
        File file = new File(System.getProperty("java.io.tmpdir"));
        String str = System.currentTimeMillis() + "-";
        for (int i = 0; i < 10000; i++) {
            File file2 = new File(file, str + i);
            if (file2.mkdir()) {
                return file2;
            }
        }
        throw new IllegalStateException("Failed to create directory within 10000 attempts (tried " + str + "0 to " + str + "9999)");
    }

    public static void touch(File file) throws IOException {
        Preconditions.checkNotNull(file);
        if (!file.createNewFile() && !file.setLastModified(System.currentTimeMillis())) {
            throw new IOException("Unable to update modification time of " + file);
        }
    }

    public static void createParentDirs(File file) throws IOException {
        Preconditions.checkNotNull(file);
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
            if (!parentFile.isDirectory()) {
                throw new IOException("Unable to create parent directories of " + file);
            }
        }
    }

    public static void move(File file, File file2) throws IOException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(file2);
        Preconditions.checkArgument(!file.equals(file2), "Source %s and destination %s must be different", file, file2);
        if (!file.renameTo(file2)) {
            copy(file, file2);
            if (file.delete()) {
                return;
            }
            if (!file2.delete()) {
                throw new IOException("Unable to delete " + file2);
            }
            throw new IOException("Unable to delete " + file);
        }
    }

    @Deprecated
    public static String readFirstLine(File file, Charset charset) throws IOException {
        return asCharSource(file, charset).readFirstLine();
    }

    public static List<String> readLines(File file, Charset charset) throws IOException {
        return (List) asCharSource(file, charset).readLines(new LineProcessor<List<String>>() { // from class: com.google.common.io.Files.1
            final List<String> result = Lists.newArrayList();

            @Override // com.google.common.io.LineProcessor
            public boolean processLine(String str) {
                this.result.add(str);
                return true;
            }

            @Override // com.google.common.io.LineProcessor
            public List<String> getResult() {
                return this.result;
            }
        });
    }

    @Deprecated
    public static <T> T readLines(File file, Charset charset, LineProcessor<T> lineProcessor) throws IOException {
        return (T) asCharSource(file, charset).readLines(lineProcessor);
    }

    @Deprecated
    public static <T> T readBytes(File file, ByteProcessor<T> byteProcessor) throws IOException {
        return (T) asByteSource(file).read(byteProcessor);
    }

    @Deprecated
    public static HashCode hash(File file, HashFunction hashFunction) throws IOException {
        return asByteSource(file).hash(hashFunction);
    }

    public static MappedByteBuffer map(File file) throws IOException {
        Preconditions.checkNotNull(file);
        return map(file, FileChannel.MapMode.READ_ONLY);
    }

    public static MappedByteBuffer map(File file, FileChannel.MapMode mapMode) throws IOException {
        return mapInternal(file, mapMode, -1);
    }

    public static MappedByteBuffer map(File file, FileChannel.MapMode mapMode, long j) throws IOException {
        Preconditions.checkArgument(j >= 0, "size (%s) may not be negative", j);
        return mapInternal(file, mapMode, j);
    }

    private static MappedByteBuffer mapInternal(File file, FileChannel.MapMode mapMode, long j) throws IOException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(mapMode);
        Closer create = Closer.create();
        try {
            FileChannel fileChannel = (FileChannel) create.register(((RandomAccessFile) create.register(new RandomAccessFile(file, mapMode == FileChannel.MapMode.READ_ONLY ? "r" : "rw"))).getChannel());
            if (j == -1) {
                j = fileChannel.size();
            }
            return fileChannel.map(mapMode, 0, j);
        } finally {
            try {
                throw create.rethrow(th);
            } finally {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004d, code lost:
        if (r4.equals(".") != false) goto L_0x0051;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0053 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0023 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static java.lang.String simplifyPath(java.lang.String r11) {
        /*
            com.google.common.base.Preconditions.checkNotNull(r11)
            int r0 = r11.length()
            java.lang.String r1 = "."
            if (r0 != 0) goto L_0x000c
            return r1
        L_0x000c:
            r0 = 47
            com.google.common.base.Splitter r2 = com.google.common.base.Splitter.on(r0)
            com.google.common.base.Splitter r2 = r2.omitEmptyStrings()
            java.lang.Iterable r2 = r2.split(r11)
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            java.util.Iterator r2 = r2.iterator()
        L_0x0023:
            boolean r4 = r2.hasNext()
            r5 = 0
            if (r4 == 0) goto L_0x007d
            java.lang.Object r4 = r2.next()
            java.lang.String r4 = (java.lang.String) r4
            r6 = -1
            int r7 = r4.hashCode()
            r8 = 46
            java.lang.String r9 = ".."
            r10 = 1
            if (r7 == r8) goto L_0x0049
            r5 = 1472(0x5c0, float:2.063E-42)
            if (r7 == r5) goto L_0x0041
            goto L_0x0050
        L_0x0041:
            boolean r5 = r4.equals(r9)
            if (r5 == 0) goto L_0x0050
            r5 = r10
            goto L_0x0051
        L_0x0049:
            boolean r7 = r4.equals(r1)
            if (r7 == 0) goto L_0x0050
            goto L_0x0051
        L_0x0050:
            r5 = r6
        L_0x0051:
            if (r5 == 0) goto L_0x0023
            if (r5 == r10) goto L_0x0059
            r3.add(r4)
            goto L_0x0023
        L_0x0059:
            int r4 = r3.size()
            if (r4 <= 0) goto L_0x0079
            int r4 = r3.size()
            int r4 = r4 - r10
            java.lang.Object r4 = r3.get(r4)
            java.lang.String r4 = (java.lang.String) r4
            boolean r4 = r4.equals(r9)
            if (r4 != 0) goto L_0x0079
            int r4 = r3.size()
            int r4 = r4 - r10
            r3.remove(r4)
            goto L_0x0023
        L_0x0079:
            r3.add(r9)
            goto L_0x0023
        L_0x007d:
            com.google.common.base.Joiner r2 = com.google.common.base.Joiner.on(r0)
            java.lang.String r2 = r2.join(r3)
            char r11 = r11.charAt(r5)
            java.lang.String r3 = "/"
            if (r11 != r0) goto L_0x009d
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            r11.append(r3)
            r11.append(r2)
            java.lang.String r11 = r11.toString()
            goto L_0x009e
        L_0x009d:
            r11 = r2
        L_0x009e:
            java.lang.String r0 = "/../"
            boolean r0 = r11.startsWith(r0)
            if (r0 == 0) goto L_0x00ac
            r0 = 3
            java.lang.String r11 = r11.substring(r0)
            goto L_0x009e
        L_0x00ac:
            java.lang.String r0 = "/.."
            boolean r0 = r11.equals(r0)
            if (r0 == 0) goto L_0x00b6
            r11 = r3
            goto L_0x00bf
        L_0x00b6:
            java.lang.String r0 = ""
            boolean r0 = r0.equals(r11)
            if (r0 == 0) goto L_0x00bf
            r11 = r1
        L_0x00bf:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.io.Files.simplifyPath(java.lang.String):java.lang.String");
    }

    public static String getFileExtension(String str) {
        Preconditions.checkNotNull(str);
        String name = new File(str).getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf == -1) {
            return "";
        }
        return name.substring(lastIndexOf + 1);
    }

    public static String getNameWithoutExtension(String str) {
        Preconditions.checkNotNull(str);
        String name = new File(str).getName();
        int lastIndexOf = name.lastIndexOf(46);
        return lastIndexOf == -1 ? name : name.substring(0, lastIndexOf);
    }

    @Deprecated
    static TreeTraverser<File> fileTreeTraverser() {
        return FILE_TREE_TRAVERSER;
    }

    public static Traverser<File> fileTraverser() {
        return Traverser.forTree(FILE_TREE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Iterable<File> fileTreeChildren(File file) {
        File[] listFiles;
        if (!file.isDirectory() || (listFiles = file.listFiles()) == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(Arrays.asList(listFiles));
    }

    public static Predicate<File> isDirectory() {
        return FilePredicate.IS_DIRECTORY;
    }

    public static Predicate<File> isFile() {
        return FilePredicate.IS_FILE;
    }
}
