package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;

/* loaded from: classes2.dex */
public final class UdpDataSource extends BaseDataSource {
    public static final int DEFAULT_MAX_PACKET_SIZE = 2000;
    public static final int DEFAULT_SOCKET_TIMEOUT_MILLIS = 8000;
    public static final int UDP_PORT_UNSET = -1;
    private InetAddress address;
    private MulticastSocket multicastSocket;
    private boolean opened;
    private final DatagramPacket packet;
    private final byte[] packetBuffer;
    private int packetRemaining;
    private DatagramSocket socket;
    private InetSocketAddress socketAddress;
    private final int socketTimeoutMillis;
    private Uri uri;

    /* loaded from: classes2.dex */
    public static final class UdpDataSourceException extends DataSourceException {
        public UdpDataSourceException(Throwable th, int i) {
            super(th, i);
        }
    }

    public UdpDataSource() {
        this(2000);
    }

    public UdpDataSource(int i) {
        this(i, 8000);
    }

    public UdpDataSource(int i, int i2) {
        super(true);
        this.socketTimeoutMillis = i2;
        this.packetBuffer = new byte[i];
        this.packet = new DatagramPacket(this.packetBuffer, 0, i);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws UdpDataSourceException {
        this.uri = dataSpec.uri;
        String host = this.uri.getHost();
        int port = this.uri.getPort();
        transferInitializing(dataSpec);
        try {
            this.address = InetAddress.getByName(host);
            this.socketAddress = new InetSocketAddress(this.address, port);
            if (this.address.isMulticastAddress()) {
                this.multicastSocket = new MulticastSocket(this.socketAddress);
                this.multicastSocket.joinGroup(this.address);
                this.socket = this.multicastSocket;
            } else {
                this.socket = new DatagramSocket(this.socketAddress);
            }
            this.socket.setSoTimeout(this.socketTimeoutMillis);
            this.opened = true;
            transferStarted(dataSpec);
            return -1;
        } catch (IOException e) {
            throw new UdpDataSourceException(e, 2001);
        } catch (SecurityException e2) {
            throw new UdpDataSourceException(e2, 2006);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws UdpDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        if (this.packetRemaining == 0) {
            try {
                this.socket.receive(this.packet);
                this.packetRemaining = this.packet.getLength();
                bytesTransferred(this.packetRemaining);
            } catch (SocketTimeoutException e) {
                throw new UdpDataSourceException(e, 2002);
            } catch (IOException e2) {
                throw new UdpDataSourceException(e2, 2001);
            }
        }
        int length = this.packet.getLength();
        int i3 = this.packetRemaining;
        int min = Math.min(i3, i2);
        System.arraycopy(this.packetBuffer, length - i3, bArr, i, min);
        this.packetRemaining -= min;
        return min;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        this.uri = null;
        MulticastSocket multicastSocket = this.multicastSocket;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup(this.address);
            } catch (IOException unused) {
            }
            this.multicastSocket = null;
        }
        DatagramSocket datagramSocket = this.socket;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.socket = null;
        }
        this.address = null;
        this.socketAddress = null;
        this.packetRemaining = 0;
        if (this.opened) {
            this.opened = false;
            transferEnded();
        }
    }

    public int getLocalPort() {
        DatagramSocket datagramSocket = this.socket;
        if (datagramSocket == null) {
            return -1;
        }
        return datagramSocket.getLocalPort();
    }
}
