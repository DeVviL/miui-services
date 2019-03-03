.class public Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;
.super Ljava/lang/Object;
.source "CsmUiccMgr.java"


# static fields
.field private static final DEBUG:Z

.field private static final GOOD_RESPONSE:[B

.field private static final INITIAL_SUPPORTED_CHANNELS:I = 0x6

.field private static final INS_ACTIVATE_FILE:I = 0x44

.field private static final INS_AUTHENTICATE_1:I = 0x88

.field private static final INS_AUTHENTICATE_2:I = 0x89

.field private static final INS_CHANGE_PIN:I = 0x24

.field private static final INS_DEACTIVATE_FILE:I = 0x4

.field private static final INS_DISABLE_PIN:I = 0x26

.field private static final INS_ENABLE_PIN:I = 0x28

.field private static final INS_ENVELOPE:I = 0xc2

.field private static final INS_FETCH:I = 0x12

.field private static final INS_GET_CHALLENGE:I = 0x84

.field private static final INS_GET_RESPONSE:I = 0xc0

.field private static final INS_INCREASE:I = 0x32

.field private static final INS_MANAGE_CHANNEL:I = 0x70

.field private static final INS_MANAGE_SECURE_CHANNEL:I = 0x73

.field private static final INS_READ_BINARY:I = 0xb0

.field private static final INS_READ_RECORD:I = 0xb2

.field private static final INS_RETRIEVE_DATA:I = 0xcb

.field private static final INS_SEARCH_RECORD:I = 0xa2

.field private static final INS_SELECT_FILE:I = 0xa4

.field private static final INS_SET_DATA:I = 0xdb

.field private static final INS_STATUS:I = 0xf2

.field private static final INS_TERMINAL_CAPACITY:I = 0xaa

.field private static final INS_TERMINAL_PROFILE:I = 0x10

.field private static final INS_TERMINAL_RESPONSE:I = 0x14

.field private static final INS_TRANSACT_DATA:I = 0x75

.field private static final INS_UNBLOCK_PIN:I = 0x2c

.field private static final INS_UPDATE_BYNARY:I = 0xd6

.field private static final INS_UPDATE_RECORD:I = 0xdc

.field private static final INS_VERIFY:I = 0x20

.field private static final OEM_TELEPHONY_INTERFACE_NAME:Ljava/lang/String; = "oemtelephony"

.field private static final P1_CLOSE_CHANNEL:I = 0x80

.field private static final P1_OPEN_CHANNEL:I = 0x0

.field private static final P1_SELECT_BY_DF_NAME:I = 0x4

.field private static final P1_SELECT_FROM_CURRENT_DF:I = 0x9

.field private static final P2_SELECT_FILE_BEGIN_NO_INFO_2G:I = 0x0

.field private static final P2_SELECT_FILE_BEGIN_NO_INFO_3G:I = 0xc

.field private static final P2_USIM:I = 0x4

.field private static final PKCS15_AID:[B

.field private static final TAG:Ljava/lang/String; = "CWS_SERVICE_MGR"

.field private static final TELEPHONY_INTERFACE_NAME:Ljava/lang/String; = "phone"

.field private static final USIM_REQUEST:[B

.field private static mInstance:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIs3G:Z

.field private mMapChannels:Ljava/util/HashMap;

.field private mOemPhone:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

.field private mPhone:Lcom/android/internal/telephony/ITelephony;

.field private mSimStatusReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x2

    const-string v0, "CWS_SERVICE_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->USIM_REQUEST:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->GOOD_RESPONSE:[B

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->PKCS15_AID:[B

    return-void

    :array_0
    .array-data 1
        0x3ft
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x70t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x0t
        0x63t
        0x50t
        0x4bt
        0x43t
        0x53t
        0x2dt
        0x31t
        0x35t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    iput-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mOemPhone:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mMapChannels:Ljava/util/HashMap;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mIs3G:Z

    iput-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mSimStatusReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "Creating CsmUiccMgr"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->checkIfUsim()V
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr$1;

    invoke-direct {v2, p0}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr$1;-><init>(Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;)V

    iput-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mSimStatusReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "Registering for SIM status change"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mSimStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mMapChannels:Ljava/util/HashMap;

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v0

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "mSimStatusReceiver - error checking SIM type"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->checkIfUsim()V

    return-void
.end method

.method static synthetic access$200(Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mMapChannels:Ljava/util/HashMap;

    return-object v0
.end method

.method private static checkForApduError([B)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v0, p0

    const/4 v5, 0x2

    if-le v5, v0, :cond_1

    sget-boolean v4, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "CWS_SERVICE_MGR"

    const-string v5, "checkForApduError - array too short"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v3

    :cond_1
    add-int/lit8 v5, v0, -0x2

    aget-byte v1, p0, v5

    add-int/lit8 v5, v0, -0x1

    aget-byte v2, p0, v5

    sget-boolean v5, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "CWS_SERVICE_MGR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkForApduError - SW1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - SW2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v5, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->GOOD_RESPONSE:[B

    aget-byte v5, v5, v3

    if-ne v5, v1, :cond_4

    sget-object v5, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->GOOD_RESPONSE:[B

    aget-byte v5, v5, v4

    if-ne v5, v2, :cond_4

    sget-boolean v3, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "CWS_SERVICE_MGR"

    const-string v5, "checkForApduError - positive returned code"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    sget-boolean v4, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "CWS_SERVICE_MGR"

    const-string v5, "checkForApduError - negative returned code"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkIfUsim()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mOemPhone:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->getOemTelephonyInterface()Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mOemPhone:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mOemPhone:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    const-string v3, "AT+XUICC?"

    invoke-interface {v2, v3}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;->sendAtCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AT+XUICC? = |"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v2, "+XUICC: 0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "2G SIM detected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mIs3G:Z

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUsim - RemoteException - sendAtCommand failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v2, "+XUICC: 1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "CWS_SERVICE_MGR"

    const-string v3, "3G USIM detected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mIs3G:Z

    goto :goto_0

    :cond_5
    const-string v2, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected response from AT+XUICC command : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCla(IIZ)I
    .locals 2

    const/16 v0, 0xf

    if-gt v0, p1, :cond_1

    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "Uicc getCla - channel out of range - Logical channel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    :cond_1
    if-nez p3, :cond_3

    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "getCla - 2G SIM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit16 p1, p1, 0xa0

    :goto_0
    :sswitch_0
    return p1

    :cond_3
    sparse-switch p2, :sswitch_data_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "Uicc getCla - inst not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    goto :goto_0

    :sswitch_1
    const/16 p1, 0x80

    goto :goto_0

    :sswitch_2
    add-int/lit16 p1, p1, 0x80

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
        0x12 -> :sswitch_1
        0x14 -> :sswitch_1
        0x20 -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x2c -> :sswitch_0
        0x32 -> :sswitch_2
        0x44 -> :sswitch_0
        0x70 -> :sswitch_0
        0x73 -> :sswitch_0
        0x75 -> :sswitch_0
        0x84 -> :sswitch_0
        0x88 -> :sswitch_0
        0x89 -> :sswitch_0
        0xa2 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xaa -> :sswitch_2
        0xb0 -> :sswitch_0
        0xb2 -> :sswitch_0
        0xc0 -> :sswitch_0
        0xc2 -> :sswitch_1
        0xcb -> :sswitch_2
        0xd6 -> :sswitch_0
        0xdb -> :sswitch_2
        0xdc -> :sswitch_0
        0xf2 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;
    .locals 1

    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    invoke-direct {v0, p0}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    :cond_0
    sget-object v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mInstance:Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;

    return-object v0
.end method

.method private getOemTelephonyInterface()Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "oemtelephony"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "Impossible to get oem Telephony Interface"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v2, "Impossible to get oem Telephony Interface"

    invoke-direct {v1, v2}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "Impossible to get Telephony Interface"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v2, "Impossible to get Telephony Interface"

    invoke-direct {v1, v2}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public closeChannel(B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mMapChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    const-string v4, "CWS_SERVICE_MGR"

    const-string v5, "Uicc closeChannel - channel not open"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v5, "Uicc closeChannel - channel not open"

    invoke-direct {v4, v5}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    if-nez v4, :cond_1

    const-string v4, "CWS_SERVICE_MGR"

    const-string v5, "Uicc closeChannel - mPhone is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v5, "Uicc closeChannel - mPhone is null"

    invoke-direct {v4, v5}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v4, "CWS_SERVICE_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccCloseLogicalChannel - closingChannel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(I)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v4, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "CWS_SERVICE_MGR"

    const-string v5, "iccCloseLogicalChannel - channel closed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const/16 v4, 0x20

    if-eq v4, p1, :cond_4

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mMapChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_3
    :try_start_1
    const-string v4, "CWS_SERVICE_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccCloseLogicalChannel - error closing channel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "CWS_SERVICE_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uicc closeChannel - RemoteException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/intel/cws/cwsservicemanager/CsmException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uicc closeChannel - RemoteException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    sget-boolean v4, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "CWS_SERVICE_MGR"

    const-string v5, "Basic channel is not removed from mMapChannels"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mMapChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public isUsim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mIs3G:Z

    return v0
.end method

.method public openChannel(B)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x70

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Uicc openChannel - id: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mMapChannels:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CWS_SERVICE_MGR"

    const-string v15, "Uicc openChannel - Logical channel already open"

    invoke-static {v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->getTelephonyInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_11

    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Uicc openChannel - hasIccCard(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->PKCS15_AID:[B

    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "openIccLogicalChannel - AID: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, v8}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Landroid/telephony/IccOpenLogicalChannelResponse;->getStatus()I

    move-result v1

    const/4 v15, 0x1

    if-ne v1, v15, :cond_8

    invoke-virtual {v13}, Landroid/telephony/IccOpenLogicalChannelResponse;->getChannel()I

    move-result v10

    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "iccOpenLogicalChannel - channel: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    if-nez v10, :cond_12

    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "CWS_SERVICE_MGR"

    const-string v15, "Uicc openChannel - try using transmitIccBasicChannel"

    invoke-static {v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mIs3G:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v1}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->getCla(IIZ)I

    move-result v2

    if-gez v2, :cond_b

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Uicc openChannel - invalid cla: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v15, "Error getting the cla"

    invoke-direct {v1, v15}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v12

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Uicc openChannel - RemoteException: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Uicc openChannel - RemoteException: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :try_start_1
    const-string v1, "CWS_SERVICE_MGR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failure opening UICC logical channel: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Landroid/telephony/IccOpenLogicalChannelResponse;->getStatus()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    const-string v1, "CWS_SERVICE_MGR"

    const-string v15, "Failure opening UICC logical channel"

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    const-string v1, "CWS_SERVICE_MGR"

    const-string v15, "Invalid PKCS15 AID!"

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v1, :cond_c

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Uicc openChannel - cla: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    if-nez v9, :cond_d

    const-string v1, "CWS_SERVICE_MGR"

    const-string v15, "Error converting the received response into byte array"

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v15, "Error converting the received response into byte array"

    invoke-direct {v1, v15}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v1, :cond_e

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "transmitIccBasicChannel ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v9

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "):"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-static {v9}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->checkForApduError([B)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v1, :cond_f

    const-string v1, "CWS_SERVICE_MGR"

    const-string v15, "Uicc openChannel - good response"

    invoke-static {v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v1, 0x0

    aget-byte v10, v9, v1

    if-nez v10, :cond_12

    const-string v1, "CWS_SERVICE_MGR"

    const-string v15, "Uicc openChannel - Error"

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v15, "Uicc openChannel - Error"

    invoke-direct {v1, v15}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    const-string v1, "CWS_SERVICE_MGR"

    const-string v15, "Uicc openChannel - bad response"

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v15, "Error opening the channel"

    invoke-direct {v1, v15}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    const-string v1, "CWS_SERVICE_MGR"

    const-string v15, "Uicc openChannel - mPhone is null."

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v15, "Uicc openChannel - mPhone is null"

    invoke-direct {v1, v15}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_12
    if-eqz v10, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mMapChannels:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_13
    const-string v1, "CWS_SERVICE_MGR"

    const-string v15, "Uicc openChannel - Unable to open a channel"

    invoke-static {v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v15, "Uicc openChannel - Unable to open a channel"

    invoke-direct {v1, v15}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readBinary(B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    const/4 v9, 0x0

    const/16 v2, 0xb0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v7, v9, [B

    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readUiccFile - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->transmitAPDU(BIIII[B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    if-nez v7, :cond_2

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "readBinary - byteResponse is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v7, v9, [B

    :cond_1
    :goto_0
    return-object v7

    :cond_2
    invoke-static {v7}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->checkForApduError([B)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readBinary - good response: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readBinary - bad response: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-array v7, v9, [B

    goto :goto_0
.end method

.method public selectAid(B[B)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    const/4 v9, 0x0

    const/16 v2, 0xa4

    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object v6, p2

    array-length v5, v6

    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "selectUiccPkcs15 - "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mIs3G:Z

    if-eqz v0, :cond_1

    const/16 v4, 0xc

    :goto_0
    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->transmitAPDU(BIIII[B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    if-nez v7, :cond_2

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "Error converting the received response into byte array"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    :goto_1
    return v0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v7}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->checkForApduError([B)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selectUiccPkcs15 - good response: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "selectUiccPkcs15 - bad response: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v9

    goto :goto_1
.end method

.method public selectEf(B[B)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    const/4 v9, 0x0

    const/16 v2, 0xa4

    const/16 v3, 0x9

    const/4 v4, 0x0

    array-length v5, p2

    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectUiccFile - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    array-length v0, p2

    if-nez v0, :cond_1

    move v0, v9

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mIs3G:Z

    if-eqz v0, :cond_2

    const/16 v4, 0xc

    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->transmitAPDU(BIIII[B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    if-nez v7, :cond_3

    const-string v0, "CWS_SERVICE_MGR"

    const-string v1, "Error converting the received response into byte array"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v1, "Uicc selectEf - Error converting into byte array"

    invoke-direct {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    invoke-static {v7}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->checkForApduError([B)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectUiccFile - good response: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectUiccFile - bad response: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v0, v9

    goto :goto_0
.end method

.method public transmitAPDU(BIIII[B)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mMapChannels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-nez v9, :cond_0

    const-string v0, "CWS_SERVICE_MGR"

    const-string v3, "Uicc transmitAPDU - channel not open"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "Uicc transmitAPDU - channel not open"

    invoke-direct {v0, v3}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-boolean v0, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mIs3G:Z

    invoke-direct {p0, v1, p2, v0}, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->getCla(IIZ)I

    move-result v2

    if-gez v2, :cond_1

    const-string v0, "CWS_SERVICE_MGR"

    const-string v3, "Uicc transmitAPDU - invalid cla"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "Uicc transmitAPDU - invalid cla"

    invoke-direct {v0, v3}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p6 .. p6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v7

    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uicc transmitAPDU - cla: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uicc transmitAPDU - channel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_4

    const-string v0, "CWS_SERVICE_MGR"

    const-string v3, "Uicc transmitAPDU - mPhone is null."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "Uicc transmitAPDU - mPhone is null"

    invoke-direct {v0, v3}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->mPhone:Lcom/android/internal/telephony/ITelephony;

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUiccMgr;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iccTransmitApduLogicalChannel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v10

    :catch_0
    move-exception v8

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uicc transmitAPDU - RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "Uicc transmitAPDU - RemoteException"

    invoke-direct {v0, v3}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
