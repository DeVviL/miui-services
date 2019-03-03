.class public Lcom/intel/cws/cwsservicemanager/CsmModemMgr;
.super Ljava/lang/Object;
.source "CsmModemMgr.java"

# interfaces
.implements Lcom/intel/internal/telephony/ModemEventListener;


# static fields
.field private static final ACQUIRE_FAILURE_INTENT:Ljava/lang/String; = "Modem Manager Acquire Failure"

.field private static final ACQUIRE_SUCCESS_INTENT:Ljava/lang/String; = "Modem Manager Acquire Success"

.field private static final CONNECT_FAILURE_INTENT:Ljava/lang/String; = "Modem Manager Connect Failure"

.field private static final CONNECT_SUCCESS_INTENT:Ljava/lang/String; = "Modem Manager Connect Success"

.field private static final DEBUG:Z

.field static final MAX_NUM_OF_TENTATIVES:I = 0x1e

.field private static final MODEM_STATUS_TIMEOUT_MS:J = 0x7d0L

.field public static final MSG_MODEM_DEAD:I = 0x2

.field public static final MSG_MODEM_DOWN:I = 0x3

.field public static final MSG_MODEM_UNKNOWN:I = 0x0

.field public static final MSG_MODEM_UP:I = 0x1

.field public static final MSG_NO_MODEM:I = 0x4

.field static final SLEEP_TIME_AFTER_EXCEPTION:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "CWS_SERVICE_MGR"

.field private static mInstance:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

.field private static mModemManagerAcquisitionFailures:I

.field private static mModemManagerConnectionFailures:I

.field protected static mModemOutOfOrder:Z

.field protected static mPreviousModemStatus:I


# instance fields
.field private mAcquireFailureHandler:Landroid/os/Handler;

.field private mClientList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectFailureHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

.field private final mHandler:Landroid/os/Handler;

.field private mModemLocked:Z

.field protected mModemManager:Lcom/intel/internal/telephony/ModemStatusManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    const-string v0, "CWS_SERVICE_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    .line 59
    sput v2, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerConnectionFailures:I

    .line 60
    sput v2, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerAcquisitionFailures:I

    .line 69
    sput v2, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    .line 71
    sput-boolean v2, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemOutOfOrder:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mClientList:Landroid/os/RemoteCallbackList;

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManager:Lcom/intel/internal/telephony/ModemStatusManager;

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemLocked:Z

    .line 177
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$1;

    invoke-direct {v1, p0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$1;-><init>(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 218
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;

    invoke-direct {v1, p0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$2;-><init>(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mHandler:Landroid/os/Handler;

    .line 267
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$3;

    invoke-direct {v1, p0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$3;-><init>(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mConnectFailureHandler:Landroid/os/Handler;

    .line 314
    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$5;

    invoke-direct {v1, p0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$5;-><init>(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mAcquireFailureHandler:Landroid/os/Handler;

    .line 84
    :try_start_0
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "Creating CsmModemMgr"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    invoke-static {p1}, Lcom/intel/internal/telephony/ModemStatusManager;->getInstance(Landroid/content/Context;)Lcom/intel/internal/telephony/ModemStatusManager;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManager:Lcom/intel/internal/telephony/ModemStatusManager;

    .line 86
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManager:Lcom/intel/internal/telephony/ModemStatusManager;

    sget-object v2, Lcom/intel/internal/telephony/ModemStatus;->ALL:Lcom/intel/internal/telephony/ModemStatus;

    invoke-virtual {v1, p0, v2}, Lcom/intel/internal/telephony/ModemStatusManager;->subscribeToEvent(Lcom/intel/internal/telephony/ModemEventListener;Lcom/intel/internal/telephony/ModemStatus;)Lcom/intel/internal/telephony/ModemStatusManager;
    :try_end_0
    .catch Lcom/intel/internal/telephony/ModemClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :goto_0
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmContext;->getInstance()Lcom/intel/cws/cwsservicemanager/CsmContext;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

    .line 95
    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mContext:Landroid/content/Context;

    .line 96
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ex":Lcom/intel/internal/telephony/ModemClientException;
    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "Failed to connect to Modem Management"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    .end local v0    # "ex":Lcom/intel/internal/telephony/ModemClientException;
    :catch_1
    move-exception v0

    .line 91
    .local v0, "ex":Ljava/lang/InstantiationException;
    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "Modem Management not available on this board"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v1, 0x4

    sput v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerConnectionFailures:I

    return v0
.end method

.method static synthetic access$1000(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mAcquireFailureHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 41
    sput p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerConnectionFailures:I

    return p0
.end method

.method static synthetic access$108()I
    .locals 2

    .prologue
    .line 41
    sget v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerConnectionFailures:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerConnectionFailures:I

    return v0
.end method

.method static synthetic access$200(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmModemMgr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->acquireAsync()V

    return-void
.end method

.method static synthetic access$300(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmModemMgr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->connectAsync()V

    return-void
.end method

.method static synthetic access$402(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmModemMgr;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemLocked:Z

    return p1
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerAcquisitionFailures:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 41
    sput p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerAcquisitionFailures:I

    return p0
.end method

.method static synthetic access$508()I
    .locals 2

    .prologue
    .line 41
    sget v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerAcquisitionFailures:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerAcquisitionFailures:I

    return v0
.end method

.method static synthetic access$600(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Lcom/intel/cws/cwsservicemanager/CsmContext;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

    return-object v0
.end method

.method static synthetic access$700(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mClientList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mConnectFailureHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private acquireAsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 327
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "acquireAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemOutOfOrder:Z

    if-eqz v0, :cond_2

    .line 330
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "Modem Out Of Order - avoid acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_1
    :goto_0
    return-void

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManager:Lcom/intel/internal/telephony/ModemStatusManager;

    if-eqz v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManager:Lcom/intel/internal/telephony/ModemStatusManager;

    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$6;

    invoke-direct {v1, p0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$6;-><init>(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V

    invoke-virtual {v0, v1}, Lcom/intel/internal/telephony/ModemStatusManager;->acquireModemAsync(Lcom/intel/internal/telephony/AsyncOperationResultListener;)V

    goto :goto_0

    .line 355
    :cond_3
    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "acquireAsync - mModemManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v1, "acquireAsync - mModemManager is null"

    invoke-direct {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private connectAsync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    .prologue
    .line 280
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "connectAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemOutOfOrder:Z

    if-eqz v0, :cond_2

    .line 283
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "Modem Out Of Order - avoid connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_1
    :goto_0
    return-void

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManager:Lcom/intel/internal/telephony/ModemStatusManager;

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManager:Lcom/intel/internal/telephony/ModemStatusManager;

    const-string v1, "CSM Client"

    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$4;

    invoke-direct {v2, p0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$4;-><init>(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V

    invoke-virtual {v0, v1, v2}, Lcom/intel/internal/telephony/ModemStatusManager;->connectAsync(Ljava/lang/String;Lcom/intel/internal/telephony/AsyncOperationResultListener;)V

    goto :goto_0

    .line 309
    :cond_3
    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "connectAsync - mModemManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v1, "connectAsync - mModemManager is null"

    invoke-direct {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/intel/cws/cwsservicemanager/CsmModemMgr;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-direct {v0, p0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    .line 102
    :cond_0
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    return-object v0
.end method


# virtual methods
.method public addClient(Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;)V
    .locals 4
    .param p1, "client"    # Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;

    .prologue
    .line 106
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "addClient"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    if-eqz p1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mClientList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 111
    const/4 v1, 0x1

    :try_start_0
    sget v2, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    if-ne v1, v2, :cond_2

    .line 112
    invoke-interface {p1}, Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;->mmgrClbkModemAvailable()V

    .line 113
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "addClient client.mmgrClbkModemAvailable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "addClient client.mmgrClbkModemUnavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_3
    sget v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    invoke-interface {p1, v1}, Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;->mmgrClbkModemUnavailable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mClientList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 120
    const-string v1, "CWS_SERVICE_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception sending modem status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized lockModem()V
    .locals 3

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "lockModem"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    iget-boolean v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemLocked:Z

    if-nez v1, :cond_3

    .line 134
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemLocked:Z

    .line 136
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "Setting modem state to locked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    const/4 v1, 0x0

    sput v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerConnectionFailures:I

    .line 139
    const/4 v1, 0x0

    sput v1, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManagerAcquisitionFailures:I

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "Modem Manager Connect Success"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "Modem Manager Connect Failure"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "Modem Manager Acquire Success"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "Modem Manager Acquire Failure"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    :cond_2
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->connectAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onModemDead()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 384
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "EVENT_MODEM_DEAD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    sget v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    if-eq v2, v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 387
    const/4 v0, 0x2

    sput v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    .line 390
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemOutOfOrder:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onModemDown()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 362
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "EVENT_MODEM_DOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value of mPreviousModemStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemOutOfOrder:Z

    .line 367
    sget v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    if-eq v3, v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 369
    const/4 v0, 0x3

    sput v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :cond_2
    monitor-exit p0

    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onModemUp()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 374
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "EVENT_MODEM_UP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    sget v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    if-eq v2, v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 377
    const/4 v0, 0x1

    sput v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mPreviousModemStatus:I

    .line 380
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemOutOfOrder:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeClient(Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;)V
    .locals 1
    .param p1, "client"    # Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mClientList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 129
    :cond_0
    return-void
.end method

.method public declared-synchronized unlockModem()V
    .locals 5

    .prologue
    .line 155
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :try_start_1
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManager:Lcom/intel/internal/telephony/ModemStatusManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 167
    :try_start_3
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->mModemManager:Lcom/intel/internal/telephony/ModemStatusManager;

    invoke-virtual {v2}, Lcom/intel/internal/telephony/ModemStatusManager;->releaseModem()V
    :try_end_3
    .catch Lcom/intel/internal/telephony/ModemClientException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    :goto_1
    monitor-exit p0

    return-void

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_4
    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "mReceiver is already unregistered"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 155
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 168
    :catch_1
    move-exception v0

    .line 169
    .local v0, "e":Lcom/intel/internal/telephony/ModemClientException;
    :try_start_5
    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during releaseModem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 172
    .end local v0    # "e":Lcom/intel/internal/telephony/ModemClientException;
    :cond_1
    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "unlockModem - mModemManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "unlockModem - mModemManager is null"

    invoke-direct {v2, v3}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
