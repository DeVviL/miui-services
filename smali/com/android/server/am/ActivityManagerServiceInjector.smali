.class Lcom/android/server/am/ActivityManagerServiceInjector;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;
    }
.end annotation


# static fields
.field static final APP_START_MODE_NORMAL:I = 0x0

.field public static final BOOST_DURATION:J = 0xbb8L

.field private static final BOOST_TAG:Ljava/lang/String; = "Boost"

.field private static enableAdjDowngrade:Z = false

.field protected static enableTaskIsolation:Z = false

.field static mProtectedProcessList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mipushCaller:Ljava/lang/String; = "com.xiaomi.xmsf"

.field private static final mipushServiceName:Ljava/lang/String; = "com.xiaomi.mipush.sdk.PushMessageHandler"

.field static sSwitchUserCallingUid:I

.field private static skipVerifyList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    const-string v0, "persist.sys.task_isolation"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->enableTaskIsolation:Z

    .line 80
    const-string v0, "persist.sys.adj_downgrade"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->enableAdjDowngrade:Z

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.tencent.mm"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.tencent.mobileqq"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->skipVerifyList:[Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    .line 180
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    return-void
.end method

.method public static adjustThreadGroup(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 873
    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->enableTaskIsolation:Z

    if-eqz v0, :cond_0

    .line 874
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 875
    if-eq p0, p1, :cond_0

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    if-ltz v0, :cond_0

    .line 876
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    .line 880
    :cond_0
    return-void
.end method

.method public static attachProcessStartReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "hostingNameStr"    # Ljava/lang/String;

    .prologue
    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    const-string v1, " #for# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    if-eqz p2, :cond_0

    .line 742
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static broadcastIntentLocked(Lcom/android/server/am/ActivityManagerService;ZZLcom/android/server/am/BroadcastRecord;)Z
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "parallel"    # Z
    .param p2, "replacePending"    # Z
    .param p3, "record"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 401
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MiuiBroadcastManager;->broadcastIntentLocked(ZZLcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    return v0
.end method

.method static broadcastQueueByFlag(Lcom/android/server/am/ActivityManagerService;I)Lcom/android/server/am/BroadcastQueue;
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "flags"    # I

    .prologue
    .line 407
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MiuiBroadcastManager;->broadcastQueueByFlag(I)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    return-object v0
.end method

.method public static checkGMSInstall(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 229
    .local v1, "serviceProcess":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 230
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 231
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 232
    .local v2, "topProcess":Ljava/lang/String;
    const-string v3, "com.google"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.android.provision"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    const-string v3, "ActivityManagerServiceInjector"

    const-string v4, "delay gms service timeout"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v3, 0x1

    .line 239
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "serviceProcess":Ljava/lang/String;
    .end local v2    # "topProcess":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static checkMemForServiceRestart(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ActivityManagerService;)Z
    .locals 3
    .param p0, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 913
    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->enableAdjDowngrade:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 915
    const-string v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "don\'t allow bg service restart under lowmem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/4 v0, 0x0

    .line 918
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkServiceAccess(Landroid/content/Intent;II)Z
    .locals 2
    .param p0, "service"    # Landroid/content/Intent;
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .prologue
    .line 923
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.IMediaScannerService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 927
    const/4 v0, 0x1

    .line 929
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkUserForServiceBind(Landroid/content/Intent;I)I
    .locals 2
    .param p0, "service"    # Landroid/content/Intent;
    .param p1, "userId"    # I

    .prologue
    .line 933
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.IMediaScannerService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_0

    .line 936
    const/4 p1, 0x0

    .line 938
    :cond_0
    return p1
.end method

.method public static clearDeadAppFromNative(Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;Ljava/lang/Thread;Lcom/android/internal/os/ProcessCpuTracker;)V
    .locals 10
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processCpuThread"    # Ljava/lang/Thread;
    .param p3, "processCpuTracker"    # Lcom/android/internal/os/ProcessCpuTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/lang/Thread;",
            "Lcom/android/internal/os/ProcessCpuTracker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "lruProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 205
    .local v4, "procMemsMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    monitor-enter p0

    .line 206
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 207
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 208
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    iget v6, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 210
    .end local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 212
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->getForegroundApplicationUid()I

    move-result v1

    .line 213
    .local v1, "foregroundUid":I
    monitor-enter p2

    .line 214
    :try_start_1
    invoke-virtual {p3}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v0

    .line 215
    .local v0, "N":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 216
    invoke-virtual {p3, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v5

    .line 217
    .local v5, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-wide v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_1

    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v7, 0x2710

    if-le v6, v7, :cond_1

    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    if-eq v1, v6, :cond_1

    .line 218
    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 219
    const-string v6, "ActivityManagerServiceInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "kill the native dead app pid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 210
    .end local v0    # "N":I
    .end local v1    # "foregroundUid":I
    .end local v2    # "i":I
    .end local v5    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 222
    .restart local v0    # "N":I
    .restart local v1    # "foregroundUid":I
    .restart local v2    # "i":I
    :cond_2
    :try_start_3
    monitor-exit p2

    .line 223
    return-void

    .line 222
    .end local v0    # "N":I
    :catchall_1
    move-exception v6

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6
.end method

.method public static computeAdjForLowmem(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityManagerService;JI)I
    .locals 4
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "leastServiceIdle"    # J
    .param p4, "adj"    # I

    .prologue
    .line 895
    sget-boolean v1, Lcom/android/server/am/ActivityManagerServiceInjector;->enableAdjDowngrade:Z

    if-eqz v1, :cond_3

    iget v1, p1, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 897
    const-string v1, "fg-service"

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, p4

    .line 909
    .end local p4    # "adj":I
    .local v0, "adj":I
    :goto_0
    return v0

    .line 900
    .end local v0    # "adj":I
    .restart local p4    # "adj":I
    :cond_0
    const/4 v1, 0x5

    if-ge p4, v1, :cond_3

    .line 901
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v1, p2, v2

    if-eqz v1, :cond_1

    const-wide/32 v2, 0x927c0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_2

    :cond_1
    const-string v1, "provider"

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 903
    :cond_2
    const/4 p4, 0x5

    .line 904
    const-string v1, "ActivityManagerServiceInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downgrade: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to A service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, p4

    .line 909
    .end local p4    # "adj":I
    .restart local v0    # "adj":I
    goto :goto_0
.end method

.method static computeGids(I[I)[I
    .locals 6
    .param p0, "userId"    # I
    .param p1, "gids"    # [I

    .prologue
    .line 281
    sget-boolean v5, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v2, p1

    .line 299
    .end local p1    # "gids":[I
    .local v2, "gids":[I
    :goto_0
    return-object v2

    .line 284
    .end local v2    # "gids":[I
    .restart local p1    # "gids":[I
    :cond_1
    invoke-static {p0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 285
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget v1, v0, v3

    .line 286
    .local v1, "gid":I
    sget v5, Lmiui/securityspace/XSpaceUserHandle;->XSPACE_SHARED_USER_GID:I

    if-ne v1, v5, :cond_3

    .line 287
    sget v5, Lmiui/securityspace/XSpaceUserHandle;->OWNER_SHARED_USER_GID:I

    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    .end local v0    # "arr$":[I
    .end local v1    # "gid":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    :goto_2
    move-object v2, p1

    .line 299
    .end local p1    # "gids":[I
    .restart local v2    # "gids":[I
    goto :goto_0

    .line 285
    .end local v2    # "gids":[I
    .restart local v0    # "arr$":[I
    .restart local v1    # "gid":I
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local p1    # "gids":[I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 291
    .end local v0    # "arr$":[I
    .end local v1    # "gid":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_4
    if-nez p0, :cond_2

    .line 292
    move-object v0, p1

    .restart local v0    # "arr$":[I
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v4, :cond_2

    aget v1, v0, v3

    .line 293
    .restart local v1    # "gid":I
    sget v5, Lmiui/securityspace/XSpaceUserHandle;->OWNER_SHARED_USER_GID:I

    if-ne v1, v5, :cond_5

    .line 294
    sget v5, Lmiui/securityspace/XSpaceUserHandle;->XSPACE_SHARED_USER_GID:I

    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    .line 295
    goto :goto_2

    .line 292
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method static doBoost(Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1012
    return-void
.end method

.method static dumpAppTrace(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "appPid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 790
    const-string v15, "dalvik.vm.stack-trace-file"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 791
    .local v13, "tracesPath":Ljava/lang/String;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v9

    .line 795
    .local v9, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 797
    :try_start_0
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 798
    .local v12, "tracesFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    .line 799
    .local v11, "tracesDir":Ljava/io/File;
    new-instance v14, Ljava/io/File;

    const-string v15, "_tmp_"

    invoke-direct {v14, v11, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 801
    .local v14, "tracesTmp":Ljava/io/File;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_2

    .line 802
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 803
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/os/SELinux;->restorecon(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v15

    if-nez v15, :cond_2

    .line 868
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 807
    :cond_2
    :try_start_2
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1fd

    const/16 v17, -0x1

    const/16 v18, -0x1

    invoke-static/range {v15 .. v18}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 809
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 810
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 811
    invoke-virtual {v12, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 813
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 814
    .local v10, "sb":Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroid/os/AnrMonitor;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pid : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pkgName : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "processName : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 820
    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/io/FileOutputStream;->write([B)V

    .line 821
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 822
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1b6

    const/16 v17, -0x1

    const/16 v18, -0x1

    invoke-static/range {v15 .. v18}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 828
    if-eqz p1, :cond_4

    .line 829
    :try_start_3
    new-instance v8, Lcom/android/server/am/ActivityManagerServiceInjector$2;

    const/16 v15, 0x8

    invoke-direct {v8, v13, v15}, Lcom/android/server/am/ActivityManagerServiceInjector$2;-><init>(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 836
    .local v8, "observer":Landroid/os/FileObserver;
    :try_start_4
    invoke-virtual {v8}, Landroid/os/FileObserver;->startWatching()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 838
    :try_start_5
    monitor-enter v8
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 839
    const/4 v15, 0x3

    :try_start_6
    move/from16 v0, p1

    invoke-static {v0, v15}, Landroid/os/Process;->sendSignal(II)V

    .line 840
    const-wide/16 v16, 0x1f4

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 841
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 845
    :goto_1
    :try_start_7
    invoke-virtual {v8}, Landroid/os/FileObserver;->stopWatching()V

    .line 849
    .end local v8    # "observer":Landroid/os/FileObserver;
    :cond_4
    const/4 v6, 0x0

    .line 850
    .local v6, "lastTracesFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 851
    .local v2, "curTracesFile":Ljava/io/File;
    const/4 v5, 0x5

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_7

    .line 852
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v16, "slow_app_%s_%02d.txt"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p3, v17, v18

    const/16 v18, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 853
    .local v7, "name":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2    # "curTracesFile":Ljava/io/File;
    invoke-direct {v2, v11, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 854
    .restart local v2    # "curTracesFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 855
    if-eqz v6, :cond_6

    .line 856
    invoke-virtual {v2, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 861
    :cond_5
    :goto_3
    move-object v6, v2

    .line 851
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 823
    .end local v2    # "curTracesFile":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "i":I
    .end local v6    # "lastTracesFile":Ljava/io/File;
    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 824
    .local v3, "e":Ljava/io/IOException;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to dump app traces file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v3}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 868
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/16 :goto_0

    .line 841
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "observer":Landroid/os/FileObserver;
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v15

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v15
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 842
    :catch_1
    move-exception v15

    goto :goto_1

    .line 845
    :catchall_1
    move-exception v15

    :try_start_a
    invoke-virtual {v8}, Landroid/os/FileObserver;->stopWatching()V

    throw v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 868
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "observer":Landroid/os/FileObserver;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "tracesDir":Ljava/io/File;
    .end local v12    # "tracesFile":Ljava/io/File;
    .end local v14    # "tracesTmp":Ljava/io/File;
    :catchall_2
    move-exception v15

    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v15

    .line 858
    .restart local v2    # "curTracesFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "i":I
    .restart local v6    # "lastTracesFile":Ljava/io/File;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    .restart local v11    # "tracesDir":Ljava/io/File;
    .restart local v12    # "tracesFile":Ljava/io/File;
    .restart local v14    # "tracesTmp":Ljava/io/File;
    :cond_6
    :try_start_b
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 863
    .end local v7    # "name":Ljava/lang/String;
    :cond_7
    invoke-virtual {v12, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 864
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 865
    invoke-virtual {v14, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 868
    :cond_8
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/16 :goto_0
.end method

.method static finishActivity(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;ILandroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 159
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/ExtraActivityManagerService;->finishActivity(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;ILandroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static finishBooting(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 148
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->finishBooting(Lcom/android/server/am/ActivityManagerService;)V

    .line 149
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->sendFinishBootingBroadcast(Landroid/content/Context;)V

    .line 150
    return-void
.end method

.method static forceStopUserLocked(ILjava/lang/String;)V
    .locals 0
    .param p0, "userId"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 265
    invoke-static {p0, p1}, Lcom/android/server/am/ExtraActivityManagerService;->forceStopUserLocked(ILjava/lang/String;)V

    .line 266
    return-void
.end method

.method public static getAppStartMode(ILjava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "defMode"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->AppBGIdleFeatureIsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    .end local p2    # "defMode":I
    :goto_0
    return p2

    .line 247
    .restart local p2    # "defMode":I
    :cond_0
    if-eqz p3, :cond_2

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 251
    :cond_2
    invoke-static {p0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->getAppBGIdleLevel(I)I

    move-result p2

    goto :goto_0
.end method

.method static getCallingUidPackage(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 5
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 127
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-object v3

    .line 128
    :cond_1
    iget v0, v2, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 131
    .local v0, "callingUid":I
    if-lez v0, :cond_0

    .line 133
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 135
    const/4 v4, 0x0

    aget-object v3, v1, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v1    # "packages":[Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method static getExtraQueueSize()I
    .locals 1

    .prologue
    .line 386
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastManager;->getExtraQueueSize()I

    move-result v0

    return v0
.end method

.method static getMiuiActivityController()Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;
    .locals 1

    .prologue
    .line 417
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->getInstance()Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    move-result-object v0

    return-object v0
.end method

.method static getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 391
    invoke-static {p0}, Lcom/android/server/am/MiuiBroadcastManager;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    return-object v0
.end method

.method static handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
    .locals 0
    .param p0, "changes"    # I
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 144
    invoke-static {p0, p1}, Lcom/android/server/am/ExtraActivityManagerService;->handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V

    .line 145
    return-void
.end method

.method static handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "userIdOrig"    # I
    .param p3, "oldUserId"    # I
    .param p4, "mWindowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p5, "mCurrentProfileIds"    # [I

    .prologue
    .line 273
    sget v6, Lcom/android/server/am/ActivityManagerServiceInjector;->sSwitchUserCallingUid:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/ExtraActivityManagerService;->handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[II)V

    .line 274
    return-void
.end method

.method static ignoreXSpaceUser(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 977
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "xspace_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 980
    const-string v0, "ActivityManagerService"

    const-string v1, "There is no XSpace app, shouldn\'t start XSpace user"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const/4 v0, 0x1

    .line 983
    :cond_0
    return v0
.end method

.method static final init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    sget v0, Lmiui/R$style;->Theme_Light:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 86
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->init()V

    .line 87
    return-void
.end method

.method static initExtraQuqueIfNeed(Lcom/android/server/am/ActivityManagerService;I)Z
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "startIndex"    # I

    .prologue
    .line 396
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MiuiBroadcastManager;->initExtraQuqueIfNeed(I)Z

    move-result v0

    return v0
.end method

.method public static isAvoidScheduleTrimMemory(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isBoostNeeded(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "hostingName"    # Ljava/lang/String;

    .prologue
    .line 1006
    const/4 v0, 0x0

    return v0
.end method

.method static isExtraQueueEnabled()Z
    .locals 1

    .prologue
    .line 382
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastManager;->isExtraQueueEnabled()Z

    move-result v0

    return v0
.end method

.method static isFgBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueue;)Z
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;

    .prologue
    .line 412
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MiuiBroadcastManager;->isFgBroadcastQueue(Lcom/android/server/am/BroadcastQueue;)Z

    move-result v0

    return v0
.end method

.method static isGetTasksOpAllowed(Lcom/android/server/AppOpsService;Ljava/lang/String;II)Z
    .locals 3
    .param p0, "opsService"    # Lcom/android/server/AppOpsService;
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 370
    sget-boolean v2, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v2, :cond_0

    const-string v2, "getRunningAppProcesses"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v1

    .line 373
    :cond_1
    invoke-static {p2}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 377
    const/16 v2, 0x41

    invoke-virtual {p0, v2, p3, v0}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method static isProcStateBackground(I)Z
    .locals 3
    .param p0, "procState"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 255
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->AppBGIdleFeatureIsEnable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 256
    const/4 v2, 0x5

    if-lt p0, v2, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 256
    goto :goto_0

    .line 260
    :cond_2
    const/4 v2, 0x4

    if-gt p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static isStartWithBackupRestriction(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backupPkgName"    # Ljava/lang/String;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 173
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    .line 175
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 173
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    .line 175
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isSystemPackage(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 989
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, p0, v6, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 991
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 998
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v4

    .line 992
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    .local v2, "flags":I
    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_1

    and-int/lit16 v5, v2, 0x80

    if-eqz v5, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    move v4, v3

    goto :goto_0

    .line 995
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "flags":I
    :catch_0
    move-exception v1

    .line 996
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static isUserSwitchable(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 269
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->isUserSwitchable(I)Z

    move-result v0

    return v0
.end method

.method static final killNativePackageProcesses(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 91
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 92
    .local v1, "uid":I
    const-string v2, "security"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    .line 93
    .local v0, "sm":Lmiui/security/SecurityManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {v0, v1, p1}, Lmiui/security/SecurityManager;->killNativePackageProcesses(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0    # "sm":Lmiui/security/SecurityManager;
    .end local v1    # "uid":I
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static markAmsReady()V
    .locals 4

    .prologue
    .line 959
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/BootEventManager;->setAmsReady(J)V

    .line 960
    return-void
.end method

.method static markPrebootAppCount(I)V
    .locals 1
    .param p0, "count"    # I

    .prologue
    .line 973
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/mqsas/sdk/BootEventManager;->setPrebootAppCount(I)V

    .line 974
    return-void
.end method

.method static markUIReady()V
    .locals 3

    .prologue
    .line 963
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 964
    .local v0, "bootCompleteTime":J
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lmiui/mqsas/sdk/BootEventManager;->setUIReady(J)V

    .line 965
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lmiui/mqsas/sdk/BootEventManager;->setBootComplete(J)V

    .line 966
    return-void
.end method

.method public static onANR(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V
    .locals 11
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "report"    # Ljava/lang/String;
    .param p6, "logFile"    # Ljava/io/File;
    .param p7, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p8, "headline"    # Ljava/lang/String;

    .prologue
    .line 671
    const-string v1, "anr"

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lcom/android/server/am/ActivityManagerServiceInjector;->reportANR(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method static declared-synchronized parseDumpArgs(Lcom/android/server/am/ActivityManagerService;[Ljava/lang/String;I)Z
    .locals 16
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "startIndex"    # I

    .prologue
    .line 750
    const-class v13, Lcom/android/server/am/ActivityManagerServiceInjector;

    monitor-enter v13

    :try_start_0
    aget-object v5, p1, p2

    .line 751
    .local v5, "cmd":Ljava/lang/String;
    const-string v12, "dump-app-trace"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-eqz v12, :cond_3

    .line 753
    :try_start_1
    sget-boolean v12, Landroid/os/AnrMonitor;->DBG:Z

    if-eqz v12, :cond_0

    .line 754
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "startIndex "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " cmd : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v12, v14}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 755
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v7, v12, :cond_0

    .line 756
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "args["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "] "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v14, p1, v7

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v12, v14}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 755
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 759
    .end local v7    # "i":I
    :cond_0
    move-object/from16 v0, p1

    array-length v12, v0

    move/from16 v0, p2

    if-ge v0, v12, :cond_2

    .line 760
    add-int/lit8 p2, p2, 0x1

    .line 761
    aget-object v5, p1, p2

    .line 762
    const-string v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 763
    .local v4, "arr":[Ljava/lang/String;
    sget-boolean v12, Landroid/os/AnrMonitor;->DBG:Z

    if-eqz v12, :cond_1

    .line 764
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "dump-app-trace cmd : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v12, v14}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 765
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    array-length v12, v4

    if-ge v7, v12, :cond_1

    .line 766
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "arr["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "] "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v14, v4, v7

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v12, v14}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 765
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 769
    .end local v7    # "i":I
    :cond_1
    if-eqz v4, :cond_2

    array-length v12, v4

    const/4 v14, 0x4

    if-ne v12, v14, :cond_2

    .line 770
    const/4 v12, 0x0

    aget-object v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 771
    .local v3, "appPid":I
    const/4 v12, 0x1

    aget-object v9, v4, v12

    .line 772
    .local v9, "processName":Ljava/lang/String;
    const/4 v12, 0x2

    aget-object v2, v4, v12

    .line 773
    .local v2, "appName":Ljava/lang/String;
    const/4 v12, 0x3

    aget-object v8, v4, v12

    .line 774
    .local v8, "msg":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 775
    .local v10, "start":J
    move-object/from16 v0, p0

    invoke-static {v0, v3, v9, v2, v8}, Lcom/android/server/am/ActivityManagerServiceInjector;->dumpAppTrace(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "dump "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " trace took "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "ms"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v12, v14}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 784
    .end local v2    # "appName":Ljava/lang/String;
    .end local v3    # "appPid":I
    .end local v4    # "arr":[Ljava/lang/String;
    .end local v8    # "msg":Ljava/lang/String;
    .end local v9    # "processName":Ljava/lang/String;
    .end local v10    # "start":J
    :cond_2
    :goto_2
    const/4 v12, 0x1

    .line 786
    :goto_3
    monitor-exit v13

    return v12

    .line 781
    :catch_0
    move-exception v6

    .line 782
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v12, "parseDumpArgs failed!"

    invoke-static {v12, v6}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 750
    .end local v5    # "cmd":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 786
    .restart local v5    # "cmd":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public static processInitBefore(Ljava/lang/String;)Z
    .locals 2
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v0, 0x1

    .line 185
    .local v0, "hasInit":Z
    if-eqz p0, :cond_0

    .line 186
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static renameTraces(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 709
    if-eqz p0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/AnrMonitor;->renameTraces(Ljava/lang/String;)V

    .line 712
    :cond_0
    return-void
.end method

.method public static reportANR(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V
    .locals 6
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p6, "subject"    # Ljava/lang/String;
    .param p7, "report"    # Ljava/lang/String;
    .param p8, "logFile"    # Ljava/io/File;
    .param p9, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p10, "headline"    # Ljava/lang/String;

    .prologue
    .line 682
    const/4 v0, 0x0

    .line 683
    .local v0, "bgAnr":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "anr_show_background"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    .line 685
    .local v2, "showBackground":Z
    :goto_0
    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v4, :cond_0

    .line 686
    const/4 v0, 0x1

    .line 688
    :cond_0
    new-instance v1, Lmiui/mqsas/sdk/event/AnrEvent;

    invoke-direct {v1}, Lmiui/mqsas/sdk/event/AnrEvent;-><init>()V

    .line 689
    .local v1, "event":Lmiui/mqsas/sdk/event/AnrEvent;
    iget v3, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v3}, Lmiui/mqsas/sdk/event/AnrEvent;->setPid(I)V

    .line 690
    invoke-virtual {v1, p3}, Lmiui/mqsas/sdk/event/AnrEvent;->setProcessName(Ljava/lang/String;)V

    .line 691
    const-string v3, "system"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_1

    iget-object v3, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .end local p3    # "processName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, p3}, Lmiui/mqsas/sdk/event/AnrEvent;->setPackageName(Ljava/lang/String;)V

    .line 693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lmiui/mqsas/sdk/event/AnrEvent;->setTimeStamp(J)V

    .line 694
    invoke-virtual {v1, p7}, Lmiui/mqsas/sdk/event/AnrEvent;->setReason(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v1, p6}, Lmiui/mqsas/sdk/event/AnrEvent;->setCpuInfo(Ljava/lang/String;)V

    .line 696
    invoke-virtual {v1, v0}, Lmiui/mqsas/sdk/event/AnrEvent;->setBgAnr(Z)V

    .line 697
    if-eqz p4, :cond_2

    .line 698
    iget-object v3, p4, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmiui/mqsas/sdk/event/AnrEvent;->setTargetActivity(Ljava/lang/String;)V

    .line 700
    :cond_2
    if-eqz p5, :cond_3

    .line 701
    invoke-virtual {p5}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmiui/mqsas/sdk/event/AnrEvent;->setParent(Ljava/lang/String;)V

    .line 704
    :cond_3
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportAnrEvent(Lmiui/mqsas/sdk/event/AnrEvent;)V

    .line 705
    invoke-static {p2, p4, v1}, Lcom/android/server/am/ExtraActivityManagerService;->reportAnr(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lmiui/mqsas/sdk/event/AnrEvent;)V

    .line 706
    return-void

    .line 683
    .end local v1    # "event":Lmiui/mqsas/sdk/event/AnrEvent;
    .end local v2    # "showBackground":Z
    .restart local p3    # "processName":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static reportBootEvent()V
    .locals 0

    .prologue
    .line 969
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->reportBootEvent()V

    .line 970
    return-void
.end method

.method public static restartDiedAppOrNot(Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 8
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "isHomeApp"    # Z
    .param p2, "allowRestart"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 343
    invoke-static {}, Lcom/miui/whetstone/process/WtServiceControlEntry;->isServiceControlEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 364
    .end local p2    # "allowRestart":Z
    :goto_0
    return p2

    .line 347
    .restart local p2    # "allowRestart":Z
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x927c0

    sub-long v0, v4, v6

    .line 348
    .local v0, "oldTime":J
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/whetstone/process/WtServiceControlEntry;->isAppInServiceControlWhitelist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move p2, v3

    .line 350
    goto :goto_0

    .line 351
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/4 v5, 0x7

    if-le v4, v5, :cond_3

    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    cmp-long v4, v4, v0

    if-gez v4, :cond_3

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v5, 0x5

    if-le v4, v5, :cond_3

    .line 356
    const-string v3, "ActivityManagerInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is a long inactive service(millionsecond) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with adj "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",do not allow restart"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v2

    .line 357
    goto :goto_0

    .line 358
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_4

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    .line 360
    const-string v3, "ActivityManagerInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is killed by AMS with adj "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,do not allow restart"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v2

    .line 361
    goto/16 :goto_0

    :cond_4
    move p2, v3

    .line 364
    goto/16 :goto_0
.end method

.method public static restartDiedAppOrNot(Lcom/android/server/am/ProcessRecord;ZZZ)Z
    .locals 1
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "isHomeApp"    # Z
    .param p2, "allowRestart"    # Z
    .param p3, "fromBinderDied"    # Z

    .prologue
    .line 335
    if-eqz p3, :cond_0

    .line 336
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceInjector;->restartDiedAppOrNot(Lcom/android/server/am/ProcessRecord;ZZ)Z

    move-result v0

    .line 338
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static saveAnrInfoBeforeDumpTrace(Lcom/android/server/am/ActivityManagerService;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Landroid/util/SparseArray;[Ljava/lang/String;)V
    .locals 10
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "oriInfo"    # Ljava/lang/StringBuilder;
    .param p2, "extraInfo"    # Ljava/lang/String;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p6, "nativeProcs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 717
    .local p4, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p5, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    const/4 v8, 0x0

    .line 718
    .local v8, "bgAnr":Z
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "anr_show_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v9, 0x1

    .line 720
    .local v9, "showBackground":Z
    :goto_0
    if-nez v9, :cond_0

    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p3, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_0

    .line 721
    const/4 v8, 0x1

    .line 723
    :cond_0
    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->isUserAMonkey()Z

    move-result v7

    move-object v0, p1

    move-object v1, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v8}, Landroid/os/AnrMonitor;->dumpAnrInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Landroid/util/SparseArray;[Ljava/lang/String;ZZ)Ljava/io/File;

    .line 725
    return-void

    .line 718
    .end local v9    # "showBackground":Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static sendFinishBootingBroadcast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.FINISH_BOOTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method public static setForkedProcessGroup(IIILjava/lang/String;)V
    .locals 2
    .param p0, "puid"    # I
    .param p1, "ppid"    # I
    .param p2, "pgroup"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    .line 883
    sget-boolean v1, Lcom/android/server/am/ActivityManagerServiceInjector;->enableTaskIsolation:Z

    if-eqz v1, :cond_2

    .line 884
    const/4 v0, 0x0

    .line 885
    .local v0, "group":I
    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 887
    :cond_0
    const/16 v0, 0x9

    .line 889
    :cond_1
    invoke-static {p0, p1, v0, p3}, Lcom/android/server/am/ExtraActivityManagerService;->setForkedProcessGroup(IIILjava/lang/String;)V

    .line 891
    .end local v0    # "group":I
    :cond_2
    return-void
.end method

.method public static setProcessInitState(Ljava/lang/String;)Z
    .locals 3
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    .line 192
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 194
    const-string v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in mProtectedProcessList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setSwitchUserCallingUid(I)V
    .locals 0
    .param p0, "uid"    # I

    .prologue
    .line 277
    sput p0, Lcom/android/server/am/ActivityManagerServiceInjector;->sSwitchUserCallingUid:I

    .line 278
    return-void
.end method

.method static shouldAddPersistApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 647
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.securespaces.android.ssm.service"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_0

    .line 648
    const-string v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist app : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "should not add to start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v0, 0x0

    .line 651
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static showAppCrashDialog(Lcom/android/server/am/ActivityManagerService;Ljava/util/HashMap;)Z
    .locals 7
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "data"    # Ljava/util/HashMap;

    .prologue
    const/4 v6, 0x1

    .line 105
    const-string v1, "app"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 106
    .local v4, "proc":Lcom/android/server/am/ProcessRecord;
    const-string v1, "result"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppErrorResult;

    .line 107
    .local v3, "res":Lcom/android/server/am/AppErrorResult;
    const-string v1, "crash"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 109
    .local v5, "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v5, v6}, Lmiui/util/ErrorReport;->sendExceptionReport(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;I)V

    .line 112
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$Secure;->isForceCloseDialogEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    new-instance v0, Lcom/android/server/am/AppErrorDialog;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 114
    .local v0, "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 115
    iput-object v0, v4, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 122
    .end local v0    # "d":Landroid/app/Dialog;
    :goto_0
    return v6

    .line 120
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    goto :goto_0
.end method

.method static showMiuiAppCrashDialog(Lcom/android/server/am/ActivityManagerService;Ljava/util/HashMap;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/AppErrorResult;)V
    .locals 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "res"    # Lcom/android/server/am/AppErrorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/server/am/ProcessRecord;",
            "Lcom/android/server/am/AppErrorResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector;->showAppCrashDialog(Lcom/android/server/am/ActivityManagerService;Ljava/util/HashMap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    new-instance v0, Lcom/android/server/am/AppErrorDialog;

    invoke-direct {v0, p2, p0, p4, p3}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 167
    .local v0, "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 168
    iput-object v0, p3, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 170
    .end local v0    # "d":Landroid/app/Dialog;
    :cond_0
    return-void
.end method

.method static showSwitchingDialog(Lcom/android/server/am/ActivityManagerService;ILandroid/os/Handler;)Z
    .locals 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "mTargetUserId"    # I
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 303
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceInjector;->setSwitchUserCallingUid(I)V

    .line 304
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.keyguard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    :cond_0
    const/4 v1, 0x0

    .line 321
    :goto_0
    return v1

    .line 308
    :cond_1
    new-instance v1, Lcom/android/server/am/ActivityManagerServiceInjector$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$1;-><init>(Lcom/android/server/am/ActivityManagerService;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static verifyForegroundService(Lcom/android/server/am/ServiceRecord;Landroid/app/Notification;)V
    .locals 5
    .param p0, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v4, 0x1

    .line 942
    sget-boolean v2, Lcom/android/server/am/ActivityManagerServiceInjector;->enableAdjDowngrade:Z

    if-eqz v2, :cond_4

    .line 943
    const/4 v1, 0x1

    .line 944
    .local v1, "shouldVerify":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->skipVerifyList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 945
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    sget-object v3, Lcom/android/server/am/ActivityManagerServiceInjector;->skipVerifyList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 946
    const/4 v1, 0x0

    .line 950
    :cond_0
    iget-object v2, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_1

    if-nez v1, :cond_2

    .line 951
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 956
    .end local v0    # "i":I
    .end local v1    # "shouldVerify":Z
    :cond_2
    :goto_1
    return-void

    .line 944
    .restart local v0    # "i":I
    .restart local v1    # "shouldVerify":Z
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 954
    .end local v0    # "i":I
    .end local v1    # "shouldVerify":Z
    :cond_4
    iput-boolean v4, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    goto :goto_1
.end method
