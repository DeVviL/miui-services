.class public Lcom/android/server/location/LocationOpHandler;
.super Landroid/os/Handler;
.source "LocationOpHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationOpHandler$LocationOpRecord;
    }
.end annotation


# static fields
.field private static final MSG_DELAYED_LOCATION_OP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocationOpHanlder"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLastLocationOps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/location/LocationOpHandler$LocationOpRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationOpHandler;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationOpHandler;->mLastLocationOps:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/location/LocationOpHandler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/location/LocationOpHandler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/location/LocationOpHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private postWifiScanRequest(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationOpHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->startScan(Landroid/os/WorkSource;)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0}, Lcom/android/server/location/LocationOpHandler;->postWifiScanRequest(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isFrequenctlyOp(IIJI)Z
    .locals 9

    const/4 v5, 0x2

    if-eq p2, v5, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/location/LocationOpHandler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationOpHandler;->mLastLocationOps:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;

    if-eqz v1, :cond_1

    if-ne p2, v5, :cond_1

    iget-wide v4, v1, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;->timestamp:J

    cmp-long v2, p3, v4

    if-lez v2, :cond_1

    iget-wide v4, v1, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;->timestamp:J

    int-to-long v6, p5

    add-long/2addr v4, v6

    cmp-long v2, p3, v4

    if-gez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setFollowupAction(IIJI)V
    .locals 9

    iget-object v5, p0, Lcom/android/server/location/LocationOpHandler;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v4, 0x2

    if-ne p2, v4, :cond_1

    int-to-long v0, p5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/location/LocationOpHandler;->mLastLocationOps:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v4, p2, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;

    if-eqz v2, :cond_0

    iget-wide v6, v2, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;->timestamp:J

    cmp-long v4, p3, v6

    if-lez v4, :cond_0

    iget-wide v6, v2, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;->timestamp:J

    sub-long v6, p3, v6

    sub-long/2addr v0, v6

    :cond_0
    const/4 v4, 0x1

    invoke-static {p0, v4, p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/location/LocationOpHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public updateLastLocationOp(IIJ)V
    .locals 9

    const/4 v7, 0x2

    if-eq p2, v7, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/server/location/LocationOpHandler;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    new-instance v0, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;-><init>(Lcom/android/server/location/LocationOpHandler;IIJ)V

    iget-object v1, p0, Lcom/android/server/location/LocationOpHandler;->mLastLocationOps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-ne p2, v7, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/location/LocationOpHandler;->removeMessages(I)V

    :cond_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
