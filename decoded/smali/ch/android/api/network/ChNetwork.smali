.class public Lch/android/api/network/ChNetwork;
.super Ljava/lang/Object;
.source "ChNetwork.java"

# interfaces
.implements Ljava/io/DataOutput;
.implements Lch/android/api/network/ChDataInput;


# static fields
.field private static final TIME_OUT:I = 0xdac


# instance fields
.field private final ADDR:Ljava/lang/String;

.field private final PORT:I

.field private isConnected:Z

.field private m_clientSocket:Ljava/net/Socket;

.field private m_input:Ljava/io/DataInputStream;

.field private m_output:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "_addr"    # Ljava/lang/String;
    .param p2, "_port"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lch/android/api/network/ChNetwork;->ADDR:Ljava/lang/String;

    .line 29
    iput p2, p0, Lch/android/api/network/ChNetwork;->PORT:I

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/android/api/network/ChNetwork;->isConnected:Z

    .line 31
    return-void
.end method


# virtual methods
.method public connect()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 40
    const/4 v3, 0x1

    iput-boolean v3, p0, Lch/android/api/network/ChNetwork;->isConnected:Z

    .line 42
    :try_start_0
    iget-object v3, p0, Lch/android/api/network/ChNetwork;->ADDR:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 43
    .local v1, "address":Ljava/net/InetAddress;
    const-string v3, "KD"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ip:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    iput-object v3, p0, Lch/android/api/network/ChNetwork;->m_clientSocket:Ljava/net/Socket;

    .line 46
    new-instance v0, Ljava/net/InetSocketAddress;

    iget v3, p0, Lch/android/api/network/ChNetwork;->PORT:I

    invoke-direct {v0, v1, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 48
    .local v0, "addr":Ljava/net/SocketAddress;
    iget-object v3, p0, Lch/android/api/network/ChNetwork;->m_clientSocket:Ljava/net/Socket;

    const/16 v4, 0xdac

    invoke-virtual {v3, v0, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 49
    new-instance v3, Ljava/io/DataOutputStream;

    iget-object v4, p0, Lch/android/api/network/ChNetwork;->m_clientSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lch/android/api/network/ChNetwork;->m_output:Ljava/io/DataOutputStream;

    .line 50
    new-instance v3, Ljava/io/DataInputStream;

    iget-object v4, p0, Lch/android/api/network/ChNetwork;->m_clientSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    .line 51
    sget-boolean v3, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 52
    const-string v3, "KD"

    const-string v4, "connect success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    .end local v0    # "addr":Ljava/net/SocketAddress;
    .end local v1    # "address":Ljava/net/InetAddress;
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lch/android/api/network/ChNetwork;->isConnected:Z

    return v3

    .line 54
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 57
    iput-boolean v6, p0, Lch/android/api/network/ChNetwork;->isConnected:Z

    goto :goto_0

    .line 58
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v2

    .line 60
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 61
    iput-boolean v6, p0, Lch/android/api/network/ChNetwork;->isConnected:Z

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lch/android/api/network/ChNetwork;->m_clientSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 70
    iget-object v1, p0, Lch/android/api/network/ChNetwork;->m_output:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 71
    iget-object v1, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 72
    sget-boolean v1, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "KD"

    const-string v2, "connect success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_clientSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lch/android/api/network/ChNetwork;->isConnected:Z

    .line 35
    iget-boolean v0, p0, Lch/android/api/network/ChNetwork;->isConnected:Z

    return v0
.end method

.method public read([B)V
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->read([B)I

    .line 103
    return-void
.end method

.method public read([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    .line 109
    return-void
.end method

.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public readChMbcsString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v2, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 85
    .local v0, "len":I
    new-array v1, v0, [B

    .line 86
    .local v1, "mbcsBytes":[B
    iget-object v2, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/DataInputStream;->read([BII)I

    .line 87
    invoke-static {v1, v3, v0}, Lch/android/api/network/ChByte;->toMbcsString([BII)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public readChUTF16String()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 93
    iget-object v2, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    mul-int/lit8 v0, v2, 0x2

    .line 94
    .local v0, "len":I
    new-array v1, v0, [B

    .line 95
    .local v1, "utfBytes":[B
    iget-object v2, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/DataInputStream;->read([BII)I

    .line 96
    invoke-static {v1, v3, v0}, Lch/android/api/network/ChByte;->toUnicodeString([BII)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 1
    .param p1, "dst"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 146
    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 153
    return-void
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public skipBytes(I)I
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_input:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v0

    return v0
.end method

.method public write(I)V
    .locals 1
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 213
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 207
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 219
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1
    .param p1, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 225
    return-void
.end method

.method public writeByte(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 231
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public writeChar(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 243
    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public writeDouble(D)V
    .locals 1
    .param p1, "val"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 255
    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .param p1, "val"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 261
    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 267
    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .param p1, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 273
    return-void
.end method

.method public writeShort(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 279
    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lch/android/api/network/ChNetwork;->m_output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 285
    return-void
.end method
