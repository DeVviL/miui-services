.class Lcom/android/server/content/SyncManager$SyncHandler;
.super Landroid/os/Handler;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;
    }
.end annotation


# static fields
.field private static final MESSAGE_CANCEL:I = 0x6

.field private static final MESSAGE_CHECK_ALARMS:I = 0x3

.field private static final MESSAGE_CHECK_ALARMS_DELAY:I = -0x1

.field private static final MESSAGE_SERVICE_CONNECTED:I = 0x4

.field private static final MESSAGE_SERVICE_DISCONNECTED:I = 0x5

.field private static final MESSAGE_SYNC_ALARM:I = 0x2

.field private static final MESSAGE_SYNC_EXPIRED:I = 0x7

.field private static final MESSAGE_SYNC_FINISHED:I = 0x1


# instance fields
.field private mAlarmScheduleTime:Ljava/lang/Long;

.field private mBootQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field public final mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

.field public final mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

.field private final mWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V
    .locals 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 2064
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 2065
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1989
    new-instance v0, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;-><init>(Lcom/android/server/content/SyncManager$SyncHandler;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    .line 1990
    iput-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 1991
    new-instance v0, Lcom/android/server/content/SyncManager$SyncTimeTracker;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncManager$SyncTimeTracker;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$1;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 1992
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    .line 1994
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mBootQueue:Ljava/util/List;

    .line 2066
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager$SyncHandler;
    .param p1, "x1"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 1977
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->getSyncWakeLock(Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/content/SyncManager$SyncHandler;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager$SyncHandler;

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    return-object v0
.end method

.method private cancelActiveSyncLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2854
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2856
    .local v1, "activeSyncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncManager$ActiveSyncContext;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2857
    .local v0, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-eqz v0, :cond_0

    .line 2858
    iget-object v4, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v4, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2860
    .local v3, "opInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2863
    if-eqz p2, :cond_1

    iget-object v4, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v4, v4, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-static {v4, p2, v5}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2869
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledLocked(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    goto :goto_0

    .line 2873
    .end local v0    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v3    # "opInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_2
    return-void
.end method

.method private closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 3
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    .line 2983
    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->close()V

    .line 2984
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2985
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    iget-object v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->removeActiveSync(Landroid/content/SyncInfo;I)V

    .line 2987
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0, p1}, Lcom/android/server/content/SyncManager;->access$4400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2988
    return-void
.end method

.method private dispatchSyncOperation(Lcom/android/server/content/SyncOperation;)Z
    .locals 13
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 2756
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2757
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchSyncOperation: we are going to sync "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "num active syncs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2760
    .local v11, "syncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string v2, "SyncManager"

    invoke-virtual {v11}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2766
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "syncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_0
    iget-object v8, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2767
    .local v8, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-boolean v2, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v2, :cond_4

    .line 2768
    iget-object v2, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v10

    .line 2771
    .local v10, "syncAdapterType":Landroid/content/SyncAdapterType;
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v3, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v2, v10, v3}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v9

    .line 2772
    .local v9, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v9, :cond_1

    .line 2773
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t find a sync adapter for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", removing settings for it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/server/content/SyncStorageEngine;->removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 2776
    const/4 v2, 0x0

    .line 2816
    .end local v9    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v10    # "syncAdapterType":Landroid/content/SyncAdapterType;
    :goto_1
    return v2

    .line 2778
    .restart local v9    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v10    # "syncAdapterType":Landroid/content/SyncAdapterType;
    :cond_1
    iget v6, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 2779
    .local v6, "targetUid":I
    iget-object v12, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 2796
    .end local v9    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v10    # "syncAdapterType":Landroid/content/SyncAdapterType;
    .local v12, "targetComponent":Landroid/content/ComponentName;
    :goto_2
    new-instance v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->insertStartSyncEvent(Lcom/android/server/content/SyncOperation;)J

    move-result-wide v4

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/content/SyncManager$ActiveSyncContext;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;JI)V

    .line 2798
    .local v1, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/content/SyncStorageEngine;->addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    .line 2799
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 2800
    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v2}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v2}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v2}, Lcom/android/server/content/SyncOperation;->isManual()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v2}, Lcom/android/server/content/SyncOperation;->isIgnoreSettings()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2805
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2, v1}, Lcom/android/server/content/SyncManager;->access$3900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2807
    :cond_2
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2808
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchSyncOperation: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    :cond_3
    iget v2, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v12, v2}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->bindToSyncAdapter(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2811
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bind attempt failed - target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2813
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2784
    .end local v1    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v6    # "targetUid":I
    .end local v12    # "targetComponent":Landroid/content/ComponentName;
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1400(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2788
    .restart local v6    # "targetUid":I
    iget-object v12, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v12    # "targetComponent":Landroid/content/ComponentName;
    goto/16 :goto_2

    .line 2789
    .end local v6    # "targetUid":I
    .end local v12    # "targetComponent":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 2790
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find a service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", removing settings for it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/server/content/SyncStorageEngine;->removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 2793
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2816
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .restart local v6    # "targetUid":I
    .restart local v12    # "targetComponent":Landroid/content/ComponentName;
    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method private getSyncWakeLock(Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;
    .locals 5
    .param p1, "operation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 2012
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v2

    .line 2013
    .local v2, "wakeLockKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    .line 2014
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    if-nez v1, :cond_0

    .line 2015
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*sync*/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2016
    .local v0, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$2200(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 2017
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2018
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2020
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;JI)V
    .locals 17
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "numDeletes"    # J
    .param p5, "userId"    # I

    .prologue
    .line 3194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$4300(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3236
    :cond_0
    :goto_0
    return-void

    .line 3196
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1400(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v12

    .line 3198
    .local v12, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-eqz v12, :cond_0

    .line 3201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1400(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 3203
    .local v8, "authorityName":Ljava/lang/CharSequence;
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1400(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/content/SyncActivityTooManyDeletes;

    invoke-direct {v4, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3204
    .local v4, "clickIntent":Landroid/content/Intent;
    const-string v2, "account"

    move-object/from16 v0, p1

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3205
    const-string v2, "authority"

    move-object/from16 v0, p2

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3206
    const-string v2, "provider"

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3207
    const-string v2, "numDeletes"

    move-wide/from16 v0, p3

    invoke-virtual {v4, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3209
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/content/SyncManager$SyncHandler;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3210
    const-string v2, "SyncManager"

    const-string v3, "No activity found to handle too many deletes."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3214
    :cond_2
    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, p5

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 3215
    .local v7, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1400(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 3219
    .local v11, "pendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1400(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10400e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 3222
    .local v13, "tooManyDeletesDescFormat":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2, v7}, Lcom/android/server/content/SyncManager;->access$5100(Lcom/android/server/content/SyncManager;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v9

    .line 3223
    .local v9, "contextForUser":Landroid/content/Context;
    new-instance v10, Landroid/app/Notification;

    const v2, 0x1080657

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$1400(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x10400e4

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v10, v2, v3, v14, v15}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 3227
    .local v10, "notification":Landroid/app/Notification;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v10, Landroid/app/Notification;->color:I

    .line 3229
    const v2, 0x10400e5

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v9, v2, v3, v11}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 3233
    iget v2, v10, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v10, Landroid/app/Notification;->flags:I

    .line 3234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$4300(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/accounts/Account;->hashCode()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v5, v6

    invoke-virtual {v2, v3, v5, v10, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0
.end method

.method private isActivityAvailable(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 3245
    iget-object v6, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v6}, Lcom/android/server/content/SyncManager;->access$1400(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3246
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 3247
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 3248
    .local v2, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3249
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 3250
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 3252
    const/4 v5, 0x1

    .line 3256
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return v5

    .line 3248
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isDispatchable(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 7
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    const/4 v2, 0x0

    .line 2213
    const-string v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 2214
    .local v1, "isLoggable":Z
    iget-boolean v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v3, :cond_4

    .line 2216
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$2500(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v0

    .line 2217
    .local v0, "accounts":[Landroid/accounts/AccountAndUser;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v3, v0, v4, v5}, Lcom/android/server/content/SyncManager;->access$2600(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2246
    .end local v0    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_0
    :goto_0
    return v2

    .line 2221
    .restart local v0    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_1
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v6, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2226
    :cond_2
    if-eqz v1, :cond_0

    .line 2227
    const-string v3, "SyncManager"

    const-string v4, "    Not scheduling periodic operation: sync turned off."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2231
    :cond_3
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v6, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .line 2233
    if-eqz v1, :cond_0

    .line 2234
    const-string v3, "SyncManager"

    const-string v4, "    Not scheduling periodic operation: isSyncable == 0."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2238
    .end local v0    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_4
    iget-boolean v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v3, :cond_5

    .line 2239
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    iget v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->getIsTargetServiceActive(Landroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2240
    if-eqz v1, :cond_0

    .line 2241
    const-string v3, "SyncManager"

    const-string v4, "   Not scheduling periodic operation: isEnabled == 0."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2246
    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isOperationValidLocked(Lcom/android/server/content/SyncOperation;)Z
    .locals 16
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 2652
    const-string v12, "SyncManager"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    .line 2655
    .local v4, "isLoggable":Z
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2656
    .local v9, "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v12}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v12

    iget v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v12, v13}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v8

    .line 2657
    .local v8, "syncEnabled":Z
    iget-boolean v12, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v12, :cond_9

    .line 2659
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v12}, Lcom/android/server/content/SyncManager;->access$2500(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v1

    .line 2660
    .local v1, "accounts":[Landroid/accounts/AccountAndUser;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v12, v1, v13, v14}, Lcom/android/server/content/SyncManager;->access$2600(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 2661
    if-eqz v4, :cond_0

    .line 2662
    const-string v12, "SyncManager"

    const-string v13, "    Dropping sync operation: account doesn\'t exist."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    :cond_0
    const/4 v12, 0x0

    .line 2752
    .end local v1    # "accounts":[Landroid/accounts/AccountAndUser;
    :goto_0
    return v12

    .line 2667
    .restart local v1    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v15, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v6

    .line 2668
    .local v6, "state":I
    if-nez v6, :cond_3

    .line 2669
    if-eqz v4, :cond_2

    .line 2670
    const-string v12, "SyncManager"

    const-string v13, "    Dropping sync operation: isSyncable == 0."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 2674
    :cond_3
    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v12}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v12

    iget-object v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v15, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v8, 0x1

    .line 2678
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v12, v12, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v14, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v13, v14}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v13

    iget v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v12, v13, v14}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v7

    .line 2681
    .local v7, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-eqz v7, :cond_7

    .line 2682
    iget v10, v7, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 2721
    .end local v1    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v7    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v10, "targetUid":I
    :goto_2
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v13, "ignore_settings"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_4

    if-gez v6, :cond_f

    :cond_4
    const/4 v3, 0x1

    .line 2726
    .local v3, "ignoreSystemConfiguration":Z
    :goto_3
    if-nez v8, :cond_10

    if-nez v3, :cond_10

    .line 2727
    if-eqz v4, :cond_5

    .line 2728
    const-string v12, "SyncManager"

    const-string v13, "    Dropping sync operation: disallowed by settings/network."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    :cond_5
    const/4 v12, 0x0

    goto :goto_0

    .line 2674
    .end local v3    # "ignoreSystemConfiguration":Z
    .end local v10    # "targetUid":I
    .restart local v1    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 2684
    .restart local v7    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_7
    if-eqz v4, :cond_8

    .line 2685
    const-string v12, "SyncManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    Dropping sync operation: No sync adapter registeredfor: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2690
    .end local v1    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v6    # "state":I
    .end local v7    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_9
    iget-boolean v12, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v12, :cond_e

    .line 2691
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v12}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v12

    iget-object v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    iget v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v12, v13, v14}, Lcom/android/server/content/SyncStorageEngine;->getIsTargetServiceActive(Landroid/content/ComponentName;I)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v6, 0x1

    .line 2693
    .restart local v6    # "state":I
    :goto_4
    if-nez v6, :cond_c

    .line 2695
    if-eqz v4, :cond_a

    .line 2696
    const-string v12, "SyncManager"

    const-string v13, "    Dropping sync operation: isActive == 0."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2691
    .end local v6    # "state":I
    :cond_b
    const/4 v6, 0x0

    goto :goto_4

    .line 2701
    .restart local v6    # "state":I
    :cond_c
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v12}, Lcom/android/server/content/SyncManager;->access$1400(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    iget-object v13, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v12, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v10    # "targetUid":I
    goto :goto_2

    .line 2705
    .end local v10    # "targetUid":I
    :catch_0
    move-exception v2

    .line 2706
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz v4, :cond_d

    .line 2707
    const-string v12, "SyncManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    Dropping sync operation: No service registered for: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2713
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "state":I
    :cond_e
    const-string v12, "SyncManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown target for Sync Op: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2721
    .restart local v6    # "state":I
    .restart local v10    # "targetUid":I
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 2733
    .restart local v3    # "ignoreSystemConfiguration":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v12}, Lcom/android/server/content/SyncManager;->access$3800(Lcom/android/server/content/SyncManager;)Landroid/net/ConnectivityManager;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/net/ConnectivityManager;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 2735
    .local v5, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_12

    const/4 v11, 0x1

    .line 2736
    .local v11, "uidNetworkConnected":Z
    :goto_5
    if-nez v11, :cond_13

    if-nez v3, :cond_13

    .line 2737
    if-eqz v4, :cond_11

    .line 2738
    const-string v12, "SyncManager"

    const-string v13, "    Dropping sync operation: disallowed by settings/network."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2735
    .end local v11    # "uidNetworkConnected":Z
    :cond_12
    const/4 v11, 0x0

    goto :goto_5

    .line 2743
    .restart local v11    # "uidNetworkConnected":Z
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isNotAllowedOnMetered()Z

    move-result v12

    if-eqz v12, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v12}, Lcom/android/server/content/SyncManager;->access$3800(Lcom/android/server/content/SyncManager;)Landroid/net/ConnectivityManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v12

    if-eqz v12, :cond_15

    if-nez v3, :cond_15

    .line 2745
    if-eqz v4, :cond_14

    .line 2746
    const-string v12, "SyncManager"

    const-string v13, "    Dropping sync operation: not allowed on metered network."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    :cond_14
    invoke-static/range {p1 .. p1}, Lcom/android/server/content/SyncManagerInjector;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v12

    if-nez v12, :cond_15

    .line 2749
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2752
    :cond_15
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method private manageSyncAlarmLocked(JJ)V
    .locals 27
    .param p1, "nextPeriodicEventElapsedTime"    # J
    .param p3, "nextPendingEventElapsedTime"    # J

    .prologue
    .line 3084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/content/SyncManager;->access$300(Lcom/android/server/content/SyncManager;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 3182
    :cond_0
    :goto_0
    return-void

    .line 3085
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/content/SyncManager;->access$000(Lcom/android/server/content/SyncManager;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 3087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/content/SyncManager;->access$4700(Lcom/android/server/content/SyncManager;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 3091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/content/SyncManager;->access$200(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/content/SyncManager;->access$200(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/content/SyncManager;->access$200(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static {}, Lcom/android/server/content/SyncManager;->access$4500()J

    move-result-wide v22

    add-long v14, v20, v22

    .line 3098
    .local v14, "notificationTime":J
    :goto_1
    invoke-static {}, Lcom/android/server/content/SyncManagerInjector;->isNetReachable()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 3101
    const-wide v10, 0x7fffffffffffffffL

    .line 3102
    .local v10, "earliestTimeoutTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3103
    .local v5, "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-wide v0, v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    move-wide/from16 v20, v0

    invoke-static {}, Lcom/android/server/content/SyncManager;->access$3500()J

    move-result-wide v22

    add-long v8, v20, v22

    .line 3105
    .local v8, "currentSyncTimeoutTime":J
    const-string v20, "SyncManager"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 3106
    const-string v20, "SyncManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "manageSyncAlarm: active sync, mTimeoutStartTime + MAX is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    :cond_3
    cmp-long v20, v10, v8

    if-lez v20, :cond_2

    .line 3110
    move-wide v10, v8

    goto :goto_2

    .line 3091
    .end local v5    # "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v8    # "currentSyncTimeoutTime":J
    .end local v10    # "earliestTimeoutTime":J
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "notificationTime":J
    :cond_4
    const-wide v14, 0x7fffffffffffffffL

    goto :goto_1

    .line 3114
    .restart local v10    # "earliestTimeoutTime":J
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v14    # "notificationTime":J
    :cond_5
    const-string v20, "SyncManager"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 3115
    const-string v20, "SyncManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "manageSyncAlarm: notificationTime is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    :cond_6
    const-string v20, "SyncManager"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 3119
    const-string v20, "SyncManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "manageSyncAlarm: earliestTimeoutTime is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    :cond_7
    const-string v20, "SyncManager"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 3123
    const-string v20, "SyncManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "manageSyncAlarm: nextPeriodicEventElapsedTime is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    :cond_8
    const-string v20, "SyncManager"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 3127
    const-string v20, "SyncManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "manageSyncAlarm: nextPendingEventElapsedTime is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    :cond_9
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 3132
    .local v6, "alarmTime":J
    move-wide/from16 v0, p1

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 3133
    move-wide/from16 v0, p3

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 3136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 3137
    .local v16, "now":J
    const-wide/16 v20, 0x7530

    add-long v20, v20, v16

    cmp-long v20, v6, v20

    if-gez v20, :cond_f

    .line 3138
    const-string v20, "SyncManager"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 3139
    const-string v20, "SyncManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "manageSyncAlarm: the alarmTime is too small, "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", setting to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-wide/16 v22, 0x7530

    add-long v22, v22, v16

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    :cond_a
    const-wide/16 v20, 0x7530

    add-long v6, v16, v20

    .line 3152
    :cond_b
    :goto_3
    const/16 v19, 0x0

    .line 3153
    .local v19, "shouldSet":Z
    const/16 v18, 0x0

    .line 3154
    .local v18, "shouldCancel":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v20, v16, v20

    if-gez v20, :cond_11

    const/4 v4, 0x1

    .line 3155
    .local v4, "alarmIsActive":Z
    :goto_4
    const-wide v20, 0x7fffffffffffffffL

    cmp-long v20, v6, v20

    if-eqz v20, :cond_12

    const/4 v13, 0x1

    .line 3156
    .local v13, "needAlarm":Z
    :goto_5
    if-eqz v13, :cond_13

    .line 3160
    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v20, v6, v20

    if-gez v20, :cond_d

    .line 3161
    :cond_c
    const/16 v19, 0x1

    .line 3168
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/content/SyncManager;->access$4800(Lcom/android/server/content/SyncManager;)V

    .line 3169
    if-eqz v19, :cond_14

    .line 3170
    const-string v20, "SyncManager"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 3171
    const-string v20, "SyncManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "requesting that the alarm manager wake us up at elapsed time "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", now is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v6, v16

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " secs from now"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    :cond_e
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 3176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/content/SyncManager;->access$5000(Lcom/android/server/content/SyncManager;)Landroid/app/AlarmManager;

    move-result-object v20

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/content/SyncManager;->access$4900(Lcom/android/server/content/SyncManager;)Landroid/app/PendingIntent;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 3143
    .end local v4    # "alarmIsActive":Z
    .end local v13    # "needAlarm":Z
    .end local v18    # "shouldCancel":Z
    .end local v19    # "shouldSet":Z
    :cond_f
    const-wide/32 v20, 0x6ddd00

    add-long v20, v20, v16

    cmp-long v20, v6, v20

    if-lez v20, :cond_b

    .line 3144
    const-string v20, "SyncManager"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 3145
    const-string v20, "SyncManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "manageSyncAlarm: the alarmTime is too large, "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", setting to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-wide/16 v22, 0x7530

    add-long v22, v22, v16

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    :cond_10
    const-wide/32 v20, 0x6ddd00

    add-long v6, v16, v20

    goto/16 :goto_3

    .line 3154
    .restart local v18    # "shouldCancel":Z
    .restart local v19    # "shouldSet":Z
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 3155
    .restart local v4    # "alarmIsActive":Z
    :cond_12
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 3164
    .restart local v13    # "needAlarm":Z
    :cond_13
    move/from16 v18, v4

    goto/16 :goto_6

    .line 3178
    :cond_14
    if-eqz v18, :cond_0

    .line 3179
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 3180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/content/SyncManager;->access$5000(Lcom/android/server/content/SyncManager;)Landroid/app/AlarmManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/content/SyncManager;->access$4900(Lcom/android/server/content/SyncManager;)Landroid/app/PendingIntent;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method private manageSyncNotificationLocked()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3023
    iget-object v10, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v10, v10, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3024
    iget-object v10, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    .line 3028
    iget-object v10, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-boolean v3, v10, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    .line 3029
    .local v3, "shouldCancel":Z
    const/4 v6, 0x0

    .line 3067
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    if-nez v6, :cond_1

    .line 3068
    iget-object v10, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v10, v9}, Lcom/android/server/content/SyncManager;->access$4602(Lcom/android/server/content/SyncManager;Z)Z

    .line 3069
    invoke-direct {p0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendSyncStateIntent()V

    .line 3070
    iget-object v10, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iput-boolean v9, v10, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    .line 3073
    :cond_1
    if-eqz v6, :cond_2

    .line 3074
    iget-object v9, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v9, v8}, Lcom/android/server/content/SyncManager;->access$4602(Lcom/android/server/content/SyncManager;Z)Z

    .line 3075
    invoke-direct {p0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendSyncStateIntent()V

    .line 3076
    iget-object v9, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iput-boolean v8, v9, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    .line 3078
    :cond_2
    return-void

    .line 3032
    .end local v3    # "shouldCancel":Z
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3033
    .local v4, "now":J
    iget-object v10, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-object v10, v10, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    if-nez v10, :cond_4

    .line 3034
    iget-object v10, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v10, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    .line 3042
    :cond_4
    iget-object v10, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-boolean v10, v10, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    if-eqz v10, :cond_5

    .line 3043
    const/4 v3, 0x0

    .restart local v3    # "shouldCancel":Z
    move v6, v3

    .local v6, "shouldInstall":I
    goto :goto_0

    .line 3046
    .end local v3    # "shouldCancel":Z
    .end local v6    # "shouldInstall":I
    :cond_5
    const/4 v3, 0x0

    .line 3048
    .restart local v3    # "shouldCancel":Z
    iget-object v10, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-object v10, v10, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {}, Lcom/android/server/content/SyncManager;->access$4500()J

    move-result-wide v12

    add-long/2addr v10, v12

    cmp-long v10, v4, v10

    if-lez v10, :cond_6

    move v7, v8

    .line 3050
    .local v7, "timeToShowNotification":Z
    :goto_1
    if-eqz v7, :cond_7

    .line 3051
    const/4 v6, 0x1

    .local v6, "shouldInstall":Z
    goto :goto_0

    .end local v6    # "shouldInstall":Z
    .end local v7    # "timeToShowNotification":Z
    :cond_6
    move v7, v9

    .line 3048
    goto :goto_1

    .line 3054
    .restart local v7    # "timeToShowNotification":Z
    :cond_7
    const/4 v6, 0x0

    .line 3055
    .restart local v6    # "shouldInstall":Z
    iget-object v10, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v10, v10, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3056
    .local v0, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v10, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v10, v10, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v11, "force"

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3058
    .local v2, "manualSync":Z
    if-eqz v2, :cond_8

    .line 3059
    const/4 v6, 0x1

    .line 3060
    goto :goto_0
.end method

.method private maybeStartNextSyncLocked()J
    .locals 36

    .prologue
    .line 2394
    const-string v30, "SyncManager"

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    .line 2395
    .local v13, "isLoggable":Z
    if-eqz v13, :cond_0

    const-string v30, "SyncManager"

    const-string v31, "maybeStartNextSync"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/content/SyncManager;->access$300(Lcom/android/server/content/SyncManager;)Z

    move-result v30

    if-nez v30, :cond_3

    .line 2399
    if-eqz v13, :cond_1

    .line 2400
    const-string v30, "SyncManager"

    const-string v31, "maybeStartNextSync: no data connection, skipping"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    :cond_1
    const-wide v16, 0x7fffffffffffffffL

    .line 2643
    :cond_2
    :goto_0
    return-wide v16

    .line 2405
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/content/SyncManager;->access$000(Lcom/android/server/content/SyncManager;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 2406
    if-eqz v13, :cond_4

    .line 2407
    const-string v30, "SyncManager"

    const-string v31, "maybeStartNextSync: memory low, skipping"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    :cond_4
    const-wide v16, 0x7fffffffffffffffL

    goto :goto_0

    .line 2413
    :cond_5
    invoke-static {}, Lcom/android/server/content/SyncManagerInjector;->isNetReachable()Z

    move-result v30

    if-nez v30, :cond_7

    .line 2414
    if-eqz v13, :cond_6

    .line 2415
    const-string v30, "SyncManager"

    const-string v31, "maybeStartNextSync: device is not net reachable, skipping"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    :cond_6
    const-wide v16, 0x7fffffffffffffffL

    goto :goto_0

    .line 2423
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/content/SyncManager;->access$2500(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v30

    invoke-static {}, Lcom/android/server/content/SyncManager;->access$2800()[Landroid/accounts/AccountAndUser;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 2424
    if-eqz v13, :cond_8

    .line 2425
    const-string v30, "SyncManager"

    const-string v31, "maybeStartNextSync: accounts not known, skipping"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    :cond_8
    const-wide v16, 0x7fffffffffffffffL

    goto :goto_0

    .line 2433
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 2436
    .local v18, "now":J
    const-wide v16, 0x7fffffffffffffffL

    .line 2439
    .local v16, "nextReadyToRunTime":J
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 2440
    .local v24, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncOperation;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/content/SyncManager;->access$500(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    move-result-object v31

    monitor-enter v31

    .line 2441
    if-eqz v13, :cond_a

    .line 2442
    :try_start_0
    const-string v30, "SyncManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "build the operation array, syncQueue size is "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager;->access$500(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/content/SyncQueue;->getOperations()Ljava/util/Collection;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Collection;->size()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/content/SyncManager;->access$500(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/content/SyncQueue;->getOperations()Ljava/util/Collection;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 2448
    .local v23, "operationIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncOperation;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/content/SyncManager;->access$1400(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v30

    const-string v32, "activity"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 2450
    .local v7, "activityManager":Landroid/app/ActivityManager;
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v25

    .line 2451
    .local v25, "removedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_b
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_12

    .line 2452
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/content/SyncOperation;

    .line 2455
    .local v22, "op":Lcom/android/server/content/SyncOperation;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v30

    if-nez v30, :cond_d

    .line 2456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;)Landroid/os/UserManager;

    move-result-object v30

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v32, v0

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v29

    .line 2457
    .local v29, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v29, :cond_c

    .line 2458
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2460
    :cond_c
    if-eqz v13, :cond_b

    .line 2461
    const-string v30, "SyncManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "    Dropping all sync operations for + "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ": user not running."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2520
    .end local v7    # "activityManager":Landroid/app/ActivityManager;
    .end local v22    # "op":Lcom/android/server/content/SyncOperation;
    .end local v23    # "operationIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncOperation;>;"
    .end local v25    # "removedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v29    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v30

    monitor-exit v31
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v30

    .line 2466
    .restart local v7    # "activityManager":Landroid/app/ActivityManager;
    .restart local v22    # "op":Lcom/android/server/content/SyncOperation;
    .restart local v23    # "operationIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncOperation;>;"
    .restart local v25    # "removedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->isOperationValidLocked(Lcom/android/server/content/SyncOperation;)Z

    move-result v30

    if-nez v30, :cond_e

    .line 2467
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->remove()V

    .line 2468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v30

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->deleteFromPending(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    goto/16 :goto_1

    .line 2473
    :cond_e
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->flexTime:J

    move-wide/from16 v34, v0

    sub-long v32, v32, v34

    cmp-long v30, v32, v18

    if-lez v30, :cond_10

    .line 2474
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    move-wide/from16 v32, v0

    cmp-long v30, v16, v32

    if-lez v30, :cond_f

    .line 2475
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    move-wide/from16 v16, v0

    .line 2477
    :cond_f
    if-eqz v13, :cond_b

    .line 2478
    const-string v30, "SyncManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "    Not running sync operation: Sync too far in future.effective: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " flex: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/content/SyncOperation;->flexTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " now: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2486
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)Z

    move-result v30

    if-nez v30, :cond_b

    .line 2490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$3100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)Z

    move-result v30

    if-nez v30, :cond_b

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$3200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)Z

    move-result v30

    if-nez v30, :cond_b

    .line 2498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$3300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)Z

    move-result v30

    if-nez v30, :cond_b

    .line 2502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/content/SyncManager;->access$1400(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$3400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)Landroid/os/Bundle;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/android/server/content/SyncManagerInjector;->isSyncForbidden(Landroid/content/Context;Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;)Z

    move-result v30

    if-eqz v30, :cond_11

    .line 2503
    if-eqz v13, :cond_b

    .line 2504
    const-string v30, "SyncManager"

    const-string v32, "Sync is forbidden by Injector"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2511
    :cond_11
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2514
    .end local v22    # "op":Lcom/android/server/content/SyncOperation;
    :cond_12
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_14

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    .line 2516
    .local v28, "user":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;)Landroid/os/UserManager;

    move-result-object v30

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v30

    if-nez v30, :cond_13

    .line 2517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;I)V

    goto :goto_2

    .line 2520
    .end local v28    # "user":Ljava/lang/Integer;
    :cond_14
    monitor-exit v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2527
    if-eqz v13, :cond_15

    const-string v30, "SyncManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "sort the candidate operations, size "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    :cond_15
    invoke-static/range {v24 .. v24}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2529
    if-eqz v13, :cond_16

    const-string v30, "SyncManager"

    const-string v31, "dispatch all ready sync operations"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    :cond_16
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "N":I
    :goto_3
    if-ge v11, v4, :cond_2

    .line 2531
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncOperation;

    .line 2532
    .local v8, "candidate":Lcom/android/server/content/SyncOperation;
    invoke-virtual {v8}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v9

    .line 2534
    .local v9, "candidateIsInitialization":Z
    const/4 v15, 0x0

    .line 2535
    .local v15, "numInit":I
    const/16 v20, 0x0

    .line 2536
    .local v20, "numRegular":I
    const/4 v10, 0x0

    .line 2537
    .local v10, "conflict":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const/4 v14, 0x0

    .line 2538
    .local v14, "longRunning":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const/16 v27, 0x0

    .line 2539
    .local v27, "toReschedule":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const/16 v21, 0x0

    .line 2542
    .local v21, "oldestNonExpeditedRegular":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    invoke-static {}, Lcom/android/server/content/SyncManagerInjector;->clearSyncNum()V

    .line 2545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_1c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2546
    .local v6, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v5, v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 2547
    .local v5, "activeOp":Lcom/android/server/content/SyncOperation;
    invoke-virtual {v5}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v30

    if-eqz v30, :cond_19

    .line 2548
    add-int/lit8 v15, v15, 0x1

    .line 2559
    :cond_17
    :goto_5
    invoke-virtual {v5, v8}, Lcom/android/server/content/SyncOperation;->isConflict(Lcom/android/server/content/SyncOperation;)Z

    move-result v30

    if-eqz v30, :cond_1b

    .line 2560
    move-object v10, v6

    .line 2570
    :cond_18
    :goto_6
    invoke-static {v5}, Lcom/android/server/content/SyncManagerInjector;->countSyncOperation(Lcom/android/server/content/SyncOperation;)V

    goto :goto_4

    .line 2550
    :cond_19
    add-int/lit8 v20, v20, 0x1

    .line 2551
    invoke-virtual {v5}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v30

    if-nez v30, :cond_17

    .line 2552
    if-eqz v21, :cond_1a

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-wide/from16 v30, v0

    iget-wide v0, v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-wide/from16 v32, v0

    cmp-long v30, v30, v32

    if-lez v30, :cond_17

    .line 2555
    :cond_1a
    move-object/from16 v21, v6

    goto :goto_5

    .line 2563
    :cond_1b
    invoke-virtual {v5}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v30

    move/from16 v0, v30

    if-ne v9, v0, :cond_18

    iget-wide v0, v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-wide/from16 v30, v0

    invoke-static {}, Lcom/android/server/content/SyncManager;->access$3500()J

    move-result-wide v32

    add-long v30, v30, v32

    cmp-long v30, v30, v18

    if-gez v30, :cond_18

    .line 2565
    move-object v14, v6

    goto :goto_6

    .line 2574
    .end local v5    # "activeOp":Lcom/android/server/content/SyncOperation;
    .end local v6    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_1c
    if-eqz v13, :cond_1d

    .line 2575
    const-string v30, "SyncManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "candidate "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    add-int/lit8 v32, v11, 0x1

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " of "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ": "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    const-string v30, "SyncManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "  numActiveInit="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", numActiveRegular="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    const-string v30, "SyncManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "  longRunning: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    const-string v30, "SyncManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "  conflict: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    const-string v30, "SyncManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "  oldestNonExpeditedRegular: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    :cond_1d
    if-eqz v9, :cond_22

    invoke-static {}, Lcom/android/server/content/SyncManager;->access$3600()I

    move-result v30

    move/from16 v0, v30

    if-ge v15, v0, :cond_21

    const/16 v26, 0x1

    .line 2586
    .local v26, "roomAvailable":Z
    :goto_7
    if-eqz v10, :cond_25

    .line 2587
    if-eqz v9, :cond_24

    iget-object v0, v10, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v30

    if-nez v30, :cond_24

    invoke-static {}, Lcom/android/server/content/SyncManager;->access$3600()I

    move-result v30

    move/from16 v0, v30

    if-ge v15, v0, :cond_24

    .line 2589
    move-object/from16 v27, v10

    .line 2590
    const-string v30, "SyncManager"

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v30

    if-eqz v30, :cond_1e

    .line 2591
    const-string v30, "SyncManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "canceling and rescheduling sync since an initialization takes higher priority, "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    :cond_1e
    :goto_8
    if-eqz v27, :cond_1f

    .line 2634
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledLocked(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    .line 2637
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/content/SyncManager;->access$500(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    move-result-object v31

    monitor-enter v31

    .line 2638
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/content/SyncManager;->access$500(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Lcom/android/server/content/SyncQueue;->remove(Lcom/android/server/content/SyncOperation;)V

    .line 2639
    monitor-exit v31
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2640
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/content/SyncManager$SyncHandler;->dispatchSyncOperation(Lcom/android/server/content/SyncOperation;)Z

    .line 2530
    :cond_20
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 2582
    .end local v26    # "roomAvailable":Z
    :cond_21
    const/16 v26, 0x0

    goto :goto_7

    :cond_22
    invoke-static {}, Lcom/android/server/content/SyncManager;->access$3700()I

    move-result v30

    move/from16 v0, v20

    move/from16 v1, v30

    if-ge v0, v1, :cond_23

    const/16 v26, 0x1

    goto/16 :goto_7

    :cond_23
    const/16 v26, 0x0

    goto/16 :goto_7

    .line 2594
    .restart local v26    # "roomAvailable":Z
    :cond_24
    invoke-virtual {v8}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v30

    if-eqz v30, :cond_20

    iget-object v0, v10, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v30

    if-nez v30, :cond_20

    iget-object v0, v10, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v30

    move/from16 v0, v30

    if-ne v9, v0, :cond_20

    .line 2597
    move-object/from16 v27, v10

    .line 2598
    const-string v30, "SyncManager"

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v30

    if-eqz v30, :cond_1e

    .line 2599
    const-string v30, "SyncManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "canceling and rescheduling sync since an expedited takes higher priority, "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2605
    :cond_25
    if-eqz v26, :cond_26

    invoke-static {v8}, Lcom/android/server/content/SyncManagerInjector;->isRoomAvailable(Lcom/android/server/content/SyncOperation;)Z

    move-result v30

    if-nez v30, :cond_1e

    .line 2607
    :cond_26
    invoke-virtual {v8}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v30

    if-eqz v30, :cond_27

    if-eqz v21, :cond_27

    if-nez v9, :cond_27

    .line 2612
    move-object/from16 v27, v21

    .line 2613
    const-string v30, "SyncManager"

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v30

    if-eqz v30, :cond_1e

    .line 2614
    const-string v30, "SyncManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "canceling and rescheduling sync since an expedited is ready to run, "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2617
    :cond_27
    if-eqz v14, :cond_20

    iget-object v0, v14, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v30

    move/from16 v0, v30

    if-ne v9, v0, :cond_20

    .line 2622
    move-object/from16 v27, v14

    .line 2623
    const-string v30, "SyncManager"

    const/16 v31, 0x2

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v30

    if-eqz v30, :cond_1e

    .line 2624
    const-string v30, "SyncManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "canceling and rescheduling sync since it ran roo long, "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2639
    :catchall_1
    move-exception v30

    :try_start_3
    monitor-exit v31
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v30
.end method

.method private runBoundToAdapter(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "syncAdapter"    # Landroid/os/IBinder;

    .prologue
    .line 2821
    iget-object v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 2823
    .local v2, "syncOperation":Lcom/android/server/content/SyncOperation;
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 2824
    const/4 v3, 0x0

    invoke-interface {p2, p1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2826
    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v3, :cond_1

    .line 2827
    invoke-static {p2}, Landroid/content/ISyncAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncAdapter;

    move-result-object v3

    iput-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 2828
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v6, v2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-interface {v3, p1, v4, v5, v6}, Landroid/content/ISyncAdapter;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 2847
    :cond_0
    :goto_0
    return-void

    .line 2831
    :cond_1
    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v3, :cond_0

    .line 2832
    invoke-static {p2}, Landroid/content/ISyncServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncServiceAdapter;

    move-result-object v3

    iput-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    .line 2834
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-interface {v3, p1, v4}, Landroid/content/ISyncServiceAdapter;->startSync(Landroid/content/ISyncContext;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2837
    :catch_0
    move-exception v1

    .line 2838
    .local v1, "remoteExc":Landroid/os/RemoteException;
    const-string v3, "SyncManager"

    const-string v4, "maybeStartNextSync: caught a RemoteException, rescheduling"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2839
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2840
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3, v2}, Lcom/android/server/content/SyncManager;->access$4000(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 2841
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    new-instance v4, Lcom/android/server/content/SyncOperation;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v2, v6, v7}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncOperation;J)V

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    goto :goto_0

    .line 2843
    .end local v1    # "remoteExc":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2844
    .local v0, "exc":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2845
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught RuntimeException while starting the sync "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private runSyncFinishedOrCanceledLocked(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 30
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    .line 2877
    const-string v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v29

    .line 2879
    .local v29, "isLoggable":Z
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 2880
    .local v6, "syncOperation":Lcom/android/server/content/SyncOperation;
    iget-object v2, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2882
    .local v2, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    if-eqz v3, :cond_0

    .line 2883
    iget-boolean v3, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v3, :cond_3

    .line 2884
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v3}, Landroid/content/ISyncAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2889
    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, p2

    iput-boolean v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 2891
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2892
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    sub-long v10, v4, v12

    .line 2896
    .local v10, "elapsedTime":J
    if-eqz p1, :cond_5

    .line 2897
    if-eqz v29, :cond_1

    .line 2898
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runSyncFinishedOrCanceled [finished]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasError()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2903
    const-string v7, "success"

    .line 2907
    .local v7, "historyMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {v3, v6}, Lcom/android/server/content/SyncManager;->removeIgnoreSettingsFlag(Lcom/android/server/content/SyncOperation;)V

    .line 2909
    const/4 v9, 0x0

    .line 2910
    .local v9, "downstreamActivity":I
    const/4 v8, 0x0

    .line 2911
    .local v8, "upstreamActivity":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3, v6}, Lcom/android/server/content/SyncManager;->access$4100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 2924
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/content/SyncResult;->delayUntil:J

    invoke-static {v3, v6, v4, v5}, Lcom/android/server/content/SyncManager;->access$4200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    .line 2947
    :goto_2
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/content/SyncManager$SyncHandler;->stopSyncEvent(JLcom/android/server/content/SyncOperation;Ljava/lang/String;IIJ)V

    .line 2950
    iget-boolean v3, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v3, :cond_a

    .line 2951
    if-eqz p1, :cond_9

    move-object/from16 v0, p1

    iget-boolean v3, v0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v3, :cond_9

    .line 2952
    iget-object v14, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v15, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v3, Landroid/content/SyncStats;->numDeletes:J

    move-wide/from16 v16, v0

    iget v0, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v18, v0

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v18}, Lcom/android/server/content/SyncManager$SyncHandler;->installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;JI)V

    .line 2960
    :goto_3
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget-boolean v3, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v3, :cond_2

    .line 2961
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    new-instance v13, Lcom/android/server/content/SyncOperation;

    iget-object v14, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v15, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget v0, v6, Lcom/android/server/content/SyncOperation;->reason:I

    move/from16 v16, v0

    iget v0, v6, Lcom/android/server/content/SyncOperation;->syncSource:I

    move/from16 v17, v0

    iget-object v0, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    iget-wide v0, v6, Lcom/android/server/content/SyncOperation;->backoff:J

    move-wide/from16 v24, v0

    iget-wide v0, v6, Lcom/android/server/content/SyncOperation;->delayUntil:J

    move-wide/from16 v26, v0

    iget-boolean v0, v6, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    move/from16 v28, v0

    invoke-direct/range {v13 .. v28}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJJZ)V

    invoke-virtual {v3, v13}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    .line 2980
    :cond_2
    :goto_4
    return-void

    .line 2886
    .end local v7    # "historyMessage":Ljava/lang/String;
    .end local v8    # "upstreamActivity":I
    .end local v9    # "downstreamActivity":I
    .end local v10    # "elapsedTime":J
    :cond_3
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    invoke-interface {v3}, Landroid/content/ISyncServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto/16 :goto_0

    .line 2913
    .restart local v10    # "elapsedTime":J
    :cond_4
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed sync operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3, v6}, Lcom/android/server/content/SyncManager;->access$4000(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 2917
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v6}, Lcom/android/server/content/SyncManager;->maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V

    .line 2918
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->syncResultToErrorNumber(Landroid/content/SyncResult;)I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->syncErrorToString(I)Ljava/lang/String;

    move-result-object v7

    .line 2921
    .restart local v7    # "historyMessage":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2922
    .restart local v9    # "downstreamActivity":I
    const/4 v8, 0x0

    .restart local v8    # "upstreamActivity":I
    goto/16 :goto_1

    .line 2926
    .end local v7    # "historyMessage":Ljava/lang/String;
    .end local v8    # "upstreamActivity":I
    .end local v9    # "downstreamActivity":I
    :cond_5
    if-eqz v29, :cond_6

    .line 2927
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runSyncFinishedOrCanceled [canceled]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    :cond_6
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    if-eqz v3, :cond_8

    .line 2931
    :try_start_0
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2942
    :cond_7
    :goto_5
    const-string v7, "canceled"

    .line 2943
    .restart local v7    # "historyMessage":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2944
    .restart local v9    # "downstreamActivity":I
    const/4 v8, 0x0

    .restart local v8    # "upstreamActivity":I
    goto/16 :goto_2

    .line 2935
    .end local v7    # "historyMessage":Ljava/lang/String;
    .end local v8    # "upstreamActivity":I
    .end local v9    # "downstreamActivity":I
    :cond_8
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    if-eqz v3, :cond_7

    .line 2937
    :try_start_1
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/content/ISyncServiceAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 2938
    :catch_0
    move-exception v3

    goto :goto_5

    .line 2956
    .restart local v7    # "historyMessage":Ljava/lang/String;
    .restart local v8    # "upstreamActivity":I
    .restart local v9    # "downstreamActivity":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$4300(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v5}, Landroid/accounts/Account;->hashCode()I

    move-result v5

    iget-object v12, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v12

    xor-int/2addr v5, v12

    new-instance v12, Landroid/os/UserHandle;

    iget v13, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v4, v5, v12}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_3

    .line 2970
    :cond_a
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget-boolean v3, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v3, :cond_2

    .line 2971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    new-instance v12, Lcom/android/server/content/SyncOperation;

    iget-object v13, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    iget v14, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget v15, v6, Lcom/android/server/content/SyncOperation;->reason:I

    iget v0, v6, Lcom/android/server/content/SyncOperation;->syncSource:I

    move/from16 v16, v0

    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    iget-wide v0, v6, Lcom/android/server/content/SyncOperation;->backoff:J

    move-wide/from16 v22, v0

    iget-wide v0, v6, Lcom/android/server/content/SyncOperation;->delayUntil:J

    move-wide/from16 v24, v0

    invoke-direct/range {v12 .. v25}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/content/ComponentName;IIILandroid/os/Bundle;JJJJ)V

    invoke-virtual {v3, v12}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    goto/16 :goto_4

    .line 2932
    .end local v7    # "historyMessage":Ljava/lang/String;
    .end local v8    # "upstreamActivity":I
    .end local v9    # "downstreamActivity":I
    :catch_1
    move-exception v3

    goto :goto_5
.end method

.method private scheduleReadyPeriodicSyncs()J
    .locals 50

    .prologue
    .line 2255
    const-string v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v28

    .line 2256
    .local v28, "isLoggable":Z
    if-eqz v28, :cond_0

    .line 2257
    const-string v3, "SyncManager"

    const-string v4, "scheduleReadyPeriodicSyncs"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    :cond_0
    const-wide v22, 0x7fffffffffffffffL

    .line 2261
    .local v22, "earliestFuturePollTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 2262
    .local v34, "nowAbsolute":J
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;)I

    move-result v3

    int-to-long v6, v3

    sub-long v6, v34, v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;)I

    move-result v3

    int-to-long v4, v3

    sub-long v42, v34, v4

    .line 2265
    .local v42, "shiftedNowAbsolute":J
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/content/SyncStorageEngine;->getCopyOfAllAuthoritiesWithSyncStatus()Ljava/util/ArrayList;

    move-result-object v27

    .line 2267
    .local v27, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/util/Pair;

    .line 2268
    .local v26, "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2269
    .local v19, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/content/SyncStatusInfo;

    .line 2271
    .local v39, "status":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2272
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got an empty provider string. Skipping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2262
    .end local v19    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .end local v27    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;>;"
    .end local v39    # "status":Landroid/content/SyncStatusInfo;
    .end local v42    # "shiftedNowAbsolute":J
    :cond_2
    const-wide/16 v42, 0x0

    goto :goto_0

    .line 2277
    .restart local v19    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v25    # "i$":Ljava/util/Iterator;
    .restart local v26    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .restart local v27    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v39    # "status":Landroid/content/SyncStatusInfo;
    .restart local v42    # "shiftedNowAbsolute":J
    :cond_3
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->isDispatchable(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2281
    const/16 v24, 0x0

    .local v24, "i":I
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "N":I
    :goto_2
    move/from16 v0, v24

    if-ge v0, v2, :cond_1

    .line 2282
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/content/PeriodicSync;

    .line 2283
    .local v44, "sync":Landroid/content/PeriodicSync;
    move-object/from16 v0, v44

    iget-object v9, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    .line 2284
    .local v9, "extras":Landroid/os/Bundle;
    move-object/from16 v0, v44

    iget-wide v4, v0, Landroid/content/PeriodicSync;->period:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    .line 2285
    .local v29, "periodInMillis":Ljava/lang/Long;
    move-object/from16 v0, v44

    iget-wide v4, v0, Landroid/content/PeriodicSync;->flexTime:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 2287
    .local v21, "flexInMillis":Ljava/lang/Long;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_5

    .line 2281
    :cond_4
    :goto_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 2291
    :cond_5
    move-object/from16 v0, v39

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTime(I)J

    move-result-wide v30

    .line 2292
    .local v30, "lastPollTimeAbsolute":J
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;)I

    move-result v3

    int-to-long v6, v3

    sub-long v6, v30, v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;)I

    move-result v3

    int-to-long v4, v3

    sub-long v40, v30, v4

    .line 2295
    .local v40, "shiftedLastPollTimeAbsolute":J
    :goto_4
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    rem-long v6, v42, v6

    sub-long v36, v4, v6

    .line 2297
    .local v36, "remainingMillis":J
    sub-long v48, v34, v30

    .line 2302
    .local v48, "timeSinceLastRunMillis":J
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v36, v4

    if-gtz v3, :cond_a

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v3, v48, v4

    if-lez v3, :cond_a

    const/16 v38, 0x1

    .line 2304
    .local v38, "runEarly":Z
    :goto_5
    if-eqz v28, :cond_6

    .line 2305
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " period: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " flex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " remaining: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v36

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " time_since_last: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v48

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " last poll absol: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " last poll shifed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v40

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shifted now: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v42

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " run_early: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    :cond_6
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v36, v4

    if-eqz v3, :cond_7

    cmp-long v3, v30, v34

    if-gtz v3, :cond_7

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v48, v4

    if-gez v3, :cond_7

    if-eqz v38, :cond_8

    .line 2333
    :cond_7
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v46, v0

    .line 2334
    .local v46, "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v20

    .line 2336
    .local v20, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/PeriodicSync;

    move-wide/from16 v0, v34

    invoke-virtual {v4, v5, v3, v0, v1}, Lcom/android/server/content/SyncStorageEngine;->setPeriodicSyncTime(ILandroid/content/PeriodicSync;J)V

    .line 2339
    move-object/from16 v0, v46

    iget-boolean v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v3, :cond_c

    .line 2341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v4

    move-object/from16 v0, v46

    iget v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v45

    .line 2345
    .local v45, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-eqz v45, :cond_4

    .line 2348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v47, v0

    new-instance v3, Lcom/android/server/content/SyncOperation;

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v0, v46

    iget v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    const/4 v6, -0x4

    const/4 v7, 0x4

    move-object/from16 v0, v46

    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    if-eqz v20, :cond_b

    move-object/from16 v0, v20

    iget-object v14, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v16

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/SyncAdapterType;

    invoke-virtual/range {v18 .. v18}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v18

    invoke-direct/range {v3 .. v18}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJJZ)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    .line 2371
    .end local v20    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v45    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v46    # "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_8
    :goto_7
    if-eqz v38, :cond_e

    .line 2373
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long v4, v4, v34

    add-long v32, v4, v36

    .line 2377
    .local v32, "nextPollTimeAbsolute":J
    :goto_8
    cmp-long v3, v32, v22

    if-gez v3, :cond_4

    .line 2378
    move-wide/from16 v22, v32

    goto/16 :goto_3

    .line 2292
    .end local v32    # "nextPollTimeAbsolute":J
    .end local v36    # "remainingMillis":J
    .end local v38    # "runEarly":Z
    .end local v40    # "shiftedLastPollTimeAbsolute":J
    .end local v48    # "timeSinceLastRunMillis":J
    :cond_9
    const-wide/16 v40, 0x0

    goto/16 :goto_4

    .line 2302
    .restart local v36    # "remainingMillis":J
    .restart local v40    # "shiftedLastPollTimeAbsolute":J
    .restart local v48    # "timeSinceLastRunMillis":J
    :cond_a
    const/16 v38, 0x0

    goto/16 :goto_5

    .line 2348
    .restart local v20    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v38    # "runEarly":Z
    .restart local v45    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v46    # "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_b
    const-wide/16 v14, 0x0

    goto :goto_6

    .line 2357
    .end local v45    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_c
    move-object/from16 v0, v46

    iget-boolean v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v3, :cond_8

    .line 2358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v18, v0

    new-instance v4, Lcom/android/server/content/SyncOperation;

    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    move-object/from16 v0, v46

    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    const/4 v7, -0x4

    const/4 v8, 0x4

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    if-eqz v20, :cond_d

    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v16

    invoke-direct/range {v4 .. v17}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/content/ComponentName;IIILandroid/os/Bundle;JJJJ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    goto :goto_7

    :cond_d
    const-wide/16 v14, 0x0

    goto :goto_9

    .line 2375
    .end local v20    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v46    # "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_e
    add-long v32, v34, v36

    .restart local v32    # "nextPollTimeAbsolute":J
    goto :goto_8

    .line 2383
    .end local v2    # "N":I
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v19    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v21    # "flexInMillis":Ljava/lang/Long;
    .end local v24    # "i":I
    .end local v26    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .end local v29    # "periodInMillis":Ljava/lang/Long;
    .end local v30    # "lastPollTimeAbsolute":J
    .end local v32    # "nextPollTimeAbsolute":J
    .end local v36    # "remainingMillis":J
    .end local v38    # "runEarly":Z
    .end local v39    # "status":Landroid/content/SyncStatusInfo;
    .end local v40    # "shiftedLastPollTimeAbsolute":J
    .end local v44    # "sync":Landroid/content/PeriodicSync;
    .end local v48    # "timeSinceLastRunMillis":J
    :cond_f
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, v22, v4

    if-nez v3, :cond_10

    .line 2384
    const-wide v4, 0x7fffffffffffffffL

    .line 2388
    :goto_a
    return-wide v4

    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v3, v22, v34

    if-gez v3, :cond_11

    const-wide/16 v4, 0x0

    :goto_b
    add-long/2addr v4, v6

    goto :goto_a

    :cond_11
    sub-long v4, v22, v34

    goto :goto_b
.end method

.method private sendSyncStateIntent()V
    .locals 3

    .prologue
    .line 3185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3186
    .local v0, "syncStateIntent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3187
    const-string v1, "active"

    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$4600(Lcom/android/server/content/SyncManager;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3188
    const-string v1, "failing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3189
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$1400(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3190
    return-void
.end method

.method private syncResultToErrorNumber(Landroid/content/SyncResult;)I
    .locals 4
    .param p1, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    const-wide/16 v2, 0x0

    .line 3000
    iget-boolean v0, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v0, :cond_0

    .line 3001
    const/4 v0, 0x1

    .line 3015
    :goto_0
    return v0

    .line 3002
    :cond_0
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 3003
    const/4 v0, 0x2

    goto :goto_0

    .line 3004
    :cond_1
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 3005
    const/4 v0, 0x3

    goto :goto_0

    .line 3006
    :cond_2
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 3007
    const/4 v0, 0x4

    goto :goto_0

    .line 3008
    :cond_3
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 3009
    const/4 v0, 0x5

    goto :goto_0

    .line 3010
    :cond_4
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v0, :cond_5

    .line 3011
    const/4 v0, 0x6

    goto :goto_0

    .line 3012
    :cond_5
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v0, :cond_6

    .line 3013
    const/4 v0, 0x7

    goto :goto_0

    .line 3014
    :cond_6
    iget-boolean v0, p1, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v0, :cond_7

    .line 3015
    const/16 v0, 0x8

    goto :goto_0

    .line 3016
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "we are not in an error state, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tryEnqueueMessageUntilReadyToRun(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2031
    monitor-enter p0

    .line 2032
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2100(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mBootQueue:Ljava/util/List;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2035
    const/4 v0, 0x1

    monitor-exit p0

    .line 2037
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 2038
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2069
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->tryEnqueueMessageUntilReadyToRun(Landroid/os/Message;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2210
    :goto_0
    return-void

    .line 2073
    :cond_0
    const-wide v4, 0x7fffffffffffffffL

    .line 2074
    .local v4, "earliestFuturePollTime":J
    const-wide v10, 0x7fffffffffffffffL

    .line 2078
    .local v10, "nextPendingSyncTime":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v14}, Lcom/android/server/content/SyncManager;->access$400(Lcom/android/server/content/SyncManager;)Z

    move-result v14

    invoke-static {v13, v14}, Lcom/android/server/content/SyncManager;->access$302(Lcom/android/server/content/SyncManager;Z)Z

    .line 2079
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v13}, Lcom/android/server/content/SyncManager;->access$2300(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2084
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->scheduleReadyPeriodicSyncs()J

    move-result-wide v4

    .line 2085
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v13, :pswitch_data_0

    .line 2205
    :cond_1
    :goto_1
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->manageSyncNotificationLocked()V

    .line 2206
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v10, v11}, Lcom/android/server/content/SyncManager$SyncHandler;->manageSyncAlarmLocked(JJ)V

    .line 2207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    invoke-virtual {v13}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    .line 2208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v13}, Lcom/android/server/content/SyncManager;->access$2300(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 2087
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2088
    .local v3, "expiredContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string v13, "SyncManager"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2089
    const-string v13, "SyncManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleSyncHandlerMessage: MESSAGE_SYNC_EXPIRED: expiring "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v14, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v14, v14, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v15, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v15, v15, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v13, v14, v15}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 2094
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J

    move-result-wide v10

    .line 2095
    goto :goto_1

    .line 2098
    .end local v3    # "expiredContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2099
    .local v9, "payload":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v6

    .line 2100
    .local v6, "extras":Landroid/os/Bundle;
    const-string v13, "SyncManager"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2101
    const-string v13, "SyncManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleSyncHandlerMessage: MESSAGE_SERVICE_CANCEL: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " bundle: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6}, Lcom/android/server/content/SyncManager$SyncHandler;->cancelActiveSyncLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 2105
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J

    move-result-wide v10

    .line 2106
    goto/16 :goto_1

    .line 2110
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v9    # "payload":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :pswitch_3
    const-string v13, "SyncManager"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2111
    const-string v13, "SyncManager"

    const-string v14, "handleSyncHandlerMessage: MESSAGE_SYNC_FINISHED"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    :cond_4
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;

    .line 2114
    .local v9, "payload":Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v14, v9, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-static {v13, v14}, Lcom/android/server/content/SyncManager;->access$2400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 2115
    const-string v13, "SyncManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleSyncHandlerMessage: dropping since the sync is no longer active: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v9, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 2205
    .end local v9    # "payload":Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;
    :catchall_0
    move-exception v13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->manageSyncNotificationLocked()V

    .line 2206
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v10, v11}, Lcom/android/server/content/SyncManager$SyncHandler;->manageSyncAlarmLocked(JJ)V

    .line 2207
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    invoke-virtual {v14}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    .line 2208
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v14}, Lcom/android/server/content/SyncManager;->access$2300(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v13

    .line 2120
    .restart local v9    # "payload":Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;
    :cond_5
    :try_start_2
    iget-object v13, v9, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;->syncResult:Landroid/content/SyncResult;

    iget-object v14, v9, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledLocked(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2124
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J

    move-result-wide v10

    .line 2125
    goto/16 :goto_1

    .line 2128
    .end local v9    # "payload":Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    .line 2129
    .local v8, "msgData":Lcom/android/server/content/SyncManager$ServiceConnectionData;
    const-string v13, "SyncManager"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2130
    const-string v13, "SyncManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleSyncHandlerMessage: MESSAGE_SERVICE_CONNECTED: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v14, v8, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-static {v13, v14}, Lcom/android/server/content/SyncManager;->access$2400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2135
    iget-object v13, v8, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v14, v8, Lcom/android/server/content/SyncManager$ServiceConnectionData;->adapter:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/content/SyncManager$SyncHandler;->runBoundToAdapter(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V

    goto/16 :goto_1

    .line 2143
    .end local v8    # "msgData":Lcom/android/server/content/SyncManager$ServiceConnectionData;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    iget-object v2, v13, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2145
    .local v2, "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    const-string v13, "SyncManager"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2146
    const-string v13, "SyncManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleSyncHandlerMessage: MESSAGE_SERVICE_DISCONNECTED: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v13, v2}, Lcom/android/server/content/SyncManager;->access$2400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v13

    if-eqz v13, :cond_1

    .line 2154
    :try_start_3
    iget-object v13, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    if-eqz v13, :cond_9

    .line 2155
    iget-object v13, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v13, v2}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2166
    :cond_8
    :goto_2
    :try_start_4
    new-instance v12, Landroid/content/SyncResult;

    invoke-direct {v12}, Landroid/content/SyncResult;-><init>()V

    .line 2167
    .local v12, "syncResult":Landroid/content/SyncResult;
    iget-object v13, v12, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v14, v13, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    iput-wide v14, v13, Landroid/content/SyncStats;->numIoExceptions:J

    .line 2168
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledLocked(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2171
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v10

    .line 2172
    goto/16 :goto_1

    .line 2156
    .end local v12    # "syncResult":Landroid/content/SyncResult;
    :cond_9
    :try_start_5
    iget-object v13, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    if-eqz v13, :cond_8

    .line 2157
    iget-object v13, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    invoke-interface {v13, v2}, Landroid/content/ISyncServiceAdapter;->cancelSync(Landroid/content/ISyncContext;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 2160
    :catch_0
    move-exception v13

    goto :goto_2

    .line 2178
    .end local v2    # "currentSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :pswitch_6
    :try_start_6
    const-string v13, "SyncManager"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    .line 2179
    .local v7, "isLoggable":Z
    if-eqz v7, :cond_a

    .line 2180
    const-string v13, "SyncManager"

    const-string v14, "handleSyncHandlerMessage: MESSAGE_SYNC_ALARM"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    :cond_a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2184
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-wide v10

    .line 2186
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v13}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1

    :catchall_1
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v14}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v13

    .line 2192
    .end local v7    # "isLoggable":Z
    :pswitch_7
    const-string v13, "SyncManager"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 2193
    const-string v13, "SyncManager"

    const-string v14, "handleSyncHandlerMessage: MESSAGE_CHECK_ALARMS"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J

    move-result-wide v10

    .line 2196
    goto/16 :goto_1

    .line 2198
    :pswitch_8
    const-string v13, "SyncManager"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 2199
    const-string v13, "SyncManager"

    const-string v14, "handleSyncHandlerMessage: MESSAGE_CHECK_ALARMS_DELAY"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeStartNextSyncLocked()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-wide v10

    goto/16 :goto_1

    .line 2085
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;)J
    .locals 4
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 3260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3261
    .local v0, "now":J
    const/16 v2, 0xaa0

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/content/SyncOperation;->toEventLog(I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3263
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/server/content/SyncStorageEngine;->insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public onBootCompleted()V
    .locals 4

    .prologue
    .line 1997
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1998
    const-string v2, "SyncManager"

    const-string v3, "Boot completed, clearing boot queue."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    :cond_0
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)V

    .line 2001
    monitor-enter p0

    .line 2003
    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mBootQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 2004
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2008
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "message":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2006
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mBootQueue:Ljava/util/List;

    .line 2007
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/content/SyncManager;->access$2102(Lcom/android/server/content/SyncManager;Z)Z

    .line 2008
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2009
    return-void
.end method

.method public stopSyncEvent(JLcom/android/server/content/SyncOperation;Ljava/lang/String;IIJ)V
    .locals 11
    .param p1, "rowId"    # J
    .param p3, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p4, "resultMessage"    # Ljava/lang/String;
    .param p5, "upstreamActivity"    # I
    .param p6, "downstreamActivity"    # I
    .param p7, "elapsedTime"    # J

    .prologue
    .line 3268
    const/16 v1, 0xaa0

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/android/server/content/SyncOperation;->toEventLog(I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3270
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    move/from16 v0, p6

    int-to-long v7, v0

    move/from16 v0, p5

    int-to-long v9, v0

    move-wide v2, p1

    move-wide/from16 v4, p7

    move-object v6, p4

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/content/SyncStorageEngine;->stopSyncEvent(JJLjava/lang/String;JJ)V

    .line 3272
    return-void
.end method