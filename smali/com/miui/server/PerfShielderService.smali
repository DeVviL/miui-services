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

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const/16 v0, -0x11

    sput v0, Lcom/miui/server/PerfShielderService;->NATIVE_ADJ:I

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

    :cond_0
    const/16 v0, -0x3e8

    sput v0, Lcom/miui/server/PerfShielderService;->NATIVE_ADJ:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/app/IPerfShielder$Stub;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    new-instance v0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    new-instance v0, Lcom/miui/server/PerfShielderService$2;

    invoke-direct {v0, p0}, Lcom/miui/server/PerfShielderService$2;-><init>(Lcom/miui/server/PerfShielderService;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerformanceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/server/PerfShielderService$3;

    invoke-direct {v0, p0}, Lcom/miui/server/PerfShielderService$3;-><init>(Lcom/miui/server/PerfShielderService;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserDeathHandler:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/miui/server/PerfShielderService$4;

    invoke-direct {v0, p0}, Lcom/miui/server/PerfShielderService$4;-><init>(Lcom/miui/server/PerfShielderService;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    iput-object p1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/server/PerfShielderService$BindServiceHandler;

    invoke-static {}, Lcom/android/server/MiuiBgThread;->get()Lcom/android/server/MiuiBgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/MiuiBgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/server/PerfShielderService$BindServiceHandler;-><init>(Lcom/miui/server/PerfShielderService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    new-instance v1, Lcom/miui/server/PerfShielderService$1;

    invoke-direct {v1, p0}, Lcom/miui/server/PerfShielderService$1;-><init>(Lcom/miui/server/PerfShielderService;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Lcom/miui/server/PerfShielderService;->sendBindMiuiSysUserMsg(J)V

    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->reflectDebugGetPssMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mReflectGetPssMethod:Ljava/lang/reflect/Method;

    new-instance v0, Lcom/miui/server/WMServiceConnection;

    invoke-direct {v0, p1}, Lcom/miui/server/WMServiceConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mWMServiceConnection:Lcom/miui/server/WMServiceConnection;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/server/PerfShielderService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->bindService()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/server/PerfShielderService;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/server/PerfShielderService;->sendBindMiuiSysUserMsg(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/server/PerfShielderService;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/server/PerfShielderService;->sendRebindServiceMsg(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/server/PerfShielderService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->bindMiuiSysUser()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/server/PerfShielderService;I)[J
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/server/PerfShielderService;->getProcessStatusValues(I)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/server/PerfShielderService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/server/PerfShielderService;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerformanceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/server/PerfShielderService;)Lcom/miui/server/PerfShielderService$BindServiceHandler;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/server/PerfShielderService;)Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    return-object v0
.end method

.method static synthetic access$900()J
    .locals 2

    sget-wide v0, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    return-wide v0
.end method

.method private bindMiuiSysUser()V
    .locals 7

    const-wide/32 v2, 0x36ee80

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    invoke-static {v1}, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->access$1100(Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.daemon"

    const-string v4, "com.miui.daemon.performance.SysoptService"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v4, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-wide v4, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    invoke-direct {p0, v4, v5}, Lcom/miui/server/PerfShielderService;->sendBindMiuiSysUserMsg(J)V

    sget-wide v4, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    cmp-long v1, v4, v2

    if-ltz v1, :cond_1

    :goto_0
    sput-wide v2, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

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

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-wide v2, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    shl-long/2addr v2, v6

    goto :goto_0

    :cond_2
    const-string v1, "PerfShielderService"

    const-string v2, "MiuiSysUser service started"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private bindService()V
    .locals 5

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.daemon"

    const-string v2, "com.miui.daemon.performance.MiuiPerfService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mPerformanceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PerfShielderService"

    const-string v2, "Miui performance: can\'t bind to com.miui.daemon.performance.MiuiPerfService"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v2, 0xea60

    invoke-direct {p0, v2, v3}, Lcom/miui/server/PerfShielderService;->sendRebindServiceMsg(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "PerfShielderService"

    const-string v2, "Miui performance service started"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkSystemPermission(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

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

    :cond_0
    return-void
.end method

.method private convertUidPidToPath(II)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/acct"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getProcessPss(I)J
    .locals 8

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mReflectGetPssMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v1, v4, :cond_1

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

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private getProcessStatusValues(I)[J
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    new-array v0, v8, [Ljava/lang/String;

    const-string v2, "VmSwap:"

    aput-object v2, v0, v3

    const-string v2, "PPid:"

    aput-object v2, v0, v6

    const-string v2, "VmRSS:"

    aput-object v2, v0, v7

    new-array v1, v8, [J

    aput-wide v4, v1, v3

    aput-wide v4, v1, v6

    aput-wide v4, v1, v7

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

    return-object v1
.end method

.method private needToLimit(ILjava/lang/String;)Z
    .locals 8

    const/4 v2, 0x0

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

    const/4 v4, 0x0

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

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v4, v5

    :cond_2
    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_3
    throw v6

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v6

    move-object v4, v5

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v4, v5

    goto :goto_1
.end method

.method private reflectDebugGetPssMethod()Ljava/lang/reflect/Method;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

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

    :goto_0
    return-object v1

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

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private reportActivityLaunchRecords()V
    .locals 10

    :try_start_0
    iget-object v6, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    new-instance v5, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget-object v6, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LaunchTimeRecord;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v6, "PackageName"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "PackageVersion"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Activity"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getActivity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "LaunchStartTime"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getLaunchStartTime()J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v6, "LaunchEndTime"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getLaunchEndTime()J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v6, "Type"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getType()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v6, v1}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->reportActivityLaunchRecords(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private sendBindMiuiSysUserMsg(J)V
    .locals 3

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private sendRebindServiceMsg(J)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    invoke-virtual {v1, v2}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    invoke-virtual {v1, v2}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 13

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/internal/app/LaunchTimeRecord;

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/LaunchTimeRecord;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    if-eqz p7, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/internal/app/LaunchTimeRecord;->setType(I)V

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LaunchTimeRecord;

    invoke-virtual {v0}, Lcom/android/internal/app/LaunchTimeRecord;->getLaunchStartTime()J

    move-result-wide v10

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

    :cond_2
    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->reportActivityLaunchRecords()V

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public addTimeConsumingIntent([Ljava/lang/String;)V
    .locals 1

    const-string v0, "addTimeConsumingIntent"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->addTimeConsumingIntent([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearTimeConsumingIntent()V
    .locals 1

    const-string v0, "clearTimeConsumingIntent"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->clearTimeConsumingIntent()V

    return-void
.end method

.method public closeCheckPriority()V
    .locals 1

    const-string v0, "closeCheckPriority"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setEnable(Z)V

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->closeCheckPriority()V

    return-void
.end method

.method public deletePackageInfo(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PkgInfoHook"

    const-string v2, "Check permission failed when delete PackageInfo."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "IntentHook"

    const-string v2, "Check permission failed when delete RedirectRule."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getRunningProcessInfos()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    new-instance v6, Lcom/miui/server/PerfShielderService$PidSwapGetter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/miui/server/PerfShielderService$PidSwapGetter;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v7, "pid"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/server/PerfShielderService;->getProcessStatusValues(I)[J

    move-result-object v3

    const-string v7, "swap"

    const/4 v8, 0x0

    aget-wide v8, v3, v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v7, 0x1

    aget-wide v8, v3, v7

    long-to-int v4, v8

    const-string v7, "ppid"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "pswap"

    invoke-virtual {v6, v4}, Lcom/miui/server/PerfShielderService$PidSwapGetter;->get(I)J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v7, "rss"

    const/4 v8, 0x2

    aget-wide v8, v3, v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v7, "lastRssTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

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

    invoke-static {}, Lcom/android/server/am/MiuiActivityHelper;->getFreeMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMemoryTrimLevel()I
    .locals 1

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getMemoryTrimLevel()I

    move-result v0

    return v0
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .locals 1

    const-string v0, "getPackageNameByPid"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertPackageInfo(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PkgInfoHook"

    const-string v1, "Check permission failed when insert PackageInfo."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IntentHook"

    const-string v1, "Check permission failed when insert RedirectRule."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

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

    const-string v0, "killUnusedApp"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/server/am/ExtraActivityManagerService;->killUnusedApp(II)V

    return-void
.end method

.method public markPerceptibleJank(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v1, p1}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->markPerceptibleJank(Landroid/os/Bundle;)V

    :cond_0
    invoke-static {p1}, Lcom/miui/whetstone/WhetstoneManager;->markPerceptibleJank(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V
    .locals 1

    const-string v0, "removeServicePriority"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/am/ExtraActivityManagerService;->removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V

    goto :goto_0
.end method

.method public removeTimeConsumingIntent([Ljava/lang/String;)V
    .locals 1

    const-string v0, "removeTimeConsumingIntent"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->removeTimeConsumingIntent([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reportAnr(ILjava/lang/String;JJLjava/lang/String;)V
    .locals 13

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

    return-void
.end method

.method public reportPerceptibleJank(IILjava/lang/String;JJJI)V
    .locals 12

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

    return-void
.end method

.method public reportPerceptibleJank(IILjava/lang/String;JJJILjava/lang/String;)V
    .locals 10

    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v6, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V

    invoke-virtual {v6, v3}, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-ltz p10, :cond_1

    sget-object v6, Lcom/miui/server/PerfShielderService;->SELF_CAUSE_NAMES:[Ljava/lang/String;

    array-length v6, v6

    move/from16 v0, p10

    if-ge v0, v6, :cond_1

    sget-object v6, Lcom/miui/server/PerfShielderService;->SELF_CAUSE_NAMES:[Ljava/lang/String;

    aget-object v5, v6, p10

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

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v6, "pid"

    invoke-virtual {v2, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "tid"

    invoke-virtual {v2, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "pkg"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "pkgVersion"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "window"

    invoke-virtual {v2, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "totalDuration"

    invoke-virtual {v2, v6, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v6, "maxFrameDuration"

    move-wide/from16 v0, p6

    invoke-virtual {v2, v6, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v6, "endTs"

    move-wide/from16 v0, p8

    invoke-virtual {v2, v6, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v6, "appCause"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "cpuInfo"

    move-object/from16 v0, p11

    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/miui/server/PerfShielderService;->markPerceptibleJank(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1
    const-string v5, "Unknown"

    goto/16 :goto_1
.end method

.method public setForkedProcessGroup(IIILjava/lang/String;)V
    .locals 9

    invoke-direct {p0, p1, p2}, Lcom/miui/server/PerfShielderService;->convertUidPidToPath(II)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

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

    const/4 v2, 0x0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eq v5, p2, :cond_0

    if-eqz p4, :cond_1

    invoke-direct {p0, v5, p4}, Lcom/miui/server/PerfShielderService;->needToLimit(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_1
    invoke-static {v5, p3}, Landroid/os/Process;->setProcessGroup(II)V

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

    :catch_0
    move-exception v0

    move-object v3, v4

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-eqz v4, :cond_4

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_4
    throw v6

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public setMiuiBroadcastDispatchEnable(Z)V
    .locals 1

    const-string v0, "setMiuiBroadcastDispatchEnable"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->setMiuiBroadcastDispatchEnable(Z)V

    return-void
.end method

.method public setMiuiContentProviderControl(Z)V
    .locals 2

    const-string v1, "setMiuiContentProviderControl"

    invoke-direct {p0, v1}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/MiuiContentProviderControl;->getInstance()Lcom/android/server/am/MiuiContentProviderControl;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/MiuiContentProviderControl;->openProviderControl()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/MiuiContentProviderControl;->closeProviderControl()V

    goto :goto_0
.end method

.method public setSchedFgPid(I)V
    .locals 2

    if-gtz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v1, p1}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->setSchedFgPid(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

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

    const-string v0, "setServicePriority"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setEnable(Z)V

    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->setServicePriority(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setServicePriorityWithNoProc(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "setServicePriorityWithNoProc"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setEnable(Z)V

    invoke-static {p1, p2, p3}, Lcom/android/server/am/ExtraActivityManagerService;->setServicePriority(Ljava/util/List;J)V

    goto :goto_0
.end method

.method public updateProcessFullMemInfoByPids([I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    array-length v2, p1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Lcom/miui/server/PerfShielderService$PidSwapGetter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/miui/server/PerfShielderService$PidSwapGetter;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v7, "pid"

    aget v8, p1, v1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "lastPssTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v7, "lastPss"

    aget v8, p1, v1

    invoke-direct {p0, v8}, Lcom/miui/server/PerfShielderService;->getProcessPss(I)J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v7, "lastRssTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    aget v7, p1, v1

    invoke-direct {p0, v7}, Lcom/miui/server/PerfShielderService;->getProcessStatusValues(I)[J

    move-result-object v3

    const-string v7, "swap"

    const/4 v8, 0x0

    aget-wide v8, v3, v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v7, 0x1

    aget-wide v8, v3, v7

    long-to-int v4, v8

    const-string v7, "ppid"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "pswap"

    invoke-virtual {v6, v4}, Lcom/miui/server/PerfShielderService$PidSwapGetter;->get(I)J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v7, "rss"

    const/4 v8, 0x2

    aget-wide v8, v3, v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method public updateProcessPartialMemInfoByPids([I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    array-length v2, p1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Lcom/miui/server/PerfShielderService$PidSwapGetter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/miui/server/PerfShielderService$PidSwapGetter;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v7, "pid"

    aget v8, p1, v1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "lastRssTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    aget v7, p1, v1

    invoke-direct {p0, v7}, Lcom/miui/server/PerfShielderService;->getProcessStatusValues(I)[J

    move-result-object v3

    const-string v7, "swap"

    const/4 v8, 0x0

    aget-wide v8, v3, v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v7, 0x1

    aget-wide v8, v3, v7

    long-to-int v4, v8

    const-string v7, "ppid"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "pswap"

    invoke-virtual {v6, v4}, Lcom/miui/server/PerfShielderService$PidSwapGetter;->get(I)J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v7, "rss"

    const/4 v8, 0x2

    aget-wide v8, v3, v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v5
.end method
