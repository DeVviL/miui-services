.class Lcom/android/server/WatchdogInjector;
.super Ljava/lang/Object;
.source "WatchdogInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WatchdogInjector"

.field private static mMonitorThreads:Ljava/util/ArrayList;
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

    sput-object v0, Lcom/android/server/WatchdogInjector;->mMonitorThreads:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/WatchdogInjector;->mMonitorThreads:Ljava/util/ArrayList;

    const-string v1, "ActivityManager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/WatchdogInjector;->mMonitorThreads:Ljava/util/ArrayList;

    const-string v1, "PowerManagerService"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/WatchdogInjector;->mMonitorThreads:Ljava/util/ArrayList;

    const-string v1, "miui.fg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static needMonitorThread(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/WatchdogInjector;->mMonitorThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onWatchdog(Lcom/android/server/Watchdog;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/Watchdog;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    new-instance v5, Lmiui/mqsas/sdk/event/WatchdogEvent;

    invoke-direct {v5}, Lmiui/mqsas/sdk/event/WatchdogEvent;-><init>()V

    const/16 v12, 0x80

    new-array v3, v12, [Ljava/lang/String;

    const/16 v12, 0x80

    new-array v11, v12, [Ljava/lang/String;

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    :goto_0
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_1

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v12}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v12}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v10

    array-length v8, v2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_0

    aget-object v4, v2, v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v5, p1}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setPid(I)V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setProcessName(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setPackageName(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setTimeStamp(J)V

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setSystem(Z)V

    invoke-virtual {v5, v3}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setCheckers([Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setStackTraces([Ljava/lang/String;)V

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v12

    invoke-virtual {v12, v5}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportWatchdogEvent(Lmiui/mqsas/sdk/event/WatchdogEvent;)V

    return-void

    :catchall_0
    move-exception v12

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v12

    goto :goto_2
.end method
