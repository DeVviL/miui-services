.class public Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;
.super Lcom/intel/internal/cellcoex/service/ICwsCellCoexServiceMgr$Stub;
.source "CellCoexServiceMgr.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;


# static fields
.field public static final ACTION_CELLCOEX_UNBLOCK_BOOT:Ljava/lang/String; = "intel.intent.action.ACTION_CELLCOEX_UNBLOCK_BOOT"

.field private static final CLASSNAME:Ljava/lang/String; = "CellCoexServiceMgr"

.field private static final COEX_BT_NRT_PROP:Ljava/lang/String; = "persist.cellcoex.bt.nrt"

.field private static final COEX_BT_RT_PROP:Ljava/lang/String; = "persist.cellcoex.bt.rt"

.field private static final COEX_WIFI_NRT_PROP:Ljava/lang/String; = "persist.cellcoex.wifi.nrt"

.field private static final COEX_WIFI_RT_PROP:Ljava/lang/String; = "persist.cellcoex.wifi.rt"

.field private static final DEBUG:Z

.field public static final IDC_ERROR_BTCOEXMGR_NULL:I = -0x4

.field public static final IDC_ERROR_COEXPROPBUS_FAILURE:I = -0x5

.field public static final IDC_ERROR_CWSCOEXHANDLER_NULL:I = 0x15

.field public static final IDC_ERROR_MWSCOEXMGR_NULL:I = -0x1

.field public static final IDC_ERROR_NONE:I = 0x0

.field public static final IDC_ERROR_WIFICOEXMGR_NULL:I = -0x3

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"

.field private static sBtCoexMgr:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

.field private static sCoexPropertyMgrInstance:Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

.field private static sCoexPropertyTest:Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

.field private static sContext:Landroid/content/Context;

.field private static sCwsCoexHandlerPluginInstance:Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;

.field private static sIBtCoexHandler:Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;

.field private static sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

.field private static sIWifiCoexHandler:Lcom/intel/internal/cellcoex/handler/IWifiCoexHandler;

.field private static sInstance:Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;

.field private static sIsStandaloneApk:Z

.field private static sLastError:I

.field private static sMwsCoexMgr:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

.field private static sWifiCoexMgr:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    const-string v0, "CWS_CELLCOEX_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->DEBUG:Z

    .line 64
    sput-object v2, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sCoexPropertyMgrInstance:Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

    .line 65
    sput-object v2, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    .line 67
    sput-object v2, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sCwsCoexHandlerPluginInstance:Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;

    .line 68
    sput-object v2, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sIBtCoexHandler:Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;

    .line 69
    sput-object v2, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sIWifiCoexHandler:Lcom/intel/internal/cellcoex/handler/IWifiCoexHandler;

    .line 70
    sput-object v2, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sCoexPropertyTest:Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    .line 72
    const/4 v0, 0x0

    sput v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sLastError:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selfRegister"    # Z

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/ICwsCellCoexServiceMgr$Stub;-><init>()V

    .line 180
    new-instance v1, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr$1;

    invoke-direct {v1, p0}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr$1;-><init>(Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;)V

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "CWS_CELLCOEX_MGR"

    const-string v2, "CellCoexServiceMgr constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sLastError:I

    .line 117
    sput-boolean p2, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sIsStandaloneApk:Z

    .line 119
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sIsStandaloneApk:Z

    if-eqz v1, :cond_1

    .line 120
    const-string v1, "cellcoexistence"

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 122
    :cond_1
    sput-object p1, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sContext:Landroid/content/Context;

    .line 124
    sget-object v1, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 126
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sIsStandaloneApk:Z

    if-eqz v1, :cond_2

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "intel.intent.action.OEM_TELEPHONY_READY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "filter":Landroid/content/IntentFilter;
    :goto_0
    const-string v1, "intel.intent.action.ACTION_CELLCOEX_UNBLOCK_BOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    sget-object v1, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    return-void

    .line 129
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .restart local v0    # "filter":Landroid/content/IntentFilter;
    goto :goto_0

    .line 134
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3
    const-string v1, "CWS_CELLCOEX_MGR"

    const-string v2, "CellCoexServiceMgrconstructor: null context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v1, Lcom/intel/internal/cellcoex/service/CellCoexException;

    const-string v2, "CellCoexServiceMgrconstructor: null context"

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/service/CellCoexException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sIsStandaloneApk:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000()Lcom/intel/internal/cellcoex/service/BtCoexMgr;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sBtCoexMgr:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/service/BtCoexMgr;
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    .prologue
    .line 48
    sput-object p0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sBtCoexMgr:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/intel/internal/cellcoex/test/CoexPropertyTest;)Lcom/intel/internal/cellcoex/test/CoexPropertyTest;
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    .prologue
    .line 48
    sput-object p0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sCoexPropertyTest:Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    return-object p0
.end method

.method static synthetic access$1200()V
    .locals 0

    .prologue
    .line 48
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->finalizeBootProcess()V

    return-void
.end method

.method static synthetic access$202(Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;)Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

    .prologue
    .line 48
    sput-object p0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sCoexPropertyMgrInstance:Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

    return-object p0
.end method

.method static synthetic access$300()Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sMwsCoexMgr:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    return-object v0
.end method

.method static synthetic access$302(Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    .prologue
    .line 48
    sput-object p0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sMwsCoexMgr:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    return-object p0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 48
    sput p0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sLastError:I

    return p0
.end method

.method static synthetic access$600()Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sCwsCoexHandlerPluginInstance:Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;)Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;

    .prologue
    .line 48
    sput-object p0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sCwsCoexHandlerPluginInstance:Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;

    return-object p0
.end method

.method static synthetic access$700()Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sIBtCoexHandler:Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;)Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;

    .prologue
    .line 48
    sput-object p0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sIBtCoexHandler:Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;

    return-object p0
.end method

.method static synthetic access$800()Lcom/intel/internal/cellcoex/handler/IWifiCoexHandler;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sIWifiCoexHandler:Lcom/intel/internal/cellcoex/handler/IWifiCoexHandler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/intel/internal/cellcoex/handler/IWifiCoexHandler;)Lcom/intel/internal/cellcoex/handler/IWifiCoexHandler;
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/handler/IWifiCoexHandler;

    .prologue
    .line 48
    sput-object p0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sIWifiCoexHandler:Lcom/intel/internal/cellcoex/handler/IWifiCoexHandler;

    return-object p0
.end method

.method static synthetic access$900()Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sWifiCoexMgr:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    return-object v0
.end method

.method static synthetic access$902(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    .prologue
    .line 48
    sput-object p0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sWifiCoexMgr:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    return-object p0
.end method

.method private static final finalizeBootProcess()V
    .locals 3

    .prologue
    const/4 v2, -0x5

    .line 140
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "CWS_CELLCOEX_MGR"

    const-string v1, "CellCoexServiceMgr finalizeBootProcess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->getInstance(Landroid/content/Context;)Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;

    move-result-object v0

    sget-object v1, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sCoexPropertyMgrInstance:Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

    invoke-virtual {v0, v1}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->registerToPropertyBus(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sMwsCoexMgr:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    sget-object v1, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sCoexPropertyMgrInstance:Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

    invoke-interface {v0, v1}, Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;->registerToPropertyBus(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sBtCoexMgr:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    sget-object v1, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sCoexPropertyMgrInstance:Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

    invoke-interface {v0, v1}, Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;->registerToPropertyBus(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sWifiCoexMgr:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    sget-object v1, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sCoexPropertyMgrInstance:Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

    invoke-interface {v0, v1}, Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;->registerToPropertyBus(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sCoexPropertyTest:Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    sget-object v1, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sCoexPropertyMgrInstance:Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

    invoke-interface {v0, v1}, Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;->registerToPropertyBus(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sIBtCoexHandler:Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;

    sget-object v1, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sCoexPropertyMgrInstance:Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

    invoke-interface {v0, v1}, Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;->registerToPropertyBus(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sIWifiCoexHandler:Lcom/intel/internal/cellcoex/handler/IWifiCoexHandler;

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;

    sget-object v1, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sCoexPropertyMgrInstance:Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

    invoke-interface {v0, v1}, Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;->registerToPropertyBus(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    :cond_1
    const-string v0, "CWS_CELLCOEX_MGR"

    const-string v1, "CellCoexServiceMgrError while adding coex property nodes"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sput v2, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sLastError:I

    .line 178
    :goto_0
    return-void

    .line 160
    :cond_2
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 161
    const-string v0, "CWS_CELLCOEX_MGR"

    const-string v1, "CellCoexServiceMgr initPropNodes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_3
    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sCoexPropertyMgrInstance:Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->initPropNodes()Z

    move-result v0

    if-nez v0, :cond_4

    .line 167
    const-string v0, "CWS_CELLCOEX_MGR"

    const-string v1, "CellCoexServiceMgrError while initializing coex property dictionnary"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sput v2, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sLastError:I

    goto :goto_0

    .line 172
    :cond_4
    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sMwsCoexMgr:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->init()V

    .line 173
    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sBtCoexMgr:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->init()V

    .line 174
    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sWifiCoexMgr:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->init()V

    .line 175
    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sIBtCoexHandler:Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;

    invoke-interface {v0}, Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;->init()V

    .line 176
    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sIWifiCoexHandler:Lcom/intel/internal/cellcoex/handler/IWifiCoexHandler;

    invoke-interface {v0}, Lcom/intel/internal/cellcoex/handler/IWifiCoexHandler;->init()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "CWS_CELLCOEX_MGR"

    const-string v1, "Singleton CellCoexServiceMgr - getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->getServiceInstance(Landroid/content/Context;Z)Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceInstance(Landroid/content/Context;Z)Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selfRegister"    # Z

    .prologue
    .line 99
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "CWS_CELLCOEX_MGR"

    const-string v1, "Singleton CellCoexServiceMgr - getServiceInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sInstance:Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;

    if-nez v0, :cond_2

    .line 103
    const-class v1, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sInstance:Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;

    invoke-direct {v0, p0, p1}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sInstance:Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;

    .line 107
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_2
    sget-object v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sInstance:Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public checkPropCatalog()Z
    .locals 2

    .prologue
    .line 321
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 322
    const-string v0, "CWS_CELLCOEX_MGR"

    const-string v1, "CellCoexServiceMgrcheckPropCatalog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 269
    sget v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sLastError:I

    return v0
.end method

.method public getProvidedPropList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 286
    const-string v1, "CWS_CELLCOEX_MGR"

    const-string v2, "CellCoexServiceMgrgetProvidedPropList()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v0, "myList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "cws.activity.control"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    return-object v0
.end method

.method public getRequiredPropList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 295
    const-string v0, "CWS_CELLCOEX_MGR"

    const-string v1, "CellCoexServiceMgrgetRequiredPropList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public populatePropCatalog()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 301
    sget-boolean v5, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 302
    const-string v5, "CWS_CELLCOEX_MGR"

    const-string v6, "CellCoexServiceMgrpopulatePropCatalog()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    const-string v5, "persist.cellcoex.wifi.rt"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 304
    .local v3, "wifiRt":Z
    const-string v5, "persist.cellcoex.wifi.nrt"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 305
    .local v2, "wifiNrt":Z
    const-string v5, "persist.cellcoex.bt.rt"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 306
    .local v1, "btRt":Z
    const-string v5, "persist.cellcoex.bt.nrt"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 308
    .local v0, "btNrt":Z
    sget-object v5, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v6, "cws.activity.control"

    new-instance v7, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;

    invoke-direct {v7, v3, v2, v1, v0}, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;-><init>(ZZZZ)V

    invoke-interface {v5, v6, v7}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 311
    const-string v4, "CWS_CELLCOEX_MGR"

    const-string v5, "CellCoexServiceMgrpopulatePropCatalog() - Error! Cannot create property cws.wifi.state"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v4, 0x0

    .line 316
    :cond_1
    return v4
.end method

.method public registerToPropertyBus(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)Z
    .locals 2
    .param p1, "propMgr"    # Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    .prologue
    .line 277
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 278
    const-string v0, "CWS_CELLCOEX_MGR"

    const-string v1, "CellCoexServiceMgrregisterToPropertyBus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    sput-object p1, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    .line 280
    invoke-interface {p1, p0}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addPropNode(Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;)Z

    move-result v0

    return v0
.end method
