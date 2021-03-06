.class Lcom/android/server/content/SyncManagerInjector$NetReachableIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncManagerInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManagerInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetReachableIntentReceiver"
.end annotation


# instance fields
.field private mSyncManager:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/content/SyncManagerInjector$NetReachableIntentReceiver;->mSyncManager:Lcom/android/server/content/SyncManager;

    iput-object p1, p0, Lcom/android/server/content/SyncManagerInjector$NetReachableIntentReceiver;->mSyncManager:Lcom/android/server/content/SyncManager;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const-wide/16 v6, 0x0

    const/4 v2, 0x3

    const/4 v10, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v0, "android.os.action.networkDisconnectFromInternet"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v10}, Lcom/android/server/content/SyncManagerInjector;->access$000(Z)V

    const-string v0, "SyncManager"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    const-string v2, "android.os.action.networkDisconnectFromInternet"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManagerInjector$NetReachableIntentReceiver;->mSyncManager:Lcom/android/server/content/SyncManager;

    sget-object v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "SyncManager"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SyncManager"

    const-string v2, "android.os.action.networkReconnectToInternet"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/content/SyncManagerInjector;->access$000(Z)V

    iget-object v0, p0, Lcom/android/server/content/SyncManagerInjector$NetReachableIntentReceiver;->mSyncManager:Lcom/android/server/content/SyncManager;

    const/4 v2, -0x1

    const/16 v3, -0x9

    move-object v4, v1

    move-object v5, v1

    move-wide v8, v6

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V

    goto :goto_0
.end method
