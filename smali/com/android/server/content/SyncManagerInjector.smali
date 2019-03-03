.class public Lcom/android/server/content/SyncManagerInjector;
.super Lcom/android/server/content/SyncManagerAccountChangePolicy;
.source "SyncManagerInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManagerInjector$NetReachableIntentReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_FOR_NET_RECHABLE_DISCONNECT:Ljava/lang/String; = "android.os.action.networkDisconnectFromInternet"

.field private static final ACTION_FOR_NET_RECHABLE_RECONNECT:Ljava/lang/String; = "android.os.action.networkReconnectToInternet"

.field public static final REASON_NET_REACHABLE_CHANGED:I = -0x9

.field public static final SYNC_EXTRAS_REASON:Ljava/lang/String; = "reason"

.field public static final SYNC_EXTRAS_SOURCE:Ljava/lang/String; = "source"

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final XIAOMI_ACCOUNT_TYPE:Ljava/lang/String; = "com.xiaomi"

.field private static final XIAOMI_MAX_PARALLEL_SYNC_NUM:I = 0x1

.field private static volatile mNetReachableStat:Z

.field private static numSync:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/content/SyncManagerInjector;->mNetReachableStat:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/server/content/SyncManagerInjector;->numSync:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/content/SyncManagerAccountChangePolicy;-><init>()V

    return-void
.end method

.method static synthetic access$000(Z)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/content/SyncManagerInjector;->setNetReachableStat(Z)V

    return-void
.end method

.method public static canBindService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public static cancelForbiddenActiveSyncs(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/content/SyncOperation;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    invoke-static {p0, v1, p2}, Lcom/android/server/content/SyncManagerInjector;->isSyncForbidden(Landroid/content/Context;Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SyncManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "injector: cancelNonManualActiveSyncs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z
    .locals 3

    const/4 v1, 0x3

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "SyncManager"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SyncManager"

    const-string v1, "injector: checkSyncOperationAccount: false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const-string v0, "SyncManager"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injector: checkSyncOperationAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v0, "com.xiaomi"

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static clearSyncNum()V
    .locals 2

    const-string v0, "SyncManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    const-string v1, "injector: clearSyncNum"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/android/server/content/SyncManagerInjector;->numSync:I

    return-void
.end method

.method public static countSyncOperation(Lcom/android/server/content/SyncOperation;)V
    .locals 3

    invoke-static {p0}, Lcom/android/server/content/SyncManagerInjector;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/content/SyncManagerInjector;->numSync:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/content/SyncManagerInjector;->numSync:I

    const-string v0, "SyncManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injector: countSyncOperation\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/content/SyncManagerInjector;->numSync:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static expandSyncOperationExtras(Lcom/android/server/content/SyncOperation;)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "reason"

    iget v2, p0, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "source"

    iget v2, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static initNetReachableControl(Landroid/content/Context;Lcom/android/server/content/SyncManager;)V
    .locals 1

    new-instance v0, Lcom/android/server/content/SyncManagerInjector$NetReachableIntentReceiver;

    invoke-direct {v0, p1}, Lcom/android/server/content/SyncManagerInjector$NetReachableIntentReceiver;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {p0, v0}, Lcom/android/server/content/SyncManagerInjector;->registerNetReachableIntentReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static isNetReachable()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/content/SyncManagerInjector;->mNetReachableStat:Z

    return v0
.end method

.method public static isRoomAvailable(Lcom/android/server/content/SyncOperation;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/android/server/content/SyncManagerInjector;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SyncManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "injector: isRoomAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/content/SyncManagerInjector;->numSync:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v1, Lcom/android/server/content/SyncManagerInjector;->numSync:I

    if-ge v1, v0, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSyncForbidden(Landroid/content/Context;Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const-string v3, "SyncManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SyncManager"

    const-string v4, "injector: isSyncForbidden: null parameter, false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-static {p1}, Lcom/android/server/content/SyncManagerInjector;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "SyncManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SyncManager"

    const-string v4, "injector: isSyncForbidden: not xiaomi account, false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    const-string v3, "initialize"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const-string v3, "force"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "ignore_settings"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const-string v3, "SyncManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SyncManager"

    const-string v4, "injector: isSyncForbidden: init or ignore settings, false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget v3, p1, Lcom/android/server/content/SyncOperation;->reason:I

    const/4 v4, -0x6

    if-ne v3, v4, :cond_7

    const-string v3, "SyncManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SyncManager"

    const-string v4, "injector: isSyncForbidden: sync for auto, false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v0, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const-string v3, "com.miui.gallery.cloud.provider"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "com.miui.gallery"

    invoke-static {p0, v3}, Lcom/android/server/content/SyncManagerInjector;->isPackageNameForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "SyncManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SyncManager"

    const-string v4, "injector: isSyncForbidden: gallery is foreground, false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    invoke-static {v0}, Lcom/android/server/content/SyncManagerInjector;->getSyncForbiddenStrategy(Ljava/lang/String;)Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;

    move-result-object v2

    invoke-interface {v2, p0, v0, p2}, Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;->isSyncForbidden(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method private static registerNetReachableIntentReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.networkReconnectToInternet"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.os.action.networkDisconnectFromInternet"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static setNetReachableStat(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/server/content/SyncManagerInjector;->mNetReachableStat:Z

    return-void
.end method
