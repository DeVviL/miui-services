.class Lcom/android/server/am/ActivityStackSupervisorInjector;
.super Ljava/lang/Object;
.source "ActivityStackSupervisorInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;
    }
.end annotation


# static fields
.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.PACKAGE_NAME"

.field private static final INCALL_PACKAGE_NAME:Ljava/lang/String; = "com.android.incallui"

.field private static final INCALL_UI_NAME:Ljava/lang/String; = "com.android.incallui.InCallActivity"

.field private static final MAX_SWITCH_INTERVAL:I = 0x3e8

.field public static final MIUI_APP_LOCK_ACTION:Ljava/lang/String; = "android.app.action.CHECK_ACCESS_CONTROL"

.field public static final MIUI_APP_LOCK_ACTIVITY_NAME:Ljava/lang/String; = "com.miui.applicationlock.ConfirmAccessControl"

.field public static final MIUI_APP_LOCK_PACKAGE_NAME:Ljava/lang/String; = "com.miui.securitycenter"

.field public static final MIUI_APP_LOCK_REQUEST_CODE:I = -0x3e9

.field private static final TAG:Ljava/lang/String; = "ActivityStackSupervisor"

.field private static mLastIncallUiLaunchTime:J

.field private static sActivityRequestId:I

.field static final sSupportsMultiTaskInDockList:Ljava/util/ArrayList;
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
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStackSupervisorInjector;->sSupportsMultiTaskInDockList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/am/ActivityStackSupervisorInjector;->sSupportsMultiTaskInDockList:Ljava/util/ArrayList;

    const-string v1, "com.miui.hybrid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/am/ActivityStackSupervisorInjector;->mLastIncallUiLaunchTime:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkXSpaceControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ZIILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    invoke-static {p2, p6}, Lcom/miui/server/XSpaceManagerService;->isPublicIntent(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/miui/server/XSpaceManagerService;->checkXSpaceControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ZIILjava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    goto :goto_0
.end method

.method static ensurePackageDexOpt(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/pm/PackageDexOptimizerManager;->getInstance()Lcom/android/server/pm/PackageDexOptimizerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageDexOptimizerManager;->ensurePackageDexOpt(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getNextRequestIdLocked()I
    .locals 2

    sget v0, Lcom/android/server/am/ActivityStackSupervisorInjector;->sActivityRequestId:I

    const v1, 0x7fffffff

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/ActivityStackSupervisorInjector;->sActivityRequestId:I

    :cond_0
    sget v0, Lcom/android/server/am/ActivityStackSupervisorInjector;->sActivityRequestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/am/ActivityStackSupervisorInjector;->sActivityRequestId:I

    sget v0, Lcom/android/server/am/ActivityStackSupervisorInjector;->sActivityRequestId:I

    return v0
.end method

.method static isAllowedAppSwitch(Lcom/android/server/am/ActivityStack;Ljava/lang/String;Landroid/content/pm/ActivityInfo;)Z
    .locals 6

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1

    const-string v2, "com.android.incallui.InCallActivity"

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.android.incallui"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    const-string v2, "com.android.incallui.InCallActivity"

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-wide v2, Lcom/android/server/am/ActivityStackSupervisorInjector;->mLastIncallUiLaunchTime:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app switch:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stopped for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.android.incallui.InCallActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms.Try later."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v1, "com.android.incallui.InCallActivity"

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/am/ActivityStackSupervisorInjector;->mLastIncallUiLaunchTime:J

    :cond_2
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method static isAllowedAppSwitch(Lcom/android/server/am/ActivityStack;Ljava/lang/String;Landroid/content/pm/ActivityInfo;J)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisorInjector;->isAllowedAppSwitch(Lcom/android/server/am/ActivityStack;Ljava/lang/String;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method static isAppLockActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "com.miui.securitycenter"

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.app.action.CHECK_ACCESS_CONTROL"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.miui.applicationlock.ConfirmAccessControl"

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isXSpaceActive()Z
    .locals 1

    sget-boolean v0, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    return v0
.end method

.method public static noteOperationLocked(IILjava/lang/String;Landroid/os/Handler;Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;)I
    .locals 22

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->service:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v18

    const/4 v3, 0x4

    move/from16 v0, v18

    if-eq v0, v3, :cond_1

    :cond_0
    :goto_0
    return v18

    :cond_1
    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->userId:I

    invoke-static {}, Lcom/android/server/am/ActivityStackSupervisorInjector;->getNextRequestIdLocked()I

    move-result v10

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->service:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x1

    new-array v11, v5, [Landroid/content/Intent;

    const/4 v5, 0x0

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->orginalintent:Landroid/content/Intent;

    aput-object v6, v11, v5

    const/4 v5, 0x1

    new-array v12, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->orginalintent:Landroid/content/Intent;

    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v5

    const/high16 v13, 0x50000000

    const/4 v14, 0x0

    move-object/from16 v5, p2

    move/from16 v6, p1

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v21

    new-instance v12, Landroid/content/Intent;

    const-string v3, "com.miui.intent.action.REQUEST_PERMISSIONS"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.lbe.security.miui"

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.PACKAGE_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v12, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.UID"

    move/from16 v0, p1

    invoke-virtual {v12, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "android.intent.extra.INTENT"

    new-instance v4, Landroid/content/IntentSender;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->resultRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_2

    const-string v3, "EXTRA_RESULT_NEEDED"

    const/4 v4, 0x1

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    const-string v3, "op"

    move/from16 v0, p0

    invoke-virtual {v12, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->stackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->resolvedType:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v14, v0, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->startFlags:I

    const/4 v15, 0x0

    move/from16 v16, v7

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v17

    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->newAInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p4

    iput-object v12, v0, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->newIntent:Landroid/content/Intent;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_3

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->resolvedType:Ljava/lang/String;

    invoke-static {v12, v3, v7}, Lcom/android/server/am/ActivityStackSupervisorInjector;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->newRInfo:Landroid/content/pm/ResolveInfo;

    :cond_3
    const-string v3, "ActivityStackSupervisor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MIUILOG - Launching Request permission [Activity] uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " op : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method private static resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v1, 0x10400

    invoke-interface {v0, p0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static resolveXSpaceIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;Ljava/lang/String;IILjava/lang/String;)Landroid/content/pm/ActivityInfo;
    .locals 12

    if-eqz p6, :cond_0

    const/16 v2, 0x3e7

    move/from16 v0, p6

    if-ne v0, v2, :cond_1

    :cond_0
    move-object/from16 v0, p7

    invoke-static {p1, v0}, Lcom/miui/server/XSpaceManagerService;->isPublicIntent(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    move-object/from16 v0, p7

    invoke-static {p1, v0}, Lcom/miui/server/XSpaceManagerService;->shouldResolveAgain(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const v3, 0x10400

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v2, p1, v0, v3, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object p0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    move-object/from16 v0, p7

    invoke-static {p1, v0}, Lcom/miui/server/XSpaceManagerService;->getCachedUserId(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v7

    const/16 v2, -0x2710

    if-eq v7, v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static supportsMultiTaskInDock(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/am/ActivityStackSupervisorInjector;->sSupportsMultiTaskInDockList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static updateInfoBeforeRealStartActivity(Lcom/android/server/am/ActivityStack;Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;II)V
    .locals 0

    invoke-static {p0, p5, p4}, Lcom/android/server/am/MiuiMultiTaskManager;->updateMultiTaskInfoIfNeed(Lcom/android/server/am/ActivityStack;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    return-void
.end method

.method static updateScreenPaperMode(Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/android/server/display/ScreenEffectManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/ScreenEffectManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/display/ScreenEffectManager;->updateLocalScreenEffect(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
