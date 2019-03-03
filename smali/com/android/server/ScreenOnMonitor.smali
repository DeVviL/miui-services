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

    .prologue
    .line 50
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/server/ScreenOnMonitor;->DATE:Ljava/util/Date;

    .line 51
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ScreenOnMonitor;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 54
    const-string v0, "persist.sys.screenon"

    sput-object v0, Lcom/android/server/ScreenOnMonitor;->SCREEN_ON_UPLOAD_VERSION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayBrightness:I

    .line 58
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayState:I

    .line 60
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    .line 90
    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    sget-object v1, Lcom/android/server/ScreenOnMonitor;->SCREEN_ON_UPLOAD_VERSION:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ScreenOnMonitor;->mUploadVersion:Ljava/lang/String;

    .line 95
    new-instance v1, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;-><init>(Lcom/android/server/ScreenOnMonitor;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    .line 96
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 98
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "ScreenOnMonitor"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ScreenOnMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/ScreenOnMonitor;Lcom/android/internal/os/SomeArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ScreenOnMonitor;
    .param p1, "x1"    # Lcom/android/internal/os/SomeArgs;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/ScreenOnMonitor;->handleStartMonitor(Lcom/android/internal/os/SomeArgs;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ScreenOnMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ScreenOnMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/ScreenOnMonitor;->handleStopMonitor(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ScreenOnMonitor;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ScreenOnMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ScreenOnMonitor;->handleRecordTime(IJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ScreenOnMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ScreenOnMonitor;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/server/ScreenOnMonitor;->handleScreenOnTimeout()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/ScreenOnMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ScreenOnMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/ScreenOnMonitor;->handleReport(Z)V

    return-void
.end method

.method public static getInstance()Lcom/android/server/ScreenOnMonitor;
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/android/server/ScreenOnMonitor;->sInstance:Lcom/android/server/ScreenOnMonitor;

    if-nez v0, :cond_1

    .line 80
    const-class v1, Lcom/android/server/ScreenOnMonitor;

    monitor-enter v1

    .line 81
    :try_start_0
    sget-object v0, Lcom/android/server/ScreenOnMonitor;->sInstance:Lcom/android/server/ScreenOnMonitor;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/server/ScreenOnMonitor;

    invoke-direct {v0}, Lcom/android/server/ScreenOnMonitor;-><init>()V

    sput-object v0, Lcom/android/server/ScreenOnMonitor;->sInstance:Lcom/android/server/ScreenOnMonitor;

    .line 84
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_1
    sget-object v0, Lcom/android/server/ScreenOnMonitor;->sInstance:Lcom/android/server/ScreenOnMonitor;

    return-object v0

    .line 84
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

    .prologue
    const-wide/16 v10, 0x0

    .line 313
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 318
    .local v2, "currentTime":J
    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_0

    .line 319
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

    .line 324
    .local v4, "totalTime":Ljava/lang/String;
    :goto_0
    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_1

    .line 325
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

    .line 334
    .local v1, "setDisplayStateTime":Ljava/lang/String;
    :goto_1
    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_3

    .line 335
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

    .line 344
    .local v0, "blockScreenOnTime":Ljava/lang/String;
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

    .line 321
    .end local v0    # "blockScreenOnTime":Ljava/lang/String;
    .end local v1    # "setDisplayStateTime":Ljava/lang/String;
    .end local v4    # "totalTime":Ljava/lang/String;
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

    .restart local v4    # "totalTime":Ljava/lang/String;
    goto :goto_0

    .line 327
    :cond_1
    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_2

    .line 328
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

    .restart local v1    # "setDisplayStateTime":Ljava/lang/String;
    goto :goto_1

    .line 330
    .end local v1    # "setDisplayStateTime":Ljava/lang/String;
    :cond_2
    move-object v1, v4

    .restart local v1    # "setDisplayStateTime":Ljava/lang/String;
    goto :goto_1

    .line 337
    :cond_3
    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_4

    .line 338
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

    .restart local v0    # "blockScreenOnTime":Ljava/lang/String;
    goto :goto_2

    .line 340
    .end local v0    # "blockScreenOnTime":Ljava/lang/String;
    :cond_4
    move-object v0, v4

    .restart local v0    # "blockScreenOnTime":Ljava/lang/String;
    goto :goto_2
.end method

.method private getTimeoutSummary()Ljava/lang/String;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 289
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 290
    const-string v0, "Abnormal in setting display state"

    .line 308
    :goto_0
    return-object v0

    .line 293
    :cond_0
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 294
    const-string v0, "Abnormal in blocking screen on"

    goto :goto_0

    .line 297
    :cond_1
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 298
    const-string v0, "Abnormal in setting brightness"

    goto :goto_0

    .line 301
    :cond_2
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 302
    const-string v0, "Abnormal before setting screen state"

    goto :goto_0

    .line 305
    :cond_3
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 306
    const-string v0, "Abnormal before setting display state"

    goto :goto_0

    .line 308
    :cond_4
    const-string v0, "Abnormal in setting display state and blocking screen on"

    goto :goto_0
.end method

.method private handleRecordTime(IJ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "time"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 212
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 218
    :pswitch_0
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 219
    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    goto :goto_0

    .line 223
    :pswitch_1
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 224
    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    goto :goto_0

    .line 228
    :pswitch_2
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 229
    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    goto :goto_0

    .line 233
    :pswitch_3
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 234
    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    goto :goto_0

    .line 216
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
    .param p1, "hasOn"    # Z

    .prologue
    const-wide/16 v10, 0x0

    .line 247
    invoke-direct {p0}, Lcom/android/server/ScreenOnMonitor;->getScreenOnDetail()Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "screenOnDetail":Ljava/lang/String;
    const-string v4, "ScreenOnMonitor"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v4, p0, Lcom/android/server/ScreenOnMonitor;->mTimeoutSummary:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 252
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mLastReportTime:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mLastReportTime:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xdbba00

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 253
    :cond_0
    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mLastReportTime:J

    .line 254
    new-instance v2, Lmiui/mqsas/sdk/event/ScreenOnEvent;

    invoke-direct {v2}, Lmiui/mqsas/sdk/event/ScreenOnEvent;-><init>()V

    .line 255
    .local v2, "event":Lmiui/mqsas/sdk/event/ScreenOnEvent;
    iget-object v4, p0, Lcom/android/server/ScreenOnMonitor;->mTimeoutSummary:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setTimeoutSummary(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v2, v3}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setmTimeOutDetail(Ljava/lang/String;)V

    .line 257
    iget-object v4, p0, Lcom/android/server/ScreenOnMonitor;->mWakeSource:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setWakeSource(Ljava/lang/String;)V

    .line 258
    iget-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mTimeStamp:J

    invoke-direct {p0, v4, v5}, Lcom/android/server/ScreenOnMonitor;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setTimeStamp(Ljava/lang/String;)V

    .line 259
    const-string v4, "lt_screen_on"

    invoke-virtual {v2, v4}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setScreenOnType(Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v4

    invoke-virtual {v4, v2}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V

    .line 262
    .end local v2    # "event":Lmiui/mqsas/sdk/event/ScreenOnEvent;
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ScreenOnMonitor;->mTimeoutSummary:Ljava/lang/String;

    .line 266
    .end local v0    # "currentTime":J
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

    .line 268
    iget v4, p0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:I

    .line 269
    iget-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:J

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    iget-wide v8, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:J

    .line 270
    iget-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:J

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    iget-wide v8, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:J

    .line 271
    iget-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:J

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    iget-wide v8, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:J

    .line 272
    iget v4, p0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:I

    int-to-long v4, v4

    const-wide/16 v6, 0x32

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 273
    new-instance v2, Lmiui/mqsas/sdk/event/ScreenOnEvent;

    invoke-direct {v2}, Lmiui/mqsas/sdk/event/ScreenOnEvent;-><init>()V

    .line 274
    .restart local v2    # "event":Lmiui/mqsas/sdk/event/ScreenOnEvent;
    iget-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:J

    iget v6, p0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setTotalTime(J)V

    .line 275
    iget-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:J

    iget v6, p0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setSetDisplayTime(J)V

    .line 276
    iget-wide v4, p0, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:J

    iget v6, p0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setBlockScreenTime(J)V

    .line 277
    const-string v4, "avg_screen_on"

    invoke-virtual {v2, v4}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setScreenOnType(Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v4

    invoke-virtual {v4, v2}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V

    .line 279
    iput-wide v10, p0, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:J

    .line 280
    iput-wide v10, p0, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:J

    .line 281
    iput-wide v10, p0, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:J

    .line 282
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:I

    .line 283
    sget-object v4, Lcom/android/server/ScreenOnMonitor;->SCREEN_ON_UPLOAD_VERSION:Ljava/lang/String;

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .end local v2    # "event":Lmiui/mqsas/sdk/event/ScreenOnEvent;
    :cond_3
    return-void
.end method

.method private handleScreenOnTimeout()V
    .locals 4

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/android/server/ScreenOnMonitor;->getTimeoutSummary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mTimeoutSummary:Ljava/lang/String;

    .line 242
    const-string v0, "ScreenOnMonitor"

    iget-object v1, p0, Lcom/android/server/ScreenOnMonitor;->mTimeoutSummary:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 244
    return-void
.end method

.method private handleStartMonitor(Lcom/android/internal/os/SomeArgs;)V
    .locals 4
    .param p1, "args"    # Lcom/android/internal/os/SomeArgs;

    .prologue
    const-wide/16 v2, 0x0

    .line 169
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 190
    :goto_0
    return-void

    .line 173
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    .line 174
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mWakeSource:Ljava/lang/String;

    .line 175
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mTimeStamp:J

    .line 177
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    .line 178
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    .line 179
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    .line 180
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    .line 181
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    .line 183
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0
.end method

.method private handleStopMonitor(Z)V
    .locals 4
    .param p1, "report"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 193
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 197
    :cond_0
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 209
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->removeMessages(I)V

    .line 202
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->removeMessages(I)V

    .line 204
    if-eqz p1, :cond_2

    .line 205
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/ScreenOnMonitor;->handleReport(Z)V

    .line 208
    :cond_2
    iput-wide v2, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    goto :goto_0
.end method

.method private toCalendarTime(J)Ljava/lang/String;
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 349
    sget-object v0, Lcom/android/server/ScreenOnMonitor;->DATE:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 350
    sget-object v0, Lcom/android/server/ScreenOnMonitor;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/android/server/ScreenOnMonitor;->DATE:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public recordTime(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 131
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 135
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
    .param p1, "wakeSource"    # Ljava/lang/String;

    .prologue
    .line 102
    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 108
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 109
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 111
    iget-object v1, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public stopMonitor(II)V
    .locals 3
    .param p1, "brightness"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v2, 0x2

    .line 115
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 119
    :cond_0
    iget v0, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayState:I

    if-ne v0, v2, :cond_2

    if-eq p2, v2, :cond_2

    .line 120
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 126
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayBrightness:I

    .line 127
    iput p2, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayState:I

    goto :goto_0

    .line 121
    :cond_2
    iget v0, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayBrightness:I

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    .line 123
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
