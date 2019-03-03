.class public Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;
.super Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;
.source "CwsServiceMgr.java"


# static fields
.field public static final CSM_ERROR_AT_SENDER_NOT_AVAILABLE:I = -0x10

.field public static final CSM_ERROR_CLOSE_CHANNEL_EXCEPTION:I = -0xa

.field public static final CSM_ERROR_CONTEXT_NULL:I = -0x1

.field public static final CSM_ERROR_INVALID_PARAMETER:I = -0x11

.field public static final CSM_ERROR_IS_USIM_EXCEPTION:I = -0x8

.field public static final CSM_ERROR_LOCK_MODEM_EXCEPTION:I = -0x6

.field public static final CSM_ERROR_MODEM_MGR_NULL:I = -0x2

.field public static final CSM_ERROR_NONE:I = 0x0

.field public static final CSM_ERROR_OPEN_CHANNEL_EXCEPTION:I = -0x9

.field public static final CSM_ERROR_READ_BYNARY_EXCEPTION:I = -0xc

.field public static final CSM_ERROR_SELECT_AID_EXCEPTION:I = -0xe

.field public static final CSM_ERROR_SELECT_EF_EXCEPTION:I = -0xd

.field public static final CSM_ERROR_TRANSMIT_APDU_EXCEPTION:I = -0xb

.field public static final CSM_ERROR_UICC_MGR_NULL:I = -0x3

.field public static final CSM_ERROR_UID_NOT_AUTHORIZED:I = -0xf

.field public static final CSM_ERROR_UNLOCK_MODEM_EXCEPTION:I = -0x7

.field public static final CSM_ERROR_UNSUPPORTED_TYPE:I = -0x5

.field public static final CSM_MODEM_CALLBACK:I = 0x0

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CWS_SERVICE_MGR"

.field private static mInstance:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;


# instance fields
.field private mAtMgr:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

.field private mAtSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

.field private mContext:Landroid/content/Context;

.field private mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

.field private mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

.field private mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

.field private mLastError:I

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "CWS_SERVICE_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;-><init>()V

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mAtMgr:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mAtSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    new-instance v1, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;

    invoke-direct {v1, p0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;-><init>(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;)V

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "CwsServiceMgr constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmContext;->getInstance()Lcom/intel/cws/cwsservicemanager/CsmContext;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->getInstance(Landroid/content/Context;)Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->getInstance(Landroid/content/Context;)Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

    if-nez v1, :cond_3

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "mCsmContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    iput v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/intel/cws/cwsservicemanager/CsmContext;->setContext(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    if-nez v1, :cond_4

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "mCsmModemMgr is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    iput v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    if-nez v1, :cond_2

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "mCsmUiccMgr is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x3

    iput v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;)Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;
    .locals 1

    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mAtMgr:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    return-object v0
.end method

.method static synthetic access$102(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;)Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;
    .locals 0

    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mAtMgr:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    return-object p1
.end method

.method static synthetic access$200(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;)Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;
    .locals 0

    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mAtSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    return-object p1
.end method

.method private csmIsAllowedUid(I)Z
    .locals 3

    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x3e8

    if-eq v0, p1, :cond_1

    const/16 v0, 0x403

    if-eq v0, p1, :cond_1

    const/16 v0, 0x3f2

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "Only SYSTEM_UID or NFC_UID or WIFI_UID can access this service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xf

    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;
    .locals 2

    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "Singleton CwsServiceMgr - getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    if-nez v0, :cond_1

    new-instance v0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    invoke-direct {v0, p0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    :cond_1
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    return-object v0
.end method


# virtual methods
.method public atSendCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "atSendCmd - command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "atSendCmd - calling UID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mAtSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    if-nez v2, :cond_4

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "atSendCmd - AT sender not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x10

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "atSendCmd - wrong AT command"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x11

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mAtSender:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    invoke-virtual {v2, p1}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;->SendCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "atSendCmd - response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public csmRegisterCallback(ILandroid/os/IBinder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "csmRegisterCallback - calling UID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "csmRegisterCallback type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    packed-switch p1, :pswitch_data_0

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "Not supported type"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, -0x5

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    :pswitch_0
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "Registering modem manager callbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {p2}, Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-virtual {v2, v1}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->addClient(Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;)V

    goto :goto_0

    :cond_5
    const/4 v2, -0x2

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public csmStart(B)V
    .locals 5

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "csmStart"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "csmStart - calling UID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

    if-nez v2, :cond_3

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "mCsmContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    if-nez v2, :cond_4

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "mCsmModemMgr is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

    invoke-virtual {v2, p1}, Lcom/intel/cws/cwsservicemanager/CsmContext;->addConnection(B)V

    :try_start_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-virtual {v2}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->lockModem()V
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "lockModem exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x6

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0
.end method

.method public csmStop(B)V
    .locals 5

    const/4 v2, 0x0

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "csmStop - calling UID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

    if-nez v2, :cond_3

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "mCsmContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    if-nez v2, :cond_4

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "mCsmModemMgr is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

    invoke-virtual {v2, p1}, Lcom/intel/cws/cwsservicemanager/CsmContext;->removeConnection(B)V

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmContext:Lcom/intel/cws/cwsservicemanager/CsmContext;

    invoke-virtual {v2}, Lcom/intel/cws/cwsservicemanager/CsmContext;->isAnyCwsRadioConnected()Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "No more radio client connected - unlock modem"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-virtual {v2}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->unlockModem()V
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "unlockModem exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x7

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0
.end method

.method public csmUnregisterCallback(ILandroid/os/IBinder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "csmUnregisterCallback type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "csmUnregisterCallback - calling UID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "Not supported type"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, -0x5

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    :pswitch_0
    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "Unregistering modem manager callbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {p2}, Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmModemMgr:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-virtual {v2, v1}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->removeClient(Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener;)V

    goto :goto_0

    :cond_5
    const/4 v2, -0x2

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getLastError()I
    .locals 1

    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    return v0
.end method

.method public uiccBeginTransaction(B)V
    .locals 5

    const/4 v2, 0x0

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uiccBeginTransaction - calling UID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    if-nez v2, :cond_2

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "mCsmUiccMgr is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x3

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    invoke-virtual {v2, p1}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->openChannel(B)V
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "openChannel exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x9

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0
.end method

.method public uiccEndTransaction(B)V
    .locals 5

    const/4 v2, 0x0

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uiccEndTransaction - calling UID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    if-nez v2, :cond_2

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "mCsmUiccMgr is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x3

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    invoke-virtual {v2, p1}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->closeChannel(B)V
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "closeChannel exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0xa

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0
.end method

.method public uiccIsUsim()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sget-boolean v3, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "CWS_SERVICE_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uiccIsUsim - calling UID is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    if-nez v3, :cond_2

    const-string v3, "CWS_SERVICE_MGR"

    const-string v4, "mCsmUiccMgr is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x3

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    invoke-virtual {v3}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->isUsim()Z
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "CWS_SERVICE_MGR"

    const-string v4, "isUsim exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x8

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0
.end method

.method public uiccReadBinary(B)[B
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sget-boolean v3, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "CWS_SERVICE_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uiccReadBinary - calling UID is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    if-nez v3, :cond_2

    const-string v3, "CWS_SERVICE_MGR"

    const-string v4, "mCsmUiccMgr is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x3

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    invoke-virtual {v3, p1}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->readBinary(B)[B
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "CWS_SERVICE_MGR"

    const-string v4, "readBinary exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0xc

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0
.end method

.method public uiccSelectAid(B[B)Z
    .locals 6

    const/4 v2, 0x0

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sget-boolean v3, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "CWS_SERVICE_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uiccSelectAid - calling UID is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    if-nez v3, :cond_2

    const-string v3, "CWS_SERVICE_MGR"

    const-string v4, "mCsmUiccMgr is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x3

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    invoke-virtual {v3, p1, p2}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->selectAid(B[B)Z
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "CWS_SERVICE_MGR"

    const-string v4, "selectAid exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0xe

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0
.end method

.method public uiccSelectEf(B[B)Z
    .locals 6

    const/4 v2, 0x0

    iput v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sget-boolean v3, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "CWS_SERVICE_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uiccSelectEf - calling UID is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    if-nez v3, :cond_2

    const-string v3, "CWS_SERVICE_MGR"

    const-string v4, "mCsmUiccMgr is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x3

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    invoke-virtual {v3, p1, p2}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->selectEf(B[B)Z
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "CWS_SERVICE_MGR"

    const-string v4, "selectEf exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0xd

    iput v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    goto :goto_0
.end method

.method public uiccTransmitAPDU(BIIII[B)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uiccTransmitAPDU - calling UID is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v7}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->csmIsAllowedUid(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    if-nez v0, :cond_2

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "mCsmUiccMgr is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mCsmUiccMgr:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->transmitAPDU(BIIII[B)Ljava/lang/String;
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "transmitAPDU exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xb

    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->mLastError:I

    const/4 v0, 0x0

    goto :goto_0
.end method
