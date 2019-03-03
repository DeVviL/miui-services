.class public Lcom/android/server/am/BroadcastQueueInjector;
.super Ljava/lang/Object;
.source "BroadcastQueueInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;,
        Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;
    }
.end annotation


# static fields
.field private static final ACTION_C2DM:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field private static BR_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/mqsas/sdk/event/BroadcastEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.PACKAGE_NAME"

.field public static final FLAG_IMMUTABLE:I = 0x4000000

.field private static final IS_STABLE_VERSION:Z

.field private static final MAX_QUANTITY:I = 0x1e

.field static final TAG:Ljava/lang/String; = "BroadcastQueueInjector"

.field private static volatile mBRHandler:Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;

.field private static mBroadcastMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;",
            ">;"
        }
    .end annotation
.end field

.field private static mDispatchThreshold:J

.field private static mFinishDeno:I

.field private static mIndex:I

.field private static final mObject:Ljava/lang/Object;

.field private static sActivityRequestId:I

.field private static sSystemAppSkipAction:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sSystemBootCompleted:Z

.field private static sSystemSkipAction:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueInjector;->BR_LIST:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueInjector;->mBroadcastMap:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueInjector;->mObject:Ljava/lang/Object;

    const-string v0, "persist.broadcast.time"

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/BroadcastQueueInjector;->mDispatchThreshold:J

    const-string v0, "persist.broadcast.count"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/BroadcastQueueInjector;->mFinishDeno:I

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    sput-boolean v0, Lcom/android/server/am/BroadcastQueueInjector;->IS_STABLE_VERSION:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemSkipAction:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemAppSkipAction:Landroid/util/ArrayMap;

    sget-object v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemSkipAction:Ljava/util/ArrayList;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemSkipAction:Ljava/util/ArrayList;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    invoke-static {}, Lcom/android/server/am/BroadcastQueueInjector;->isSystemBootCompleted()Z

    move-result v0

    return v0
.end method

.method static checkApplicationAutoStart(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)Z
    .locals 14

    sget-boolean v1, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_4

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    :goto_1
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lmiui/security/WakePathChecker;->checkBroadcastWakePath(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;I)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_3

    if-eqz v11, :cond_6

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "com.xiaomi.mipush.MESSAGE_ARRIVED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    if-eqz v11, :cond_8

    sget-object v1, Lcom/android/server/am/BroadcastQueueInjector;->sSystemSkipAction:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lcom/android/server/am/BroadcastQueueInjector;->sSystemAppSkipAction:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_8

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_8
    if-eqz v11, :cond_9

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v8, 0x1

    const-string v12, " system app CONNECTIVITY_CHANGE"

    :cond_9
    if-nez v8, :cond_b

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, v2, v3}, Landroid/miui/AppOpsUtils;->getApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_a

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_a
    const-string v12, " auto start"

    :cond_b
    :goto_3
    const-string v1, "BroadcastQueueInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": process is not permitted to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v7, 0x0

    move-object v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    const/4 v1, 0x0

    move-object/from16 v0, p2

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_c
    const-string v12, " weak path"

    goto :goto_3
.end method

.method static checkReceiverAppDealBroadcast(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Z)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p3, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v2, p3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isBroadcastAllowedLocked(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "BroadcastQueueInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v0, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/am/BroadcastQueue;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getBRReportHandler()Landroid/os/Handler;
    .locals 4

    sget-object v1, Lcom/android/server/am/BroadcastQueueInjector;->mBRHandler:Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;

    if-nez v1, :cond_1

    sget-object v2, Lcom/android/server/am/BroadcastQueueInjector;->mObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/server/am/BroadcastQueueInjector;->mBRHandler:Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "brreport-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/am/BroadcastQueueInjector;->mBRHandler:Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v1, Lcom/android/server/am/BroadcastQueueInjector;->mBRHandler:Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getNextRequestIdLocked()I
    .locals 2

    sget v0, Lcom/android/server/am/BroadcastQueueInjector;->sActivityRequestId:I

    const v1, 0x7fffffff

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/BroadcastQueueInjector;->sActivityRequestId:I

    :cond_0
    sget v0, Lcom/android/server/am/BroadcastQueueInjector;->sActivityRequestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/am/BroadcastQueueInjector;->sActivityRequestId:I

    sget v0, Lcom/android/server/am/BroadcastQueueInjector;->sActivityRequestId:I

    return v0
.end method

.method static isSKipNotifySms(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;I)Z
    .locals 7

    const/4 v3, 0x0

    const/16 v4, 0x10

    if-eq p4, v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    const-string v4, "miui.intent.SERVICE_NUMBER"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v5, 0x40

    invoke-virtual {v4, v5, p2, p3}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v4, "BroadcastQueueInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MIUILOG- Sms Filter packageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "BroadcastQueueInjector"

    const-string v5, "isSKipNotifySms"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static isSkip(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;I)Z
    .locals 2

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1, p3}, Lcom/android/server/am/BroadcastQueueInjector;->isSKipNotifySms(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static isSkip(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;I)Z
    .locals 2

    iget-object v0, p2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v0, v0, Lcom/android/server/am/ReceiverList;->uid:I

    iget-object v1, p2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1, p3}, Lcom/android/server/am/BroadcastQueueInjector;->isSKipNotifySms(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static isSkipForUser(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ResolveInfo;Z)Z
    .locals 1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/am/ActivityManagerServiceCompat;->isUserRunning(Lcom/android/server/am/ActivityManagerService;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method private static isSystemBootCompleted()Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemBootCompleted:Z

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemBootCompleted:Z

    :cond_0
    sget-boolean v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemBootCompleted:Z

    return v0
.end method

.method public static noteOperationLocked(IILjava/lang/String;Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;)I
    .locals 22

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v19

    const/4 v5, 0x4

    move/from16 v0, v19

    if-eq v0, v5, :cond_1

    :cond_0
    :goto_0
    return v19

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    const/16 v5, 0x3e7

    move/from16 v0, v21

    if-eq v0, v5, :cond_0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/BroadcastQueueInjector;->isSKipNotifySms(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/4 v6, 0x1

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v5, v0, v1, v2, v6}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    new-instance v17, Landroid/content/Intent;

    const-string v5, "com.miui.intent.action.REQUEST_PERMISSIONS"

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.lbe.security.miui"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x18800000

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v5, "android.intent.extra.PACKAGE_NAME"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "android.intent.extra.UID"

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "op"

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p5

    iget-boolean v5, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-nez v5, :cond_3

    move-object/from16 v0, p5

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v0, p5

    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-nez v7, :cond_2

    if-nez v8, :cond_4

    const-string v7, "root"

    :cond_2
    :goto_1
    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/server/am/BroadcastQueueInjector;->getNextRequestIdLocked()I

    move-result v12

    new-instance v18, Landroid/content/Intent;

    move-object/from16 v0, p5

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, 0x1

    move-object/from16 v0, p5

    iget v9, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x1

    new-array v13, v5, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v18, v13, v5

    const/4 v5, 0x1

    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v5

    const/high16 v15, 0x4c000000    # 3.3554432E7f

    const/16 v16, 0x0

    move-object/from16 v5, p4

    invoke-virtual/range {v5 .. v16}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v20

    const-string v5, "android.intent.extra.INTENT"

    new-instance v6, Landroid/content/IntentSender;

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    const-string v5, "BroadcastQueueInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MIUILOG - Launching Request permission [Broadcast] uid : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "  pkg : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " op : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/am/BroadcastQueueInjector$1;

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/am/BroadcastQueueInjector$1;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Intent;I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0x7d0

    if-ne v8, v5, :cond_5

    const-string v7, "com.android.shell"

    goto/16 :goto_1

    :cond_5
    const/16 v5, 0x3e8

    if-ne v8, v5, :cond_2

    const-string v7, "android"

    goto/16 :goto_1
.end method

.method static onBroadcastFinished(Landroid/content/Intent;Ljava/lang/String;IJJJJI)V
    .locals 21

    sget-boolean v14, Lcom/android/server/am/BroadcastQueueInjector;->IS_STABLE_VERSION:Z

    if-eqz v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "null"

    :cond_2
    if-nez p1, :cond_3

    const-string p1, "android"

    :cond_3
    move/from16 v10, p2

    const-string v11, ""

    move-object/from16 v9, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v14, p5, p3

    sget-wide v16, Lcom/android/server/am/BroadcastQueueInjector;->mDispatchThreshold:J

    cmp-long v14, v14, v16

    if-gez v14, :cond_4

    sub-long v14, p7, p5

    move/from16 v0, p11

    int-to-long v0, v0

    move-wide/from16 v16, v0

    mul-long v16, v16, p9

    sget v18, Lcom/android/server/am/BroadcastQueueInjector;->mFinishDeno:I

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    cmp-long v14, v14, v16

    if-ltz v14, :cond_6

    :cond_4
    const/4 v8, 0x1

    :goto_1
    sget v14, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    if-ltz v14, :cond_5

    sget v14, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    const/16 v15, 0x1e

    if-le v14, v15, :cond_7

    :cond_5
    const/4 v14, 0x0

    :goto_2
    sput v14, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    new-instance v5, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;

    move-object/from16 v0, p1

    invoke-direct {v5, v3, v0}, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v14, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    if-eqz v14, :cond_8

    sget v14, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    const/16 v15, 0x1e

    if-gt v14, v15, :cond_8

    sget-object v14, Lcom/android/server/am/BroadcastQueueInjector;->mBroadcastMap:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    sget-object v14, Lcom/android/server/am/BroadcastQueueInjector;->mBroadcastMap:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    sget-object v14, Lcom/android/server/am/BroadcastQueueInjector;->BR_LIST:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/mqsas/sdk/event/BroadcastEvent;

    invoke-virtual {v2}, Lmiui/mqsas/sdk/event/BroadcastEvent;->addCount()V

    sub-long v14, p7, p3

    invoke-virtual {v2, v14, v15}, Lmiui/mqsas/sdk/event/BroadcastEvent;->addTotalTime(J)V

    if-eqz v8, :cond_0

    invoke-virtual {v2, v11}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setReason(Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setEnTime(J)V

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setDisTime(J)V

    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setFinTime(J)V

    move/from16 v0, p11

    invoke-virtual {v2, v0}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setNumReceivers(I)V

    goto/16 :goto_0

    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    :cond_7
    sget v14, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    goto :goto_2

    :cond_8
    sget v14, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    const/16 v15, 0x1e

    if-lt v14, v15, :cond_9

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    const/4 v14, 0x1

    iput v14, v7, Landroid/os/Message;->what:I

    new-instance v15, Landroid/content/pm/ParceledListSlice;

    sget-object v14, Lcom/android/server/am/BroadcastQueueInjector;->BR_LIST:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    invoke-direct {v15, v14}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    iput-object v15, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/am/BroadcastQueueInjector;->getBRReportHandler()Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v14, Lcom/android/server/am/BroadcastQueueInjector;->BR_LIST:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    sget-object v14, Lcom/android/server/am/BroadcastQueueInjector;->mBroadcastMap:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    const/4 v14, 0x0

    sput v14, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    :cond_9
    sget-object v14, Lcom/android/server/am/BroadcastQueueInjector;->mBroadcastMap:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v14, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    add-int/lit8 v14, v14, 0x1

    sput v14, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    new-instance v4, Lmiui/mqsas/sdk/event/BroadcastEvent;

    invoke-direct {v4}, Lmiui/mqsas/sdk/event/BroadcastEvent;-><init>()V

    const/16 v14, 0x40

    invoke-virtual {v4, v14}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setType(I)V

    if-eqz v8, :cond_a

    invoke-virtual {v4, v11}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setReason(Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setEnTime(J)V

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setDisTime(J)V

    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setFinTime(J)V

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setNumReceivers(I)V

    :cond_a
    invoke-virtual {v4, v3}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setCallerPackage(Ljava/lang/String;)V

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setCount(I)V

    sub-long v14, p7, p3

    invoke-virtual {v4, v14, v15}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setTotalTime(J)V

    invoke-virtual {v4, v10}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setPid(I)V

    invoke-virtual {v4, v9}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v4, v12, v13}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setTimeStamp(J)V

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setSystem(Z)V

    sget-object v14, Lcom/android/server/am/BroadcastQueueInjector;->BR_LIST:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method static processBroadcastHookLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)Z
    .locals 14

    sget-boolean v7, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_3

    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v7, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_5

    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_4

    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_2
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-static/range {v1 .. v7}, Lcom/miui/whetstone/client/WhetstoneClientManager;->processBroadcastHookLocked(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;IILjava/lang/String;Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v13, 0x0

    move-object v7, p0

    move-object/from16 v8, p2

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    const/4 v7, 0x0

    move-object/from16 v0, p2

    iput v7, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v7, 0x0

    goto :goto_0
.end method
