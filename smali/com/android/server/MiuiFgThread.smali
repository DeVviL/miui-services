.class public final Lcom/android/server/MiuiFgThread;
.super Lcom/android/server/ServiceThread;
.source "MiuiFgThread.java"


# static fields
.field private static final IS_STABLE_VERSION:Z

.field private static final WATCHDOG_TIMEOUT:J = 0x1d4c0L

.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/MiuiFgThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    sput-boolean v0, Lcom/android/server/MiuiFgThread;->IS_STABLE_VERSION:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 42
    const-string v0, "miui.fg"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 43
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 4

    .prologue
    .line 46
    sget-object v0, Lcom/android/server/MiuiFgThread;->sInstance:Lcom/android/server/MiuiFgThread;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/server/MiuiFgThread;

    invoke-direct {v0}, Lcom/android/server/MiuiFgThread;-><init>()V

    sput-object v0, Lcom/android/server/MiuiFgThread;->sInstance:Lcom/android/server/MiuiFgThread;

    .line 48
    sget-object v0, Lcom/android/server/MiuiFgThread;->sInstance:Lcom/android/server/MiuiFgThread;

    invoke-virtual {v0}, Lcom/android/server/MiuiFgThread;->start()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/MiuiFgThread;->sInstance:Lcom/android/server/MiuiFgThread;

    invoke-virtual {v1}, Lcom/android/server/MiuiFgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/MiuiFgThread;->sHandler:Landroid/os/Handler;

    .line 50
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    sget-object v3, Lcom/android/server/MiuiFgThread;->sHandler:Landroid/os/Handler;

    sget-boolean v0, Lcom/android/server/MiuiFgThread;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x927c0

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 53
    :cond_0
    return-void

    .line 50
    :cond_1
    const-wide/32 v0, 0x1d4c0

    goto :goto_0
.end method

.method public static get()Lcom/android/server/MiuiFgThread;
    .locals 2

    .prologue
    .line 56
    const-class v1, Lcom/android/server/MiuiFgThread;

    monitor-enter v1

    .line 57
    :try_start_0
    invoke-static {}, Lcom/android/server/MiuiFgThread;->ensureThreadLocked()V

    .line 58
    sget-object v0, Lcom/android/server/MiuiFgThread;->sInstance:Lcom/android/server/MiuiFgThread;

    monitor-exit v1

    return-object v0

    .line 59
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
    .line 63
    const-class v1, Lcom/android/server/MiuiFgThread;

    monitor-enter v1

    .line 64
    :try_start_0
    invoke-static {}, Lcom/android/server/MiuiFgThread;->ensureThreadLocked()V

    .line 65
    sget-object v0, Lcom/android/server/MiuiFgThread;->sHandler:Landroid/os/Handler;

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static initialMiuiFgThread()V
    .locals 2

    .prologue
    .line 70
    const-class v1, Lcom/android/server/MiuiFgThread;

    monitor-enter v1

    .line 71
    :try_start_0
    invoke-static {}, Lcom/android/server/MiuiFgThread;->ensureThreadLocked()V

    .line 72
    monitor-exit v1

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
