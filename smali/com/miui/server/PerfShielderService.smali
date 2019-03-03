.class public final Lcom/miui/server/PerfShielderService;
.super Lcom/android/internal/app/IPerfShielder$Stub;
.source "PerfShielderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/PerfShielderService$BindServiceHandler;,
        Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;,
        Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;,
        Lcom/miui/server/PerfShielderService$PidSwapGetter;
    }
.end annotation


# static fields
.field private static final ACTIVITY_BATCH_MAX_INTERVAL:J = 0xea60L

.field private static final ACTIVITY_BATCH_MAX_SIZE:I = 0xa

.field private static final BIND_FAIL_RETRY_TIME:J = 0xea60L

.field private static final BIND_RETRY_TIME_BASE:J = 0xea60L

.field private static final BIND_RETRY_TIME_MAX:J = 0x36ee80L

.field private static final BIND_SYSOPT_SERVICE_FIRST:J = 0x1388L

.field private static final DEBUG:Z = true

.field private static final DELAY_TIME:J = 0x493e0L

.field private static final LAUNCH_TYPE_DEFAULT:I = 0x0

.field private static final LAUNCH_TYPE_FROM_HOME:I = 0x1

.field private static final MIUI_SYS_USER_CLASS:Ljava/lang/String; = "com.miui.daemon.performance.SysoptService"

.field private static final MIUI_SYS_USER_PACKAHE:Ljava/lang/String; = "com.miui.daemon"

.field static final MSG_BIND_MIUI_SYS_USER:I = 0x2

.field static final MSG_REBIND:I = 0x1

.field private static final NATIVE_ADJ:I

.field private static final PERFORMANCE_CLASS:Ljava/lang/String; = "com.miui.daemon.performance.MiuiPerfService"

.field private static final PERFORMANCE_PACKAGE:Ljava/lang/String; = "com.miui.daemon"

.field private static final PROCESSGROUP_CGROUP_PATH:Ljava/lang/String; = "/acct"

.field private static final PROCESSGROUP_CGROUP_PROCS_FILE:Ljava/lang/String; = "/cgroup.procs"

.field private static final PROCESSGROUP_PID_PREFIX:Ljava/lang/String; = "pid_"

.field private static final PROCESSGROUP_UID_PREFIX:Ljava/lang/String; = "uid_"

.field private static final SELF_CAUSE_ANR:I = 0x7

.field private static final SELF_CAUSE_NAMES:[Ljava/lang/String;

.field public static final SERVICE_NAME:Ljava/lang/String; = "perfshielder"

.field public static final TAG:Ljava/lang/String; = "PerfShielderService"

.field private static mLastRetryTime:J


# instance fields
.field private mContext:Landroid/content/Context;

.field mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

.field private mLaunchTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LaunchTimeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

.field mMiuiSysUserDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field protected mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

.field private final mPerformanceConnection:Landroid/content/ServiceConnection;

.field private mReflectGetPssMethod:Ljava/lang/reflect/Method;

.field private mWMServiceConnection:Lcom/miui/server/WMServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 86
    const/16 v0, -0x11

    sput v0, Lcom/miui/server/PerfShielderService;->NATIVE_ADJ:I

    .line 111
    :goto_0
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Slow main thread"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Slow handle input"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Slow handle animation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Slow handle traversal"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Slow bitmap uploads"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Slow issue draw commands"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Slow swap buffers"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ANR"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/server/PerfShielderService;->SELF_CAUSE_NAMES:[Ljava/lang/String;

    return-void

    .line 88
    :cond_0
    const/16 v0, -0x3e8

    sput v0, Lcom/miui/server/PerfShielderService;->NATIVE_ADJ:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/internal/app/IPerfShielder$Stub;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    .line 107
    new-instance v0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    .line 472
    new-instance v0, Lcom/miui/server/PerfShielderService$2;

    invoke-direct {v0, p0}, Lcom/miui/server/PerfShielderService$2;-><init>(Lcom/miui/server/PerfShielderService;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerformanceConnection:Landroid/content/ServiceConnection;

    .line 524
    new-instance v0, Lcom/miui/server/PerfShielderService$3;

    invoke-direct {v0, p0}, Lcom/miui/server/PerfShielderService$3;-><init>(Lcom/miui/server/PerfShielderService;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 654
    new-instance v0, Lcom/miui/server/PerfShielderService$4;

    invoke-direct {v0, p0}, Lcom/miui/server/PerfShielderService$4;-><init>(Lcom/miui/server/PerfShielderService;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 125
    iput-object p1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    .line 126
    new-instance v0, Lcom/miui/server/PerfShielderService$BindServiceHandler;

    invoke-static {}, Lcom/android/server/MiuiBgThread;->get()Lcom/android/server/MiuiBgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/MiuiBgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/server/PerfShielderService$BindServiceHandler;-><init>(Lcom/miui/server/PerfShielderService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    .line 127
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    new-instance v1, Lcom/miui/server/PerfShielderService$1;

    invoke-direct {v1, p0}, Lcom/miui/server/PerfShielderService$1;-><init>(Lcom/miui/server/PerfShielderService;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Lcom/miui/server/PerfShielderService;->sendBindMiuiSysUserMsg(J)V

    .line 134
    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->reflectDebugGetPssMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mReflectGetPssMethod:Ljava/lang/reflect/Method;

    .line 135
    new-instance v0, Lcom/miui/server/WMServiceConnection;

    invoke-direct {v0, p1}, Lcom/miui/server/WMServiceConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mWMServiceConnection:Lcom/miui/server/WMServiceConnection;

    .line 136
    return-void
.end method

.method static synthetic access$100(Lcom/miui/server/PerfShielderService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->bindService()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/server/PerfShielderService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;
    .param p1, "x1"    # J

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/miui/server/PerfShielderService;->sendBindMiuiSysUserMsg(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/server/PerfShielderService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;
    .param p1, "x1"    # J

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/miui/server/PerfShielderService;->sendRebindServiceMsg(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/server/PerfShielderService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->bindMiuiSysUser()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/server/PerfShielderService;I)[J
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/miui/server/PerfShielderService;->getProcessStatusValues(I)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/server/PerfShielderService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/server/PerfShielderService;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerformanceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/server/PerfShielderService;)Lcom/miui/server/PerfShielderService$BindServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/server/PerfShielderService;)Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    return-object v0
.end method

.method static synthetic access$900()J
    .locals 2

    .prologue
    .line 54
    sget-wide v0, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    return-wide v0
.end method

.method private bindMiuiSysUser()V
    .locals 7

    .prologue
    const-wide/32 v2, 0x36ee80

    const/4 v6, 0x1

    .line 540
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    invoke-static {v1}, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->access$1100(Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 542
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.daemon"

    const-string v4, "com.miui.daemon.performance.SysoptService"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v4, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 545
    sget-wide v4, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    invoke-direct {p0, v4, v5}, Lcom/miui/server/PerfShielderService;->sendBindMiuiSysUserMsg(J)V

    .line 546
    sget-wide v4, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    cmp-long v1, v4, v2

    if-ltz v1, :cond_1

    :goto_0
    sput-wide v2, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    .line 548
    const-string v1, "PerfShielderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiuiSysUser: can\'t bind to com.miui.daemon.performance.SysoptService, retry time == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 546
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    sget-wide v2, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    shl-long/2addr v2, v6

    goto :goto_0

    .line 551
    :cond_2
    const-string v1, "PerfShielderService"

    const-string v2, "MiuiSysUser service started"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private bindService()V
    .locals 5

    .prologue
    .line 459
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-nez v1, :cond_0

    .line 460
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 461
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.daemon"

    const-string v2, "com.miui.daemon.performance.MiuiPerfService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mPerformanceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 464
    const-string v1, "PerfShielderService"

    const-string v2, "Miui performance: can\'t bind to com.miui.daemon.performance.MiuiPerfService"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-wide/32 v2, 0xea60

    invoke-direct {p0, v2, v3}, Lcom/miui/server/PerfShielderService;->sendRebindServiceMsg(J)V

    .line 470
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 467
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v1, "PerfShielderService"

    const-string v2, "Miui performance service started"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkSystemPermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 648
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 649
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 650
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match caller of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 652
    :cond_0
    return-void
.end method

.method private convertUidPidToPath(II)Ljava/lang/String;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/acct"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cgroup.procs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getProcessPss(I)J
    .locals 8
    .param p1, "pid"    # I

    .prologue
    .line 299
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mReflectGetPssMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 300
    const-wide/16 v2, 0x0

    .line 313
    :goto_0
    return-wide v2

    .line 302
    :cond_0
    const-wide/16 v2, 0x0

    .line 304
    .local v2, "pss":J
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v1, v4, :cond_1

    .line 305
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mReflectGetPssMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mReflectGetPssMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private getProcessStatusValues(I)[J
    .locals 9
    .param p1, "pid"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    .line 317
    new-array v0, v8, [Ljava/lang/String;

    const-string v2, "VmSwap:"

    aput-object v2, v0, v3

    const-string v2, "PPid:"

    aput-object v2, v0, v6

    const-string v2, "VmRSS:"

    aput-object v2, v0, v7

    .line 318
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v8, [J

    .line 319
    .local v1, "procStatusValues":[J
    aput-wide v4, v1, v3

    .line 320
    aput-wide v4, v1, v6

    .line 321
    aput-wide v4, v1, v7

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 323
    return-object v1
.end method

.method private needToLimit(ILjava/lang/String;)Z
    .locals 8
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .prologue
    .line 151
    const/4 v2, 0x0

    .line 152
    .local v2, "limit":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/cmdline"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "fileName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 155
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 157
    .local v3, "line":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 158
    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-eqz v6, :cond_0

    .line 159
    const/4 v2, 0x1

    .line 166
    :cond_0
    if-eqz v5, :cond_1

    .line 167
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v4, v5

    .line 173
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return v2

    .line 169
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 172
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 162
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    if-eqz v4, :cond_2

    .line 167
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 169
    :catch_2
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 165
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 166
    :goto_2
    if-eqz v4, :cond_3

    .line 167
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 171
    :cond_3
    :goto_3
    throw v6

    .line 169
    :catch_3
    move-exception v0

    .line 170
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 165
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 162
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private reflectDebugGetPssMethod()Ljava/lang/reflect/Method;
    .locals 7

    .prologue
    .line 284
    const/4 v1, 0x0

    .line 286
    .local v1, "getPss":Ljava/lang/reflect/Method;
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 287
    const-class v2, Landroid/os/Debug;

    const-string v3, "getPss"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [J

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, [J

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 295
    :goto_0
    return-object v1

    .line 289
    :cond_0
    const-class v2, Landroid/os/Debug;

    const-string v3, "getPss"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [J

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private reportActivityLaunchRecords()V
    .locals 10

    .prologue
    .line 396
    :try_start_0
    iget-object v6, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 397
    new-instance v5, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V

    .line 398
    .local v5, "versionGetter":Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v1, "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 400
    iget-object v6, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LaunchTimeRecord;

    .line 401
    .local v4, "record":Lcom/android/internal/app/LaunchTimeRecord;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 402
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "PackageName"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v6, "PackageVersion"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v6, "Activity"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getActivity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v6, "LaunchStartTime"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getLaunchStartTime()J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 406
    const-string v6, "LaunchEndTime"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getLaunchEndTime()J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 407
    const-string v6, "Type"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getType()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 408
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 410
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "record":Lcom/android/internal/app/LaunchTimeRecord;
    :cond_0
    iget-object v6, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v6, v1}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->reportActivityLaunchRecords(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v1    # "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v3    # "i":I
    .end local v5    # "versionGetter":Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;
    :cond_1
    :goto_1
    return-void

    .line 412
    :catch_0
    move-exception v2

    .line 413
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private sendBindMiuiSysUserMsg(J)V
    .locals 3
    .param p1, "delayedTime"    # J

    .prologue
    .line 535
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 536
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 537
    return-void
.end method

.method private sendRebindServiceMsg(J)V
    .locals 3
    .param p1, "delayedTime"    # J

    .prologue
    const/4 v2, 0x1

    .line 453
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    invoke-virtual {v1, v2}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->removeMessages(I)V

    .line 454
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    invoke-virtual {v1, v2}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 455
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 456
    return-void
.end method


# virtual methods
.method public addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "launchStartTime"    # J
    .param p5, "launchEndTime"    # J
    .param p7, "fromHome"    # Z

    .prologue
    .line 377
    if-nez p1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    new-instance v1, Lcom/android/internal/app/LaunchTimeRecord;

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/LaunchTimeRecord;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 381
    .local v1, "record":Lcom/android/internal/app/LaunchTimeRecord;
    if-eqz p7, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/internal/app/LaunchTimeRecord;->setType(I)V

    .line 382
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LaunchTimeRecord;

    invoke-virtual {v0}, Lcom/android/internal/app/LaunchTimeRecord;->getLaunchStartTime()J

    move-result-wide v10

    .line 384
    .local v10, "batchStartTime":J
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LaunchTimeRecord;

    invoke-virtual {v0}, Lcom/android/internal/app/LaunchTimeRecord;->getLaunchEndTime()J

    move-result-wide v8

    .line 385
    .local v8, "batchEndTime":J
    if-nez p7, :cond_2

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    cmp-long v0, v8, v10

    if-ltz v0, :cond_2

    sub-long v2, v8, v10

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 389
    :cond_2
    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->reportActivityLaunchRecords()V

    .line 390
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 381
    .end local v8    # "batchEndTime":J
    .end local v10    # "batchStartTime":J
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public addTimeConsumingIntent([Ljava/lang/String;)V
    .locals 1
    .param p1, "actions"    # [Ljava/lang/String;

    .prologue
    .line 625
    const-string v0, "addTimeConsumingIntent"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 626
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    invoke-static {p1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->addTimeConsumingIntent([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearTimeConsumingIntent()V
    .locals 1

    .prologue
    .line 643
    const-string v0, "clearTimeConsumingIntent"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 644
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->clearTimeConsumingIntent()V

    .line 645
    return-void
.end method

.method public closeCheckPriority()V
    .locals 1

    .prologue
    .line 599
    const-string v0, "closeCheckPriority"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 600
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setEnable(Z)V

    .line 601
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->closeCheckPriority()V

    .line 602
    return-void
.end method

.method public deletePackageInfo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 673
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 674
    const-string v1, "PkgInfoHook"

    const-string v2, "Check permission failed when delete PackageInfo."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/miui/hybrid/hook/PkgInfoHook;->getInstance()Lcom/miui/hybrid/hook/PkgInfoHook;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/hybrid/hook/PkgInfoHook;->delete(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deleteRedirectRule(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "destPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 694
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 695
    const-string v1, "IntentHook"

    const-string v2, "Check permission failed when delete RedirectRule."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/miui/hybrid/hook/IntentHook;->getInstance()Lcom/miui/hybrid/hook/IntentHook;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/miui/hybrid/hook/IntentHook;->delete(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 450
    return-void
.end method

.method public getAllRunningProcessMemInfos()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getRunningProcessInfos()Ljava/util/List;

    move-result-object v5

    .line 213
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez v5, :cond_0

    .line 214
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .restart local v5    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_0
    new-instance v6, Lcom/miui/server/PerfShielderService$PidSwapGetter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/miui/server/PerfShielderService$PidSwapGetter;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V

    .line 217
    .local v6, "swapgetter":Lcom/miui/server/PerfShielderService$PidSwapGetter;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 218
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "pid"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 219
    .local v2, "pid":I
    invoke-direct {p0, v2}, Lcom/miui/server/PerfShielderService;->getProcessStatusValues(I)[J

    move-result-object v3

    .line 220
    .local v3, "pidStatus":[J
    const-string v7, "swap"

    const/4 v8, 0x0

    aget-wide v8, v3, v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 221
    const/4 v7, 0x1

    aget-wide v8, v3, v7

    long-to-int v4, v8

    .line 222
    .local v4, "ppid":I
    const-string v7, "ppid"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    const-string v7, "pswap"

    invoke-virtual {v6, v4}, Lcom/miui/server/PerfShielderService$PidSwapGetter;->get(I)J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 224
    const-string v7, "rss"

    const/4 v8, 0x2

    aget-wide v8, v3, v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 225
    const-string v7, "lastRssTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 227
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "pid":I
    .end local v3    # "pidStatus":[J
    .end local v4    # "ppid":I
    :cond_1
    return-object v5
.end method

.method public getFreeMemory()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-static {}, Lcom/android/server/am/MiuiActivityHelper;->getFreeMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMemoryTrimLevel()I
    .locals 1

    .prologue
    .line 208
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getMemoryTrimLevel()I

    move-result v0

    return v0
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 564
    const-string v0, "getPackageNameByPid"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 565
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertPackageInfo(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p1, "pInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 664
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    const-string v0, "PkgInfoHook"

    const-string v1, "Check permission failed when insert PackageInfo."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/4 v0, 0x0

    .line 668
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/miui/hybrid/hook/PkgInfoHook;->getInstance()Lcom/miui/hybrid/hook/PkgInfoHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/hybrid/hook/PkgInfoHook;->insert(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public insertRedirectRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "destPkg"    # Ljava/lang/String;
    .param p3, "redirectPkgname"    # Ljava/lang/String;
    .param p4, "clsNameMap"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 683
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 684
    const-string v0, "IntentHook"

    const-string v1, "Check permission failed when insert RedirectRule."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/4 v0, 0x0

    .line 688
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/miui/hybrid/hook/IntentHook;->getInstance()Lcom/miui/hybrid/hook/IntentHook;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/hybrid/hook/IntentHook;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public killUnusedApp(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 558
    const-string v0, "killUnusedApp"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 559
    invoke-static {p1, p2}, Lcom/android/server/am/ExtraActivityManagerService;->killUnusedApp(II)V

    .line 560
    return-void
.end method

.method public markPerceptibleJank(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v1, p1}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->markPerceptibleJank(Landroid/os/Bundle;)V

    .line 370
    :cond_0
    invoke-static {p1}, Lcom/miui/whetstone/WhetstoneManager;->markPerceptibleJank(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V
    .locals 1
    .param p1, "servicePriority"    # Lcom/android/internal/app/MiuiServicePriority;
    .param p2, "inBlacklist"    # Z

    .prologue
    .line 590
    const-string v0, "removeServicePriority"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 591
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/am/ExtraActivityManagerService;->removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V

    goto :goto_0
.end method

.method public removeTimeConsumingIntent([Ljava/lang/String;)V
    .locals 1
    .param p1, "actions"    # [Ljava/lang/String;

    .prologue
    .line 634
    const-string v0, "removeTimeConsumingIntent"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 635
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    invoke-static {p1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->removeTimeConsumingIntent([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reportAnr(ILjava/lang/String;JJLjava/lang/String;)V
    .locals 13
    .param p1, "callingPid"    # I
    .param p2, "windowName"    # Ljava/lang/String;
    .param p3, "totalDuration"    # J
    .param p5, "endTs"    # J
    .param p7, "cpuInfo"    # Ljava/lang/String;

    .prologue
    .line 334
    const/4 v2, -0x1

    const/4 v10, 0x7

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v11, p7

    invoke-virtual/range {v0 .. v11}, Lcom/miui/server/PerfShielderService;->reportPerceptibleJank(IILjava/lang/String;JJJILjava/lang/String;)V

    .line 336
    return-void
.end method

.method public reportPerceptibleJank(IILjava/lang/String;JJJI)V
    .locals 12
    .param p1, "callingPid"    # I
    .param p2, "renderThreadTid"    # I
    .param p3, "windowName"    # Ljava/lang/String;
    .param p4, "totalDuration"    # J
    .param p6, "maxFrameDuration"    # J
    .param p8, "endTs"    # J
    .param p10, "appCause"    # I

    .prologue
    .line 328
    const-string v11, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/miui/server/PerfShielderService;->reportPerceptibleJank(IILjava/lang/String;JJJILjava/lang/String;)V

    .line 330
    return-void
.end method

.method public reportPerceptibleJank(IILjava/lang/String;JJJILjava/lang/String;)V
    .locals 10
    .param p1, "callingPid"    # I
    .param p2, "renderThreadTid"    # I
    .param p3, "windowName"    # Ljava/lang/String;
    .param p4, "totalDuration"    # J
    .param p6, "maxFrameDuration"    # J
    .param p8, "endTs"    # J
    .param p10, "appCause"    # I
    .param p11, "cpuInfo"    # Ljava/lang/String;

    .prologue
    .line 340
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, "callingPkg":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 362
    :goto_0
    return-void

    .line 344
    :cond_0
    new-instance v6, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V

    invoke-virtual {v6, v3}, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, "packageVersion":Ljava/lang/String;
    if-ltz p10, :cond_1

    sget-object v6, Lcom/miui/server/PerfShielderService;->SELF_CAUSE_NAMES:[Ljava/lang/String;

    array-length v6, v6

    move/from16 v0, p10

    if-ge v0, v6, :cond_1

    sget-object v6, Lcom/miui/server/PerfShielderService;->SELF_CAUSE_NAMES:[Ljava/lang/String;

    aget-object v5, v6, p10

    .line 346
    .local v5, "strAppCause":Ljava/lang/String;
    :goto_1
    const-string v6, "PerfShielderService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/32 v8, 0xf4240

    div-long v8, p4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p8

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/32 v8, 0xf4240

    div-long v8, p6, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p10

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 351
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v6, "pid"

    invoke-virtual {v2, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    const-string v6, "tid"

    invoke-virtual {v2, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    const-string v6, "pkg"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v6, "pkgVersion"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v6, "window"

    invoke-virtual {v2, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v6, "totalDuration"

    invoke-virtual {v2, v6, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 357
    const-string v6, "maxFrameDuration"

    move-wide/from16 v0, p6

    invoke-virtual {v2, v6, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 358
    const-string v6, "endTs"

    move-wide/from16 v0, p8

    invoke-virtual {v2, v6, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 359
    const-string v6, "appCause"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v6, "cpuInfo"

    move-object/from16 v0, p11

    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0, v2}, Lcom/miui/server/PerfShielderService;->markPerceptibleJank(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 345
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v5    # "strAppCause":Ljava/lang/String;
    :cond_1
    const-string v5, "Unknown"

    goto/16 :goto_1
.end method

.method public setForkedProcessGroup(IIILjava/lang/String;)V
    .locals 9
    .param p1, "puid"    # I
    .param p2, "ppid"    # I
    .param p3, "group"    # I
    .param p4, "processName"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lcom/miui/server/PerfShielderService;->convertUidPidToPath(II)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "fileName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 180
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 182
    .local v2, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 184
    .local v5, "subPid":I
    if-eq v5, p2, :cond_0

    .line 187
    if-eqz p4, :cond_1

    invoke-direct {p0, v5, p4}, Lcom/miui/server/PerfShielderService;->needToLimit(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 190
    :cond_1
    invoke-static {v5, p3}, Landroid/os/Process;->setProcessGroup(II)V

    .line 191
    const-string v6, "PerfShielderService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sFPG ppid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " grp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " forked:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 194
    .end local v5    # "subPid":I
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 195
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    if-eqz v3, :cond_2

    .line 199
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 198
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_3
    if-eqz v4, :cond_4

    .line 199
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    move-object v3, v4

    .line 203
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 201
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 204
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 201
    .end local v2    # "line":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 197
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 198
    :goto_3
    if-eqz v3, :cond_5

    .line 199
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 203
    :cond_5
    :goto_4
    throw v6

    .line 201
    :catch_3
    move-exception v0

    .line 202
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 197
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 194
    .end local v2    # "line":Ljava/lang/String;
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public setMiuiBroadcastDispatchEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 619
    const-string v0, "setMiuiBroadcastDispatchEnable"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 620
    invoke-static {p1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->setMiuiBroadcastDispatchEnable(Z)V

    .line 621
    return-void
.end method

.method public setMiuiContentProviderControl(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 606
    const-string v1, "setMiuiContentProviderControl"

    invoke-direct {p0, v1}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 607
    invoke-static {}, Lcom/android/server/am/MiuiContentProviderControl;->getInstance()Lcom/android/server/am/MiuiContentProviderControl;

    move-result-object v0

    .line 608
    .local v0, "mcpc":Lcom/android/server/am/MiuiContentProviderControl;
    if-eqz v0, :cond_0

    .line 609
    if-eqz p1, :cond_1

    .line 610
    invoke-virtual {v0}, Lcom/android/server/am/MiuiContentProviderControl;->openProviderControl()V

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/MiuiContentProviderControl;->closeProviderControl()V

    goto :goto_0
.end method

.method public setSchedFgPid(I)V
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 436
    if-gtz p1, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v1, p1}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->setSchedFgPid(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setServicePriority(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 570
    .local p1, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    const-string v0, "setServicePriority"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 571
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setEnable(Z)V

    .line 575
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->setServicePriority(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setServicePriorityWithNoProc(Ljava/util/List;J)V
    .locals 2
    .param p2, "noProcDelayTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 580
    .local p1, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    const-string v0, "setServicePriorityWithNoProc"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 581
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setEnable(Z)V

    .line 585
    invoke-static {p1, p2, p3}, Lcom/android/server/am/ExtraActivityManagerService;->setServicePriority(Ljava/util/List;J)V

    goto :goto_0
.end method

.method public updateProcessFullMemInfoByPids([I)Ljava/util/List;
    .locals 10
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    array-length v2, p1

    .line 232
    .local v2, "pidSize":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v6, Lcom/miui/server/PerfShielderService$PidSwapGetter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/miui/server/PerfShielderService$PidSwapGetter;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V

    .line 234
    .local v6, "swapgetter":Lcom/miui/server/PerfShielderService$PidSwapGetter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 235
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 236
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "pid"

    aget v8, p1, v1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    const-string v7, "lastPssTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 238
    const-string v7, "lastPss"

    aget v8, p1, v1

    invoke-direct {p0, v8}, Lcom/miui/server/PerfShielderService;->getProcessPss(I)J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 239
    const-string v7, "lastRssTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 240
    aget v7, p1, v1

    invoke-direct {p0, v7}, Lcom/miui/server/PerfShielderService;->getProcessStatusValues(I)[J

    move-result-object v3

    .line 241
    .local v3, "pidStatus":[J
    const-string v7, "swap"

    const/4 v8, 0x0

    aget-wide v8, v3, v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 242
    const/4 v7, 0x1

    aget-wide v8, v3, v7

    long-to-int v4, v8

    .line 243
    .local v4, "ppid":I
    const-string v7, "ppid"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    const-string v7, "pswap"

    invoke-virtual {v6, v4}, Lcom/miui/server/PerfShielderService$PidSwapGetter;->get(I)J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 245
    const-string v7, "rss"

    const/4 v8, 0x2

    aget-wide v8, v3, v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 246
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "pidStatus":[J
    .end local v4    # "ppid":I
    :cond_0
    return-object v5
.end method

.method public updateProcessPartialMemInfoByPids([I)Ljava/util/List;
    .locals 10
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    array-length v2, p1

    .line 253
    .local v2, "pidSize":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v6, Lcom/miui/server/PerfShielderService$PidSwapGetter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/miui/server/PerfShielderService$PidSwapGetter;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V

    .line 255
    .local v6, "swapgetter":Lcom/miui/server/PerfShielderService$PidSwapGetter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 257
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "pid"

    aget v8, p1, v1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    const-string v7, "lastRssTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 259
    aget v7, p1, v1

    invoke-direct {p0, v7}, Lcom/miui/server/PerfShielderService;->getProcessStatusValues(I)[J

    move-result-object v3

    .line 260
    .local v3, "pidStatus":[J
    const-string v7, "swap"

    const/4 v8, 0x0

    aget-wide v8, v3, v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 261
    const/4 v7, 0x1

    aget-wide v8, v3, v7

    long-to-int v4, v8

    .line 262
    .local v4, "ppid":I
    const-string v7, "ppid"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 263
    const-string v7, "pswap"

    invoke-virtual {v6, v4}, Lcom/miui/server/PerfShielderService$PidSwapGetter;->get(I)J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 264
    const-string v7, "rss"

    const/4 v8, 0x2

    aget-wide v8, v3, v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 265
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "pidStatus":[J
    .end local v4    # "ppid":I
    :cond_0
    return-object v5
.end method
