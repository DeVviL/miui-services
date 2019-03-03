.class public Lcom/android/server/ScreenOnMonitor;
.super Ljava/lang/Object;
.source "ScreenOnMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;
    }
.end annotation


# static fields
.field private static final AVG_MAX_COUNT:J = 0x32L

.field public static final BLOCK_SCREEN_ON_BEGIN:I = 0x2

.field public static final BLOCK_SCREEN_ON_END:I = 0x3

.field public static final DATE:Ljava/util/Date;

.field private static final INTERVAL_REPORT_TIME:J = 0xdbba00L

.field private static final MSG_RECORD_TIME:I = 0x3

.field private static final MSG_REPORT:I = 0x5

.field private static final MSG_SCREEN_ON_TIMEOUT:I = 0x4

.field private static final MSG_START_MONITOR:I = 0x1

.field private static final MSG_STOP_MONITOR:I = 0x2

.field private static final REPORT_DELAY:J = 0x7d0L

.field private static final SCREEN_ON_TIMEOUT:J = 0x3e8L

.field private static SCREEN_ON_UPLOAD_VERSION:Ljava/lang/String; = null

.field public static final SET_DISPLAY_STATE_BEGIN:I = 0x0

.field public static final SET_DISPLAY_STATE_END:I = 0x1

.field public static final SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final TAG:Ljava/lang/String; = "ScreenOnMonitor"

.field private static volatile sInstance:Lcom/android/server/ScreenOnMonitor;


# instance fields
.field private mAvgCount:I

.field private mBlockScreenOnBegin:J

.field private mBlockScreenOnEnd:J

.field private mDisplayBrightness:I

.field private mDisplayState:I

.field private mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

.field private mLastReportTime:J

.field private mSetDisplayStateBegin:J

.field private mSetDisplayStateEnd:J

.field private mStartTime:J

.field private mStopTime:J

.field private mTimeStamp:J

.field private mTimeoutSummary:Ljava/lang/String;

.field private mTotalBlockScreenOnTime:J

.field private mTotalScreenOnTime:J

.field private mTotalSetDisplayTime:J

.field private mUploadVersion:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/server/ScreenOnMonitor;->DATE:Ljava/util/Date;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ScreenOnMonitor;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const-string v0, "persist.sys.screenon"

    sput-object v0, Lcom/android/server/ScreenOnMonitor;->SCREEN_ON_UPLOAD_VERSION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayBrightness:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayState:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/server/ScreenOnMonitor;->SCREEN_ON_UPLOAD_VERSION:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ScreenOnMonitor;->mUploadVersion:Ljava/lang/String;

    new-instance v1, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;-><init>(Lcom/android/server/ScreenOnMonitor;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ScreenOnMonitor"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ScreenOnMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/ScreenOnMonitor;Lcom/android/internal/os/SomeArgs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ScreenOnMonitor;->handleStartMonitor(Lcom/android/internal/os/SomeArgs;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ScreenOnMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ScreenOnMonitor;->handleStopMonitor(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ScreenOnMonitor;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ScreenOnMonitor;->handleRecordTime(IJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ScreenOnMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ScreenOnMonitor;->handleScreenOnTimeout()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/ScreenOnMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ScreenOnMonitor;->handleReport(Z)V

    return-void
.end method

.method public static getInstance()Lcom/android/server/ScreenOnMonitor;
    .locals 2

    sget-object v0, Lcom/android/server/ScreenOnMonitor;->sInstance:Lcom/android/server/ScreenOnMonitor;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/server/ScreenOnMonitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/ScreenOnMonitor;->sInstance:Lcom/android/server/ScreenOnMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/ScreenOnMonitor;

    invoke-direct {v0}, Lcom/android/server/ScreenOnMonitor;-><init>()V

    sput-object v0, Lcom/android/server/ScreenOnMonitor;->sInstance:Lcom/android/server/ScreenOnMonitor;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/android/server/ScreenOnMonitor;->sInstance:Lcom/android/server/ScreenOnMonitor;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getScreenOnDetail()Ljava/lang/String;
    .locals 12

    const-wide/16 v10, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    iget-wide v8, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    iget-wide v8, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    iget-wide v8, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "total="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " setDisp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " blockScreen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v4

    goto :goto_1

    :cond_3
    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v4

    goto :goto_2
.end method

.method private getTimeoutSummary()Ljava/lang/String;
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "Abnormal in setting display state"

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-string v0, "Abnormal in blocking screen on"

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const-string v0, "Abnormal in setting brightness"

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const-string v0, "Abnormal before setting screen state"

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const-string v0, "Abnormal before setting display state"

    goto :goto_0

    :cond_4
    const-string v0, "Abnormal in setting display state and blocking screen on"

    goto :goto_0
.end method

.method private handleRecordTime(IJ)V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    goto :goto_0

    :pswitch_1
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    goto :goto_0

    :pswitch_2
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    goto :goto_0

    :pswitch_3
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleReport(Z)V
    .locals 12

    const-wide/16 v10, 0x0

    invoke-direct {p0}, Lcom/android/server/ScreenOnMonitor;->getScreenOnDetail()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ScreenOnMonitor"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/ScreenOnMonitor;->mTimeoutSummary:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mLastReportTime:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mLastReportTime:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xdbba00

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    :cond_0
    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mLastReportTime:J

    new-instance v2, Lmiui/mqsas/sdk/event/ScreenOnEvent;

    invoke-direct {v2}, Lmiui/mqsas/sdk/event/ScreenOnEvent;-><init>()V

    iget-object v4, p0, Lcom/android/server/ScreenOnMonitor;->mTimeoutSummary:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setTimeoutSummary(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setmTimeOutDetail(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/ScreenOnMonitor;->mWakeSource:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setWakeSource(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mTimeStamp:J

    invoke-direct {p0, v4, v5}, Lcom/android/server/ScreenOnMonitor;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setTimeStamp(Ljava/lang/String;)V

    const-string v4, "lt_screen_on"

    invoke-virtual {v2, v4}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setScreenOnType(Ljava/lang/String;)V

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v4

    invoke-virtual {v4, v2}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V

    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ScreenOnMonitor;->mTimeoutSummary:Ljava/lang/String;

    :cond_2
    if-eqz p1, :cond_3

    iget-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/ScreenOnMonitor;->mUploadVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:I

    iget-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:J

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    iget-wide v8, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:J

    iget-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:J

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    iget-wide v8, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:J

    iget-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:J

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    iget-wide v8, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:J

    iget v4, p0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:I

    int-to-long v4, v4

    const-wide/16 v6, 0x32

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    new-instance v2, Lmiui/mqsas/sdk/event/ScreenOnEvent;

    invoke-direct {v2}, Lmiui/mqsas/sdk/event/ScreenOnEvent;-><init>()V

    iget-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:J

    iget v6, p0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setTotalTime(J)V

    iget-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:J

    iget v6, p0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setSetDisplayTime(J)V

    iget-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:J

    iget v6, p0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setBlockScreenTime(J)V

    const-string v4, "avg_screen_on"

    invoke-virtual {v2, v4}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setScreenOnType(Ljava/lang/String;)V

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v4

    invoke-virtual {v4, v2}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V

    iput-wide v10, p0, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:J

    iput-wide v10, p0, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:J

    iput-wide v10, p0, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:J

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:I

    sget-object v4, Lcom/android/server/ScreenOnMonitor;->SCREEN_ON_UPLOAD_VERSION:Ljava/lang/String;

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private handleScreenOnTimeout()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/ScreenOnMonitor;->getTimeoutSummary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mTimeoutSummary:Ljava/lang/String;

    const-string v0, "ScreenOnMonitor"

    iget-object v1, p0, Lcom/android/server/ScreenOnMonitor;->mTimeoutSummary:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private handleStartMonitor(Lcom/android/internal/os/SomeArgs;)V
    .locals 4

    const-wide/16 v2, 0x0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mWakeSource:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mTimeStamp:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0
.end method

.method private handleStopMonitor(Z)V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->removeMessages(I)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/ScreenOnMonitor;->handleReport(Z)V

    :cond_2
    iput-wide v2, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    goto :goto_0
.end method

.method private toCalendarTime(J)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/android/server/ScreenOnMonitor;->DATE:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    sget-object v0, Lcom/android/server/ScreenOnMonitor;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/android/server/ScreenOnMonitor;->DATE:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public recordTime(I)V
    .locals 6

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    iget-object v1, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public startMonitor(Ljava/lang/String;)V
    .locals 6

    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public stopMonitor(II)V
    .locals 3

    const/4 v2, 0x2

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayState:I

    if-ne v0, v2, :cond_2

    if-eq p2, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayBrightness:I

    iput p2, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayState:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayBrightness:I

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
