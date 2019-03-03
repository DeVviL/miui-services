.class public final Lcom/miui/server/SplashScreenServiceDelegate;
.super Ljava/lang/Object;
.source "SplashScreenServiceDelegate.java"


# static fields
.field private static final ACTION_DEBUG_OFF:Ljava/lang/String; = "miui.intent.action.ad.DEBUG_OFF"

.field private static final ACTION_DEBUG_ON:Ljava/lang/String; = "miui.intent.action.ad.DEBUG_ON"

.field private static final DELAY_BIND_AFTER_BOOT_COMPLETE:J = 0x1d4c0L

.field private static final KEY_API_VERSION:Ljava/lang/String; = "apiVersion"

.field private static final MAX_DELAY_TIME:J = 0x36ee80L

.field private static final MIUI_GENERAL_PERMISSION:Ljava/lang/String; = "miui.permission.USE_INTERNAL_GENERAL_API"

.field private static final MSG_REBIND:I = 0x1

.field public static final SPLASHSCREEN_ACTIVITY:Ljava/lang/String; = "com.miui.systemAdSolution.splashscreen.SplashActivity"

.field private static final SPLASHSCREEN_CLASS:Ljava/lang/String; = "com.miui.systemAdSolution.splashscreen.SplashScreenService"

.field public static final SPLASHSCREEN_PACKAGE:Ljava/lang/String; = "com.miui.systemAdSolution"

.field private static final TAG:Ljava/lang/String; = "SplashScreenServiceDelegate"

.field private static final VALUE_API_VERSION:I = 0x2

.field private static sDebug:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mDelayTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mRebindCount:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSeverity:I

.field private mSplashPackageCheckInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/server/SplashPackageCheckInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSplashPackageCheckListener:Lcom/miui/server/ISplashPackageCheckListener;

.field private final mSplashScreenConnection:Landroid/content/ServiceConnection;

.field private mSplashScreenService:Lcom/miui/server/ISplashScreenService;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$1;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$2;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$2;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$3;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$3;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$4;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$4;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckListener:Lcom/miui/server/ISplashPackageCheckListener;

    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/server/SplashScreenServiceDelegate$5;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Debug "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->registerReceiver()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToBindServiceAfterBootCompleted()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/server/SplashScreenServiceDelegate;)Lcom/miui/server/ISplashPackageCheckListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckListener:Lcom/miui/server/ISplashPackageCheckListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/server/SplashScreenServiceDelegate;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/SplashPackageCheckInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->checkSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/SplashPackageCheckInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->keepSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->bindService()V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z

    return p0
.end method

.method static synthetic access$300(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/server/SplashScreenServiceDelegate;)Lcom/miui/server/ISplashScreenService;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/ISplashScreenService;)Lcom/miui/server/ISplashScreenService;
    .locals 0

    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/server/SplashScreenServiceDelegate;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/miui/server/SplashScreenServiceDelegate;I)I
    .locals 0

    iput p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/os/IBinder$DeathRecipient;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private bindService()V
    .locals 6

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-nez v2, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.miui.systemAdSolution"

    const-string v3, "com.miui.systemAdSolution.splashscreen.SplashScreenService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "apiVersion"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x5

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Can\'t bound to SplashScreenService, com.miui.systemAdSolution.splashscreen.SplashScreenService"

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logW(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "SplashScreenService started"

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Can not start splash screen service!"

    invoke-direct {p0, v2, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private calcDelayTime()J
    .locals 18

    const-wide/16 v10, 0x2710

    const-wide/32 v6, 0xea60

    const-wide/32 v4, 0x36ee80

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mStartTime:J

    sub-long v2, v12, v14

    cmp-long v9, v2, v6

    if-gez v9, :cond_0

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mSeverity:I

    if-ne v8, v9, :cond_4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    const-wide/16 v14, 0x2

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    :goto_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    int-to-long v0, v9

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    const-wide/32 v14, 0x36ee80

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    move-object/from16 v0, p0

    iput v8, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mSeverity:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Restart SplashScreenService delay time "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    return-wide v12

    :cond_0
    cmp-long v9, v2, v4

    if-gez v9, :cond_1

    const/4 v8, 0x2

    goto :goto_0

    :cond_1
    const/4 v8, 0x3

    goto :goto_0

    :cond_2
    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    add-long/2addr v12, v10

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_1
.end method

.method private checkSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/server/SplashPackageCheckInfo;->getSplashPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/server/SplashPackageCheckInfo;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/server/SplashPackageCheckInfo;->getSplashPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private delayToBindServiceAfterBootCompleted()V
    .locals 3

    const-wide/32 v0, 0x1d4c0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService(JZ)V

    return-void
.end method

.method private delayToRebindService()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->calcDelayTime()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService(JZ)V

    return-void
.end method

.method private delayToRebindService(JZ)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-eqz p3, :cond_0

    iget v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SplashScreenService rebind count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    return-void
.end method

.method private getPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private isSplashPackage(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Empty check list, check all"

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SplashPackageCheckInfo;

    if-nez v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "None for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/miui/server/SplashPackageCheckInfo;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is expired, remove it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/miui/server/SplashPackageCheckInfo;->matchTime()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mismatch time for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private keepSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/server/SplashPackageCheckInfo;->getSplashPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V
    .locals 4

    sget-boolean v0, Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p4}, Lcom/miui/server/SplashScreenServiceDelegate;->getPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "SplashScreenServiceDelegate"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private logI(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;Z)V

    return-void
.end method

.method private logI(Ljava/lang/String;Z)V
    .locals 1

    sget-boolean v0, Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const-string v0, "SplashScreenServiceDelegate"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private logW(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SplashScreenServiceDelegate"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerReceiver()V
    .locals 11

    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string v0, "Register BOOT_COMPLETED receiver"

    invoke-direct {p0, v0, v6}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;Z)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v0, "Register debugger receiver"

    invoke-direct {p0, v0, v6}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;Z)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "miui.intent.action.ad.DEBUG_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v9, "miui.permission.USE_INTERNAL_GENERAL_API"

    move-object v8, v3

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "miui.intent.action.ad.DEBUG_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v9, "miui.permission.USE_INTERNAL_GENERAL_API"

    move-object v8, v3

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-wide/32 v0, 0x927c0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService(JZ)V

    return-void
.end method


# virtual methods
.method public activityIdle(Landroid/content/pm/ActivityInfo;)V
    .locals 6

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->getPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/server/SplashScreenServiceDelegate;->isSplashPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    invoke-interface {v1, p1}, Lcom/miui/server/ISplashScreenService;->activityIdle(Landroid/content/pm/ActivityInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "activityIdle"

    invoke-direct {p0, v4, v2, v3, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "activityIdle exception"

    invoke-direct {p0, v4, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "activityIdle"

    invoke-direct {p0, v4, v2, v3, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    const-string v5, "activityIdle"

    invoke-direct {p0, v5, v2, v3, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    throw v4
.end method

.method public destroyActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 6

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->getPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/server/SplashScreenServiceDelegate;->isSplashPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    invoke-interface {v1, p1}, Lcom/miui/server/ISplashScreenService;->destroyActivity(Landroid/content/pm/ActivityInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "destroyActivity"

    invoke-direct {p0, v4, v2, v3, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "destroyActivity exception"

    invoke-direct {p0, v4, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "destroyActivity"

    invoke-direct {p0, v4, v2, v3, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    const-string v5, "destroyActivity"

    invoke-direct {p0, v5, v2, v3, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    throw v4
.end method

.method public requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .locals 7

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-eqz v2, :cond_1

    invoke-direct {p0, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->getPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->isSplashPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/miui/server/ISplashScreenService;->requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "requestSplashScreen "

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    :goto_0
    return-object v1

    :cond_0
    const-string v3, "requestSplashScreen "

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    :cond_1
    :goto_1
    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "requestSplashScreen exception"

    invoke-direct {p0, v3, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "requestSplashScreen "

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    const-string v6, "requestSplashScreen "

    invoke-direct {p0, v6, v4, v5, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    throw v3
.end method
