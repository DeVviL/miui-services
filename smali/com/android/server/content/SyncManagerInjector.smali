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

    .prologue
    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/content/SyncManagerInjector;->mNetReachableStat:Z

    .line 88
    const/4 v0, 0x0

    sput v0, Lcom/android/server/content/SyncManagerInjector;->numSync:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/server/content/SyncManagerAccountChangePolicy;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 16
    invoke-static {p0}, Lcom/android/server/content/SyncManagerInjector;->setNetReachableStat(Z)V

    return-void
.end method

.method public static canBindService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public static cancelForbiddenActiveSyncs(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
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

    .prologue
    .line 174
    .local p1, "syncOperationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 175
    .local v1, "syncOperation":Lcom/android/server/content/SyncOperation;
    invoke-static {p0, v1, p2}, Lcom/android/server/content/SyncManagerInjector;->isSyncForbidden(Landroid/content/Context;Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const-string v2, "SyncManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
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

    .line 179
    :cond_1
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    .end local v1    # "syncOperation":Lcom/android/server/content/SyncOperation;
    :cond_2
    return-void
.end method

.method public static checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z
    .locals 3
    .param p0, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    const/4 v1, 0x3

    .line 117
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-nez v0, :cond_2

    .line 118
    :cond_0
    const-string v0, "SyncManager"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    const-string v0, "SyncManager"

    const-string v1, "injector: checkSyncOperationAccount: false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_1
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    .line 123
    :cond_2
    const-string v0, "SyncManager"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
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

    .line 126
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

    .prologue
    .line 91
    const-string v0, "SyncManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "SyncManager"

    const-string v1, "injector: clearSyncNum"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/android/server/content/SyncManagerInjector;->numSync:I

    .line 95
    return-void
.end method

.method public static countSyncOperation(Lcom/android/server/content/SyncOperation;)V
    .locals 3
    .param p0, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 98
    invoke-static {p0}, Lcom/android/server/content/SyncManagerInjector;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget v0, Lcom/android/server/content/SyncManagerInjector;->numSync:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/content/SyncManagerInjector;->numSync:I

    .line 100
    const-string v0, "SyncManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
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

    .line 104
    :cond_0
    return-void
.end method

.method public static expandSyncOperationExtras(Lcom/android/server/content/SyncOperation;)V
    .locals 3
    .param p0, "operation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "reason"

    iget v2, p0, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "source"

    iget v2, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static initNetReachableControl(Landroid/content/Context;Lcom/android/server/content/SyncManager;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncManager"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 78
    new-instance v0, Lcom/android/server/content/SyncManagerInjector$NetReachableIntentReceiver;

    invoke-direct {v0, p1}, Lcom/android/server/content/SyncManagerInjector$NetReachableIntentReceiver;-><init>(Lcom/android/server/content/SyncManager;)V

    .line 80
    .local v0, "netReachableIntentReceiver":Lcom/android/server/content/SyncManagerInjector$NetReachableIntentReceiver;
    invoke-static {p0, v0}, Lcom/android/server/content/SyncManagerInjector;->registerNetReachableIntentReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 81
    return-void
.end method

.method public static isNetReachable()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/server/content/SyncManagerInjector;->mNetReachableStat:Z

    return v0
.end method

.method public static isRoomAvailable(Lcom/android/server/content/SyncOperation;)Z
    .locals 4
    .param p0, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    const/4 v0, 0x1

    .line 107
    invoke-static {p0}, Lcom/android/server/content/SyncManagerInjector;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const-string v1, "SyncManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
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

    .line 111
    :cond_0
    sget v1, Lcom/android/server/content/SyncManagerInjector;->numSync:I

    if-ge v1, v0, :cond_2

    .line 113
    :cond_1
    :goto_0
    return v0

    .line 111
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSyncForbidden(Landroid/content/Context;Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 130
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 131
    :cond_0
    const-string v3, "SyncManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    const-string v3, "SyncManager"

    const-string v4, "injector: isSyncForbidden: null parameter, false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    :goto_0
    return v2

    .line 137
    :cond_2
    invoke-static {p1}, Lcom/android/server/content/SyncManagerInjector;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 138
    const-string v3, "SyncManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    const-string v3, "SyncManager"

    const-string v4, "injector: isSyncForbidden: not xiaomi account, false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :cond_3
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 145
    .local v1, "extras":Landroid/os/Bundle;
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

    .line 148
    :cond_5
    const-string v3, "SyncManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    const-string v3, "SyncManager"

    const-string v4, "injector: isSyncForbidden: init or ignore settings, false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_6
    iget v3, p1, Lcom/android/server/content/SyncOperation;->reason:I

    const/4 v4, -0x6

    if-ne v3, v4, :cond_7

    .line 155
    const-string v3, "SyncManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    const-string v3, "SyncManager"

    const-string v4, "injector: isSyncForbidden: sync for auto, false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_7
    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v0, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 162
    .local v0, "authority":Ljava/lang/String;
    const-string v3, "com.miui.gallery.cloud.provider"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 163
    const-string v3, "com.miui.gallery"

    invoke-static {p0, v3}, Lcom/android/server/content/SyncManagerInjector;->isPackageNameForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 164
    const-string v3, "SyncManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    const-string v3, "SyncManager"

    const-string v4, "injector: isSyncForbidden: gallery is foreground, false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :cond_8
    invoke-static {v0}, Lcom/android/server/content/SyncManagerInjector;->getSyncForbiddenStrategy(Ljava/lang/String;)Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;

    move-result-object v2

    invoke-interface {v2, p0, v0, p2}, Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;->isSyncForbidden(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method private static registerNetReachableIntentReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.networkReconnectToInternet"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.networkDisconnectFromInternet"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    return-void
.end method

.method private static setNetReachableStat(Z)V
    .locals 0
    .param p0, "netReachableStat"    # Z

    .prologue
    .line 70
    sput-boolean p0, Lcom/android/server/content/SyncManagerInjector;->mNetReachableStat:Z

    .line 71
    return-void
.end method
