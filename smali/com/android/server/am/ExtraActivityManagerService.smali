.class public Lcom/android/server/am/ExtraActivityManagerService;
.super Ljava/lang/Object;
.source "ExtraActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ExtraActivityManagerService$CompatibleMessage;
    }
.end annotation


# static fields
.field private static final INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

.field private static final INCOMPATIBLE_PACKAGES:[Ljava/lang/String;

.field static final SHOW_INCOMPATIBLE_ERROR:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static mLastStartActivityUid:I

.field private static mPerfService:Lcom/android/internal/app/IPerfShielder;

.field private static mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

.field private static mSystemReady:Z

.field private static sAmInstance:Lcom/android/server/am/ActivityManagerService;

.field static final sHandler:Landroid/os/Handler;

.field private static sMainStack:Ljava/lang/reflect/Field;

.field private static sScheduleDestroyActivities:Ljava/lang/reflect/Method;

.field private static sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-class v1, Lcom/android/server/am/ExtraActivityManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    :try_start_0
    const-class v1, Lcom/android/server/am/ActivityManagerService;

    const-string v2, "mStackSupervisor"

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/server/am/ActivityManagerService;

    const-string v2, "scheduleDestroyAllActivities"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/android/server/am/ProcessRecord;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v1, Lcom/android/server/am/ExtraActivityManagerService$1;

    invoke-direct {v1}, Lcom/android/server/am/ExtraActivityManagerService$1;-><init>()V

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sHandler:Landroid/os/Handler;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "com.tencent.mobileqq.activity.QQLSActivity"

    aput-object v2, v1, v6

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "com.tencent.mobileqq"

    aput-object v2, v1, v6

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_PACKAGES:[Ljava/lang/String;

    sput-object v8, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-class v1, Lcom/android/server/am/ActivityManagerService;

    const-string v2, "mMainStack"

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/server/am/ActivityManagerService;

    const-string v2, "scheduleDestroyActivities"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/android/server/am/ProcessRecord;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static activityIdle(Landroid/content/pm/ActivityInfo;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "System was not ready,activityIdle failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p0, :cond_2

    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "aInfo is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-virtual {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate;->activityIdle(Landroid/content/pm/ActivityInfo;)V

    goto :goto_0
.end method

.method static addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 10

    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/app/IPerfShielder;->addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p0}, Landroid/app/ExtraActivityManager;->getPackageNameListForRecentTasks(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameForReceiver(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p1, v0, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ExtraActivityManagerService;->adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IZ)Z
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/String;)Z
    .locals 18

    if-nez p6, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v4, 0x400

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-interface {v3, v0, v1, v4, v2}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v17

    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :goto_1
    if-eqz v7, :cond_2

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-static {v0, v3, v1}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/16 v8, 0x8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p3

    move/from16 v9, p5

    invoke-static/range {v3 .. v9}, Lcom/android/server/am/ExtraActivityManagerService;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_7

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_7

    const-string v10, ""

    if-eqz p7, :cond_5

    move-object/from16 v10, p7

    :goto_3
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v8

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x2

    iget-object v13, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v14, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v15, v3

    move/from16 v12, p5

    invoke-virtual/range {v8 .. v15}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    const-string v3, "WhetstonePackageState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission denied by Whetstone, cannot start service from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UserId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5
    monitor-enter p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v16

    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_6

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_6
    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    :catch_0
    move-exception v3

    :cond_7
    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_8
    sget-boolean v3, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "WhetstonePackageState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start service from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UserId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IZLjava/lang/String;)Z
    .locals 11

    if-nez p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v10, v1, :cond_2

    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

    aget-object v1, v1, v10

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_PACKAGES:[Ljava/lang/String;

    aget-object v1, v1, v10

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, p6

    invoke-static {p0, v1, v0}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p7

    move-object v4, p4

    move-object v5, p3

    move/from16 v7, p5

    invoke-static/range {v1 .. v7}, Lcom/android/server/am/ExtraActivityManagerService;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v3, ""

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v1, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_5

    iget-object v1, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v1

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v6, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, p3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v8, v5

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v8}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const-string v1, "WhetstonePackageState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission denied by Whetstone, cannot start activity from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", caller: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", UserId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_6
    sget-boolean v1, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "WhetstonePackageState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start activity from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", caller: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", UserId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Lcom/android/server/am/ContentProviderRecord;IZ)Z
    .locals 14

    if-nez p5, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    const/4 v6, 0x4

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lcom/android/server/am/ExtraActivityManagerService;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v7, ""

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v13

    if-eqz v13, :cond_4

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_4

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_4
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v5

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x8

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_5

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    :goto_1
    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v4, v12, v1

    move/from16 v9, p4

    invoke-virtual/range {v5 .. v12}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const-string v2, "WhetstonePackageState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission denied by Whetstone, cannot start contentProvider from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_6

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", caller: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", UserId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    sget-boolean v1, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string v2, "WhetstonePackageState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start contentProvider from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_9

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", caller: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", UserId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private static checkRunningCompatibility(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static checkStartActivityLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 19

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p2, v0

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :try_start_0
    const-string v2, "android.permission.START_ANY_ACTIVITY"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v2, v4, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v13

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-boolean v7, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move-object/from16 v2, p0

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-eqz v13, :cond_2

    if-eqz v11, :cond_2

    const/4 v2, 0x0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    return v2

    :cond_0
    if-ltz p2, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_0

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v0, p4

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v6, p5

    move/from16 v7, p2

    move v8, v4

    move-object/from16 v9, p6

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    :try_start_3
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v2, v0, v3}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catch_0
    move-exception v2

    :cond_4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v2, "checkStartActivityLocked"

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_1

    :catch_1
    move-exception v12

    :try_start_4
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v3, "checkStartActivityLocked: An exception occured. "

    invoke-static {v2, v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static checkStartActivityPermission(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZIZIILjava/lang/String;)Landroid/content/Intent;
    .locals 18

    if-eqz p3, :cond_3

    const/4 v2, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    monitor-enter p1

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit p1

    move-object/from16 v17, p4

    :goto_0
    return-object v17

    :cond_0
    iget-object v14, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    :cond_1
    move-object/from16 v1, p1

    move/from16 v3, p10

    move-object/from16 v4, p11

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p8

    invoke-static/range {v1 .. v8}, Lcom/android/server/am/ExtraActivityManagerService;->checkStartActivityLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    invoke-static {v0, v1, v4, v5}, Lcom/android/server/am/ExtraActivityManagerService;->packageIsRunningLocked(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v11, 0x1

    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v16, :cond_3

    const-string v1, "security"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/security/SecurityManager;

    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v4, p0

    move-object v5, v14

    move-object/from16 v6, p11

    move-object/from16 v8, p4

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-virtual/range {v3 .. v13}, Lmiui/security/SecurityManager;->getCheckIntent(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZIZII)Landroid/content/Intent;

    move-result-object v15

    if-eqz v15, :cond_3

    move-object/from16 p4, v15

    :cond_3
    move-object/from16 v17, p4

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static checkTime(JLjava/lang/String;)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, p0

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIUILOG-checkTime:Slow operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v0, p0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms so far, now at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z
    .locals 14

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const/4 v11, 0x1

    :goto_0
    return v11

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const/4 v11, 0x1

    const-string v5, ""

    if-eqz p1, :cond_5

    monitor-enter p0

    :try_start_0
    const-string v2, "checkWakePath: synchronized (ams), get caller package info."

    invoke-static {v12, v13, v2}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_3

    :cond_2
    const/4 v11, 0x1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v7, -0x1

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_4

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v11, 0x1

    goto :goto_0

    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v5, p2

    goto :goto_1

    :cond_6
    const-string v5, "android"

    goto :goto_1

    :cond_7
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v11, 0x1

    goto :goto_0

    :cond_8
    if-ltz v7, :cond_a

    monitor-enter p0

    :try_start_2
    const-string v2, "checkWakePath: synchronized (ams), callee package is running?"

    invoke-static {v12, v13, v2}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-static {p0, v6, v2, v7}, Lcom/android/server/am/ExtraActivityManagerService;->packageIsRunningLocked(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v11, 0x1

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_9
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_a
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v2

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lmiui/security/WakePathChecker;->matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v11, 0x1

    :goto_2
    const-string v2, "checkWakePath"

    invoke-static {v12, v13, v2}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/4 v11, 0x0

    goto :goto_2
.end method

.method public static closeCheckPriority()V
    .locals 2

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lcom/android/server/am/ActiveServicesInjector;->closeCheckPriority(Lcom/android/server/am/ActivityManagerService;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static destroyActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "System was not ready,destroyActivity failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p0, :cond_2

    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "aInfo is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-virtual {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate;->destroyActivity(Landroid/content/pm/ActivityInfo;)V

    goto :goto_0
.end method

.method private static ensureDeviceProvisioned(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.android.provision"

    const-string v4, "com.android.provision.activities.DefaultActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v4, "The device provisioned state is inconsistent,try to restore."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v2, v1, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static finishActivity(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;ILandroid/content/Intent;)Landroid/os/IBinder;
    .locals 5

    if-nez p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "security"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lmiui/security/SecurityManager;->checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object p1, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    monitor-exit p0

    move-object v1, p1

    :goto_0
    return-object v1

    :cond_0
    monitor-exit p0

    :cond_1
    move-object v1, p1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static finishBooting(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2

    new-instance v0, Lmiui/drm/DrmBroadcast;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/drm/DrmBroadcast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiui/drm/DrmBroadcast;->broadcast()V

    return-void
.end method

.method static forceStopUserLocked(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lmiui/securityspace/SecuritySpaceEcryptManager;->spaceEcryptfsUnmount(I)V

    return-void
.end method

.method private static getActivityManagerService()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_0

    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    sput-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    :cond_0
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method public static getCurAdjByPid(I)I
    .locals 4

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    monitor-exit v3

    const v2, 0x7fffffff

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getCurSchedGroupByPid(I)I
    .locals 4

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    monitor-exit v3

    const/4 v2, -0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getCurrentUserId()I
    .locals 4

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: getCurrentUserId() from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserIdLocked()I

    move-result v2

    return v2
.end method

.method public static getExecutingServicesSize(I)I
    .locals 4

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    monitor-exit v3

    const/4 v2, -0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getExtraInstallFlags(I)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->getCurSchedGroupByPid(I)I

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public static getMemoryTrimLevel()I
    .locals 3

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Isolated process not allowed to call getMemoryTrimLevel"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    monitor-enter v0

    :try_start_0
    iget v1, v0, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPackageNameByPid(I)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    monitor-exit v3

    :goto_0
    return-object v2

    :cond_0
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getPackageNameForReceiver(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    instance-of v2, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v2, :cond_1

    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v2, p0, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getProcStateByPid(I)I
    .locals 4

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    monitor-exit v3

    const/4 v2, -0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getRenderThreadTidByPid(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getRunningProcessInfos()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-wide/16 v14, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    const/4 v1, 0x0

    monitor-enter v8

    :try_start_0
    iget-object v10, v8, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    add-int/lit8 v4, v10, -0x1

    move-object v2, v1

    :goto_0
    if-ltz v4, :cond_0

    :try_start_1
    iget-object v10, v8, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getSetAdjWithServices()I

    move-result v3

    iget-object v10, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_3

    const/4 v10, 0x5

    if-ge v3, v10, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    const-string v10, "pid"

    iget v11, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "adj"

    invoke-virtual {v1, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "lastPss"

    iget-wide v12, v6, Lcom/android/server/am/ProcessRecord;->lastPss:J

    invoke-virtual {v1, v10, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v10, "lastPssTime"

    iget-wide v12, v6, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    invoke-virtual {v1, v10, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v10, "processName"

    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "packageUid"

    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "packageName"

    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget v10, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v4, v4, -0x1

    move-object v2, v1

    goto :goto_0

    :cond_0
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    iget-object v11, v8, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v11

    :try_start_4
    iget-object v10, v8, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v10}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_1

    iget-object v10, v8, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v10, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v9

    iget-wide v12, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    cmp-long v10, v12, v14

    if-lez v10, :cond_2

    iget v10, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v10, "pid"

    iget v12, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v1, v10, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "adj"

    const/16 v12, -0x11

    invoke-virtual {v1, v10, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "lastPss"

    const-wide/16 v12, -0x1

    invoke-virtual {v1, v10, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v10, "lastPssTime"

    const-wide/16 v12, 0x0

    invoke-virtual {v1, v10, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v10, "processName"

    iget-object v12, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v1, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-object v2, v1

    goto :goto_2

    :catchall_0
    move-exception v10

    :goto_4
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v10

    :cond_1
    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-object v7

    :catchall_1
    move-exception v10

    move-object v1, v2

    :goto_5
    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v10

    :catchall_2
    move-exception v10

    goto :goto_5

    :catchall_3
    move-exception v10

    move-object v1, v2

    goto :goto_4

    :cond_2
    move-object v1, v2

    goto :goto_3

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method

.method public static getTaskIntentForToken(Landroid/os/IBinder;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_0
    :try_start_1
    monitor-exit v1

    :goto_1
    return-object v2

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getTopRunningActivityInfo()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "packageName"

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "token"

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "userId"

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    :goto_0
    return-object v1

    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
    .locals 1

    invoke-static {}, Landroid/content/res/MiuiResources;->isPreloadedCacheEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/AssetAtlasService;->disable()V

    :cond_0
    invoke-static {p0, p1}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V

    return-void
.end method

.method static handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[II)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Lmiui/securityspace/SecuritySpaceEcryptManager;->needAirlockUser(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p4, p2, p5}, Lcom/android/server/wm/WindowManagerService;->setCurrentUserAirlock(I[I)V

    const-string v2, "ActivityManagerService"

    const-string v3, "setCurrentUser - needAirLockUser."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "second_user_id"

    const/16 v4, -0x2710

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "ActivityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "privacyUserId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " userIdOrig:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldUserId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_5

    if-ne v0, p3, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    if-nez p3, :cond_2

    if-eq p1, v0, :cond_3

    :cond_2
    invoke-static {p0, p3}, Lmiui/securityspace/CrossUserUtils;->isAirSpace(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0, p1}, Lmiui/securityspace/CrossUserUtils;->isAirSpace(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    const-string v2, "ActivityManagerService"

    const-string v3, "switch without lock"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_4
    invoke-virtual {p4, p2, p5}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I[I)V

    invoke-static {p2}, Lmiui/securityspace/SecuritySpaceEcryptManager;->spaceNeedsEcryptfsMount(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {p2, v2, v5}, Lmiui/securityspace/SecuritySpaceEcryptManager;->spaceEcryptfsMount(IILjava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {p4, v5}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public static hasForegroundActivities(I)Z
    .locals 4

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static hookStartActivity(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    invoke-static {p0, p1}, Lcom/miui/hybrid/hook/HookClient;->redirectStartActivity(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static init()V
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "sdcard"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v1, 0x1ff

    invoke-static {v0, v1, v3, v3}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    invoke-static {}, Lmiui/content/res/IconCustomizer;->checkModIconsTimestamp()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    return-void
.end method

.method static isAllowedStartActivity(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/pm/ActivityInfo;)Z
    .locals 12

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    const/16 v10, 0x3e8

    if-eq v9, v10, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_0

    invoke-static {p3}, Lcom/android/server/am/PendingIntentRecordInjector;->containsPendingIntent(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object/from16 v0, p5

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/am/PendingIntentRecordInjector;->containsPendingIntent(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    sget v9, Lcom/android/server/am/ExtraActivityManagerService;->mLastStartActivityUid:I

    move/from16 v0, p4

    if-ne v0, v9, :cond_1

    :cond_0
    move-object/from16 v0, p5

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v9, Lcom/android/server/am/ExtraActivityManagerService;->mLastStartActivityUid:I

    const/4 v9, 0x1

    :goto_0
    return v9

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_3

    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p4

    if-ne v0, v9, :cond_4

    move-object/from16 v0, p5

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v9, Lcom/android/server/am/ExtraActivityManagerService;->mLastStartActivityUid:I

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v10, 0x43

    move/from16 v0, p4

    invoke-virtual {v9, v10, v0, p3}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v9}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_8

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v9}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_7

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget v9, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v0, p4

    if-ne v9, v0, :cond_6

    iget-boolean v9, v3, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    if-nez v9, :cond_5

    iget v9, v3, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    const-string v9, "visible"

    iget-object v10, v3, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_6

    iget v9, v7, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v0, p4

    if-ne v0, v9, :cond_6

    :cond_5
    move-object/from16 v0, p5

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v9, Lcom/android/server/am/ExtraActivityManagerService;->mLastStartActivityUid:I

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    sget-object v9, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MIUILOG- Permission Denied Activity : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pkg : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " uid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tuid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method private static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static isUserSwitchable(I)Z
    .locals 1

    const/16 v0, 0x63

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static killUnusedApp(II)V
    .locals 7

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, p0, :cond_0

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, p1, :cond_0

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_0

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v4, :cond_0

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v4, :cond_0

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const-string v4, "PerfShielderService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check  package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tempAdj : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    if-le v3, v4, :cond_2

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v4, :cond_2

    const-string v4, "PerfShielderService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kill app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "User unused app kill it !!"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method static onSystemReady(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    new-instance v1, Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {v1, p0}, Lcom/miui/server/SplashScreenServiceDelegate;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {p0}, Lcom/miui/server/XSpaceManagerService;->init(Landroid/content/Context;)V

    const-string v1, "perfshielder"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IPerfShielder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IPerfShielder;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->ensureDeviceProvisioned(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v2, "ensureDeviceProvisioned occurs Exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static packageIsRunningLocked(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-ltz v1, :cond_5

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_4

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, p3, :cond_3

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_3

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v4, :cond_3

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method public static removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V
    .locals 2

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {v0, p0, p1}, Lcom/android/server/am/ActiveServicesInjector;->removeServicePriority(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/app/MiuiServicePriority;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static reportAnr(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lmiui/mqsas/sdk/event/AnrEvent;)V
    .locals 9

    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->getBgAnr()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->isInputAnr()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide v4, 0x12a05f200L

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_7

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->isBroadcastAnr()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide v4, 0x2540be400L

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->isServiceAnr()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v0, :cond_5

    const-wide v4, 0x4a817c800L

    goto :goto_0

    :cond_5
    const-wide v4, 0x2e90edd000L

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->isProviderAnr()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide v4, 0x4a817c800L

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-nez p1, :cond_8

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->getCpuInfo()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/app/IPerfShielder;->reportAnr(ILjava/lang/String;JJLjava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_8
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method static requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .locals 2

    sget-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "System was not ready,request splash failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Intent or aInfo is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "mSplashScreenServiceDelegate is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static resolveCheckIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 7

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v6, 0x0

    const-string v0, "android.app.action.CHECK_ACCESS_CONTROL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.app.action.CHECK_ACCESS_CONTROL_PAD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.app.action.CHECK_ALLOW_START_ACTIVITY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.app.action.CHECK_ALLOW_START_ACTIVITY_PAD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/16 v0, 0x3e7

    if-ne p4, v0, :cond_1

    const/4 p4, 0x0

    :cond_1
    const/4 v6, 0x1

    :cond_2
    if-eqz v6, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method static resolveSplashIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v0, "com.miui.systemAdSolution"

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.miui.systemAdSolution.splashscreen.SplashActivity"

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static scheduleDestroyActivities(IZLjava/lang/String;)V
    .locals 9

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_1
    :try_start_3
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method public static scheduleTrimMemory(II)V
    .locals 5

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3, p1}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public static setForkedProcessGroup(IIILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/app/IPerfShielder;->setForkedProcessGroup(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static setSchedFgPid(I)V
    .locals 1

    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    invoke-interface {v0, p0}, Lcom/android/internal/app/IPerfShielder;->setSchedFgPid(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setServicePriority(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {v0, p0}, Lcom/android/server/am/ActiveServicesInjector;->setServicePriority(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setServicePriority(Ljava/util/List;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;J)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/am/ActiveServicesInjector;->setServicePriority(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
