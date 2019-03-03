.class public Lcom/intel/internal/telephony/ModemStatusManager;
.super Ljava/lang/Object;
.source "ModemStatusManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/telephony/ModemStatusManager$1;,
        Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;
    }
.end annotation


# static fields
.field private static final CLASS_NAME_PROPERTY:Ljava/lang/String; = "sys.mdmcli.className"

.field private static final JAR_PATH_PROPERTY:Ljava/lang/String; = "sys.mdmcli.jarPath"

.field private static final TAG:Ljava/lang/String; = "ModemStatusManager"

.field private static sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/intel/internal/telephony/ModemStatusManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private eventListener:Lcom/intel/internal/telephony/ModemEventListener;

.field private mInstanceId:Ljava/lang/Integer;

.field private modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

.field private requestHandler:Landroid/os/Handler;

.field private statusEventsHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/ModemStatusManager;->sInstances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    iput-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    iput-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->statusEventsHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->requestHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->mInstanceId:Ljava/lang/Integer;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->mInstanceId:Ljava/lang/Integer;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->statusEventsHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/intel/internal/telephony/ModemStatusManager;->getModemStatusMonitor(Landroid/content/Context;)Lcom/intel/internal/telephony/ModemStatusMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Not able to load the modemStatusMonitor"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->requestHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getDefaultInstanceId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/intel/internal/telephony/ModemStatusManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/intel/internal/telephony/ModemStatusManager;->getInstance(Landroid/content/Context;I)Lcom/intel/internal/telephony/ModemStatusManager;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/intel/internal/telephony/ModemStatusManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    const-class v2, Lcom/intel/internal/telephony/ModemStatusManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/intel/internal/telephony/ModemStatusManager;->sInstances:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/intel/internal/telephony/ModemStatusManager;->sInstances:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/internal/telephony/ModemStatusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    :try_start_1
    new-instance v0, Lcom/intel/internal/telephony/ModemStatusManager;

    invoke-direct {v0, p0, p1}, Lcom/intel/internal/telephony/ModemStatusManager;-><init>(Landroid/content/Context;I)V

    sget-object v1, Lcom/intel/internal/telephony/ModemStatusManager;->sInstances:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getModemStatusMonitor(Landroid/content/Context;)Lcom/intel/internal/telephony/ModemStatusMonitor;
    .locals 13

    const/4 v6, 0x0

    :try_start_0
    const-string v10, "sys.mdmcli.jarPath"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "sys.mdmcli.className"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "ModemStatusManagerJavaLib"

    const-string v11, "Property sys.mdmcli.jarPath not set"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    :goto_0
    return-object v7

    :cond_0
    const-string v10, ""

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "ModemStatusManagerJavaLib"

    const-string v11, "Property sys.mdmcli.className not set"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    goto :goto_0

    :cond_1
    const-string v10, "ModemStatusManagerJavaLib"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Implementation: (jar="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", class="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/content/ContextWrapper;

    invoke-direct {v10, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    new-instance v2, Ldalvik/system/DexClassLoader;

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-direct {v2, v5, v9, v10, v11}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {v2, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/os/Handler;

    aput-object v12, v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/intel/internal/telephony/ModemStatusManager;->statusEventsHandler:Landroid/os/Handler;

    aput-object v12, v10, v11

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/intel/internal/telephony/ModemStatusMonitor;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v7, v6

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v10, "ModemStatusManagerJavaLib"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not instantiate creator: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public acquireModem()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/ModemClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-interface {v0}, Lcom/intel/internal/telephony/ModemStatusMonitor;->acquireModem()V

    :cond_0
    return-void
.end method

.method public acquireModemAsync(Lcom/intel/internal/telephony/AsyncOperationResultListener;)V
    .locals 2

    new-instance v0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;-><init>(Lcom/intel/internal/telephony/ModemStatusManager;ILcom/intel/internal/telephony/AsyncOperationResultListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/ModemClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    iget-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/intel/internal/telephony/ModemStatusMonitor;->connect(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public connectAsync(Ljava/lang/String;Lcom/intel/internal/telephony/AsyncOperationResultListener;)V
    .locals 3

    new-instance v0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p2}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;-><init>(Lcom/intel/internal/telephony/ModemStatusManager;ILcom/intel/internal/telephony/AsyncOperationResultListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public disconnect()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-interface {v0}, Lcom/intel/internal/telephony/ModemStatusMonitor;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    throw v0
.end method

.method public disconnectAsync(Lcom/intel/internal/telephony/AsyncOperationResultListener;)V
    .locals 2

    new-instance v0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;-><init>(Lcom/intel/internal/telephony/ModemStatusManager;ILcom/intel/internal/telephony/AsyncOperationResultListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/intel/internal/telephony/ModemStatus;

    iget-object v2, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/intel/internal/telephony/ModemStatusManager$1;->$SwitchMap$com$intel$internal$telephony$ModemStatus:[I

    invoke-virtual {v0}, Lcom/intel/internal/telephony/ModemStatus;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    :goto_0
    monitor-exit v2

    :cond_0
    const/4 v1, 0x1

    return v1

    :pswitch_0
    iget-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    invoke-interface {v1}, Lcom/intel/internal/telephony/ModemEventListener;->onModemUp()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    invoke-interface {v1}, Lcom/intel/internal/telephony/ModemEventListener;->onModemDown()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    invoke-interface {v1}, Lcom/intel/internal/telephony/ModemEventListener;->onModemDead()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public releaseModem()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/ModemClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-interface {v0}, Lcom/intel/internal/telephony/ModemStatusMonitor;->releaseModem()V

    :cond_0
    return-void
.end method

.method public releaseModemAsync(Lcom/intel/internal/telephony/AsyncOperationResultListener;)V
    .locals 2

    new-instance v0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;-><init>(Lcom/intel/internal/telephony/ModemStatusManager;ILcom/intel/internal/telephony/AsyncOperationResultListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public resetModem()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/ModemClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/intel/internal/telephony/ModemStatusMonitor;->resetModem([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resetModem([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/ModemClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-interface {v0, p1}, Lcom/intel/internal/telephony/ModemStatusMonitor;->resetModem([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resetModemAsync(Lcom/intel/internal/telephony/AsyncOperationResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/intel/internal/telephony/ModemStatusManager;->resetModemAsync(Lcom/intel/internal/telephony/AsyncOperationResultListener;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resetModemAsync(Lcom/intel/internal/telephony/AsyncOperationResultListener;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;-><init>(Lcom/intel/internal/telephony/ModemStatusManager;ILcom/intel/internal/telephony/AsyncOperationResultListener;[Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public shutdownModem()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/ModemClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-interface {v0}, Lcom/intel/internal/telephony/ModemStatusMonitor;->shutdownModem()V

    :cond_0
    return-void
.end method

.method public shutdownModemAsync(Lcom/intel/internal/telephony/AsyncOperationResultListener;)V
    .locals 2

    new-instance v0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1, p1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;-><init>(Lcom/intel/internal/telephony/ModemStatusManager;ILcom/intel/internal/telephony/AsyncOperationResultListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public declared-synchronized subscribeToEvent(Lcom/intel/internal/telephony/ModemEventListener;Lcom/intel/internal/telephony/ModemStatus;)Lcom/intel/internal/telephony/ModemStatusManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/ModemClientException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/intel/internal/telephony/ModemStatusManager;->eventListener:Lcom/intel/internal/telephony/ModemEventListener;

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-interface {v0, p2}, Lcom/intel/internal/telephony/ModemStatusMonitor;->subscribeToEvent(Lcom/intel/internal/telephony/ModemStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateModem()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/ModemClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/intel/internal/telephony/ModemStatusMonitor;->updateModem([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateModem([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/ModemClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-interface {v0, p1}, Lcom/intel/internal/telephony/ModemStatusMonitor;->updateModem([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateModemAsync(Lcom/intel/internal/telephony/AsyncOperationResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/intel/internal/telephony/ModemStatusManager;->updateModemAsync(Lcom/intel/internal/telephony/AsyncOperationResultListener;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateModemAsync(Lcom/intel/internal/telephony/AsyncOperationResultListener;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;-><init>(Lcom/intel/internal/telephony/ModemStatusManager;ILcom/intel/internal/telephony/AsyncOperationResultListener;[Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/intel/internal/telephony/ModemStatusManager$AsyncOperationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public waitForModemStatus(Lcom/intel/internal/telephony/ModemStatus;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/ModemClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/internal/telephony/ModemStatusManager;->modemStatusMonitor:Lcom/intel/internal/telephony/ModemStatusMonitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/intel/internal/telephony/ModemStatusMonitor;->waitForModemStatus(Lcom/intel/internal/telephony/ModemStatus;J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
