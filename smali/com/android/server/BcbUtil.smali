.class public final Lcom/android/server/BcbUtil;
.super Ljava/lang/Object;
.source "BcbUtil.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final SOCKET_CONNECTION_MAX_RETRY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "BcbUtil"

.field private static final UNCRYPT_SOCKET:Ljava/lang/String; = "uncrypt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearBcb()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/BcbUtil;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static connectService()Landroid/net/LocalSocket;
    .locals 8

    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v5, 0x1e

    if-ge v3, v5, :cond_0

    :try_start_0
    new-instance v5, Landroid/net/LocalSocketAddress;

    const-string v6, "uncrypt"

    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v5, v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v4, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    const-string v5, "BcbUtil"

    const-string v6, "Timed out connecting to uncrypt socket"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_1
    return-object v4

    :catch_0
    move-exception v2

    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v5, "BcbUtil"

    const-string v6, "Interrupted: "

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static setupBcb(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/server/BcbUtil;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static setupOrClearBcb(ZLjava/lang/String;)Z
    .locals 11

    const/4 v7, 0x0

    if-eqz p0, :cond_0

    const-string v8, "ctl.start"

    const-string v9, "setup-bcb"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/server/BcbUtil;->connectService()Landroid/net/LocalSocket;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v8, "BcbUtil"

    const-string v9, "Failed to connect to uncrypt socket"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v7

    :cond_0
    const-string v8, "ctl.start"

    const-string v9, "clear-bcb"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_2

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    :cond_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v8, 0x64

    if-ne v6, v8, :cond_4

    const-string v9, "BcbUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uncrypt "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p0, :cond_3

    const-string v8, "setup"

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " bcb successfully finished."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    :try_start_3
    const-string v8, "clear"

    goto :goto_2

    :cond_4
    const-string v8, "BcbUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uncrypt failed with status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    :catch_0
    move-exception v4

    :goto_3
    :try_start_4
    const-string v8, "BcbUtil"

    const-string v9, "IOException when communicating with uncrypt: "

    invoke-static {v8, v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    :goto_4
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    :catchall_1
    move-exception v7

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v7

    move-object v2, v3

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception v4

    move-object v0, v1

    goto :goto_3

    :catch_2
    move-exception v4

    move-object v2, v3

    move-object v0, v1

    goto :goto_3
.end method
