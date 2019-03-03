.class public final Lcom/android/server/MiuiBgThread;
.super Lcom/android/server/ServiceThread;
.source "MiuiBgThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/MiuiBgThread;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 29
    const-string v0, "miui.bg"

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 30
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/android/server/MiuiBgThread;->sInstance:Lcom/android/server/MiuiBgThread;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/android/server/MiuiBgThread;

    invoke-direct {v0}, Lcom/android/server/MiuiBgThread;-><init>()V

    sput-object v0, Lcom/android/server/MiuiBgThread;->sInstance:Lcom/android/server/MiuiBgThread;

    .line 35
    sget-object v0, Lcom/android/server/MiuiBgThread;->sInstance:Lcom/android/server/MiuiBgThread;

    invoke-virtual {v0}, Lcom/android/server/MiuiBgThread;->start()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/MiuiBgThread;->sInstance:Lcom/android/server/MiuiBgThread;

    invoke-virtual {v1}, Lcom/android/server/MiuiBgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/MiuiBgThread;->sHandler:Landroid/os/Handler;

    .line 38
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/MiuiBgThread;
    .locals 2

    .prologue
    .line 41
    const-class v1, Lcom/android/server/MiuiBgThread;

    monitor-enter v1

    .line 42
    :try_start_0
    invoke-static {}, Lcom/android/server/MiuiBgThread;->ensureThreadLocked()V

    .line 43
    sget-object v0, Lcom/android/server/MiuiBgThread;->sInstance:Lcom/android/server/MiuiBgThread;

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/android/server/MiuiBgThread;

    monitor-enter v1

    .line 49
    :try_start_0
    invoke-static {}, Lcom/android/server/MiuiBgThread;->ensureThreadLocked()V

    .line 50
    sget-object v0, Lcom/android/server/MiuiBgThread;->sHandler:Landroid/os/Handler;

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
