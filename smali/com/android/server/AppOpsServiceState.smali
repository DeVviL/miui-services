.class public Lcom/android/server/AppOpsServiceState;
.super Ljava/lang/Object;
.source "AppOpsServiceState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsServiceState$Callback;,
        Lcom/android/server/AppOpsServiceState$UserState;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final POWER_SAVE_MODE_OPEN:Ljava/lang/String; = "POWER_SAVE_MODE_OPEN"

.field private static final TAG:Ljava/lang/String; = "AppOpsServiceState"

.field private static sCtsIgnore:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultMode:I

.field private mGreaterThanL:Z

.field private mIPackageManager:Landroid/content/pm/IPackageManager;

.field private mPowerSaving:Z

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsServiceState$UserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "android.app.usage.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "com.android.cts.usepermission"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "com.android.cts.permission"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "com.android.cts.netlegacy22.permission"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "android.netlegacy22.permission.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "android.provider.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "android.telephony2.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "android.permission.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "com.android.cts.writeexternalstorageapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "com.android.cts.readexternalstorageapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string v1, "com.android.cts.externalstorageapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/AppOpsServiceState;->mDefaultMode:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-le v1, v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/AppOpsServiceState;->mGreaterThanL:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsServiceState;->mUidStates:Landroid/util/SparseArray;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/AppOpsServiceState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AppOpsServiceState;->updatePowerState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/AppOpsServiceState;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/AppOpsServiceState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsServiceState;->startService(I)V

    return-void
.end method

.method private declared-synchronized getUidState(IZ)Lcom/android/server/AppOpsServiceState$UserState;
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppOpsServiceState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsServiceState$UserState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/AppOpsServiceState$UserState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsServiceState$UserState;-><init>(Lcom/android/server/AppOpsServiceState$1;)V

    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private inMiuiAllowedBlackList(I)Z
    .locals 2

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/AppOpsServiceState;->mGreaterThanL:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x3e

    if-le p1, v1, :cond_0

    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xb -> :sswitch_0
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method private isSystemApp(IILjava/lang/String;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/16 v6, 0x2710

    if-ge v5, v6, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/AppOpsServiceState;->mIPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v5, :cond_1

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/AppOpsServiceState;->mIPackageManager:Landroid/content/pm/IPackageManager;

    :cond_1
    iget-object v5, p0, Lcom/android/server/AppOpsServiceState;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v6, 0x0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-interface {v5, p3, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private startService(I)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/AppOpsServiceState$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/AppOpsServiceState$2;-><init>(Lcom/android/server/AppOpsServiceState;I)V

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updatePowerState()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "POWER_SAVE_MODE_OPEN"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/AppOpsServiceState;->mPowerSaving:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public allowedToMode(IILjava/lang/String;)I
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/AppOpsServiceState;->mPowerSaving:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0x3e7

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    const/16 v2, 0x32

    if-ne p1, v2, :cond_1

    invoke-static {p3}, Landroid/app/AppOpsManagerInjector;->isAutoStartRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public askOperationLocked(IILjava/lang/String;)I
    .locals 5

    iget v0, p0, Lcom/android/server/AppOpsServiceState;->mDefaultMode:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/16 v3, 0x3e7

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/AppOpsServiceState;->getUidState(IZ)Lcom/android/server/AppOpsServiceState$UserState;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, v1, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    invoke-interface {v3, p2, p3, p1}, Lcom/android/internal/app/IOpsCallback;->askOperation(ILjava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getSuggestMode(IILjava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    const-string v0, "is_pad"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/server/AppOpsServiceState;->mDefaultMode:I

    :cond_0
    return-void
.end method

.method public isAppPermissionControlOpen(II)Z
    .locals 3

    sget-object v1, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v1, 0x32

    if-ne p1, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mSecurityManager:Lmiui/security/SecurityManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/security/SecurityManager;->getAppPermissionControlOpen(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isCtsIgnore(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMiuiAllowed(IILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsServiceState;->inMiuiAllowedBlackList(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x32

    if-ne p1, v1, :cond_2

    invoke-static {p3}, Landroid/app/AppOpsManagerInjector;->isAutoStartRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsServiceState;->isSystemApp(IILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onAppApplyOperation(ILjava/lang/String;IIZ)V
    .locals 8

    if-nez p4, :cond_1

    sparse-switch p3, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    :sswitch_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/16 v0, 0x3e7

    if-ne v7, v0, :cond_2

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    :cond_2
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/AppOpsServiceState;->getUidState(IZ)Lcom/android/server/AppOpsServiceState$UserState;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, v6, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, v6, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IOpsCallback;->onAppApplyOperation(ILjava/lang/String;IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x14 -> :sswitch_0
        0x34 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
    .end sparse-switch
.end method

.method public registerCallback(Lcom/android/internal/app/IOpsCallback;)I
    .locals 8

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/server/AppOpsServiceState;->getUidState(IZ)Lcom/android/server/AppOpsServiceState$UserState;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object p1, v1, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    iget-object v2, v1, Lcom/android/server/AppOpsServiceState$UserState;->mCallback:Lcom/android/server/AppOpsServiceState$Callback;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/server/AppOpsServiceState$UserState;->mCallback:Lcom/android/server/AppOpsServiceState$Callback;

    invoke-virtual {v2}, Lcom/android/server/AppOpsServiceState$Callback;->unlinkToDeath()V

    :cond_2
    new-instance v2, Lcom/android/server/AppOpsServiceState$Callback;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/AppOpsServiceState$Callback;-><init>(Lcom/android/server/AppOpsServiceState;Lcom/android/internal/app/IOpsCallback;I)V

    iput-object v2, v1, Lcom/android/server/AppOpsServiceState$UserState;->mCallback:Lcom/android/server/AppOpsServiceState$Callback;

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized removeUser(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsServiceState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public systemReady()V
    .locals 5

    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    const-string v2, "security"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/SecurityManager;

    iput-object v1, p0, Lcom/android/server/AppOpsServiceState;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsServiceState;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v1, "POWER_SAVE_MODE_OPEN"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/AppOpsServiceState$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/AppOpsServiceState$1;-><init>(Lcom/android/server/AppOpsServiceState;Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/server/AppOpsServiceState;->updatePowerState()V

    return-void
.end method
