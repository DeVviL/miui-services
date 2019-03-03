.class public Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
.super Lcom/android/internal/util/StateMachine;
.source "WifiCoexMgr.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/cellcoex/service/WifiCoexMgr$6;,
        Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;,
        Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateStaP2p;,
        Lcom/intel/internal/cellcoex/service/WifiCoexMgr$IdleState;,
        Lcom/intel/internal/cellcoex/service/WifiCoexMgr$OffState;,
        Lcom/intel/internal/cellcoex/service/WifiCoexMgr$UnknownState;
    }
.end annotation


# static fields
.field public static final CMD_WIFI_P2P_CONNECTED:I = 0x5

.field public static final CMD_WIFI_P2P_DISCONNECTED:I = 0x6

.field public static final CMD_WIFI_STA_CONNECTED:I = 0x3

.field public static final CMD_WIFI_STA_DISCONNECTED:I = 0x4

.field public static final CMD_WIFI_STA_P2P_OFF:I = 0x2

.field public static final CMD_WIFI_STA_P2P_ON:I = 0x1

.field public static final CMD_WIFI_TETHER_OFF:I = 0x8

.field public static final CMD_WIFI_TETHER_ON:I = 0x7

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"

.field private static sContext:Landroid/content/Context;

.field private static sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

.field private static sInstance:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;


# instance fields
.field mActiveStateStaP2p:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateStaP2p;

.field mActiveStateTether:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;

.field private final mClassName:Ljava/lang/String;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field mIdleState:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$IdleState;

.field mOffState:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$OffState;

.field mUnknownState:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$UnknownState;

.field private mWifiCoexNative:Lcom/intel/internal/cellcoex/handler/WifiCoexNative;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "CWS_CELLCOEX_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->DEBUG:Z

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 95
    const-string v0, "CWS_WIFI_CELLCOEX_MGR_SM"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$UnknownState;

    invoke-direct {v0, p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$UnknownState;-><init>(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mUnknownState:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$UnknownState;

    .line 75
    new-instance v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$IdleState;

    invoke-direct {v0, p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$IdleState;-><init>(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mIdleState:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$IdleState;

    .line 76
    new-instance v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$OffState;

    invoke-direct {v0, p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$OffState;-><init>(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mOffState:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$OffState;

    .line 77
    new-instance v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateStaP2p;

    invoke-direct {v0, p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateStaP2p;-><init>(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mActiveStateStaP2p:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateStaP2p;

    .line 78
    new-instance v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;

    invoke-direct {v0, p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;-><init>(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mActiveStateTether:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;

    .line 97
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WifiCoexMgr constructor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->isWifiP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->isWifiStaConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->updateSoftApChan()V

    return-void
.end method

.method static synthetic access$2400(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/intel/internal/cellcoex/service/props/WifiState$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .param p1, "x1"    # Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->setAndBroadcastWifiStateProp(Lcom/intel/internal/cellcoex/service/props/WifiState$State;)V

    return-void
.end method

.method static synthetic access$400(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)Lcom/intel/internal/cellcoex/service/props/WifiState$State;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->getGlobalWifiRadioState()Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private getBestApChan(I)I
    .locals 9
    .param p1, "current"    # I

    .prologue
    const/16 v8, 0xb

    const/4 v4, -0x1

    .line 651
    const/4 v0, -0x1

    .line 652
    .local v0, "best_score":I
    const/4 v1, 0x0

    .line 653
    .local v1, "i":I
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 656
    .local v2, "prioritized_chan":[I
    const/4 v3, 0x0

    .line 658
    .local v3, "wifiSafeChannels24":Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;
    sget-boolean v5, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 659
    const-string v5, "CWS_CELLCOEX_MGR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "getBestApChan() - current="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_0
    const/16 v5, 0xd

    if-le p1, v5, :cond_2

    .line 663
    sget-boolean v4, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 664
    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "getBestApChan() - Obviously working on a 5ghz channel. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Keep on using it since safe. <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .end local p1    # "current":I
    :cond_1
    :goto_0
    return p1

    .line 670
    .restart local p1    # "current":I
    :cond_2
    const/4 v5, 0x1

    if-ge p1, v5, :cond_3

    .line 671
    const-string v5, "CWS_CELLCOEX_MGR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "getBestApChan() - Error! Invalid 2.4Ghz channel provided as current."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v4

    .line 674
    goto :goto_0

    .line 677
    :cond_3
    sget-object v5, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v6, "mws.wifi.safeChannels"

    invoke-interface {v5, v6}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->getProp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "wifiSafeChannels24":Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;
    check-cast v3, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

    .line 678
    .restart local v3    # "wifiSafeChannels24":Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;
    if-nez v3, :cond_4

    .line 679
    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "getBestApChan() - Error! Unable to get property "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mws.wifi.safeChannels"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 688
    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_6

    .line 689
    invoke-virtual {v3}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->getSafeChannels()[I

    move-result-object v5

    aget v5, v5, v1

    if-le v5, v0, :cond_5

    .line 690
    invoke-virtual {v3}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->getSafeChannels()[I

    move-result-object v5

    aget v0, v5, v1

    .line 688
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 692
    :cond_6
    sget-boolean v5, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->DEBUG:Z

    if-eqz v5, :cond_7

    .line 693
    const-string v5, "CWS_CELLCOEX_MGR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "getBestApChan() - best_score="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_7
    invoke-virtual {v3}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->getSafeChannels()[I

    move-result-object v5

    add-int/lit8 v6, p1, -0x1

    aget v5, v5, v6

    if-ne v5, v0, :cond_8

    .line 697
    sget-boolean v4, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 698
    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "getBestApChan() - current is top rated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 703
    :cond_8
    const/4 v1, 0x0

    :goto_2
    array-length v5, v2

    if-ge v1, v5, :cond_b

    .line 704
    invoke-virtual {v3}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->getSafeChannels()[I

    move-result-object v5

    aget v6, v2, v1

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    if-ne v5, v0, :cond_a

    .line 705
    sget-boolean v4, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->DEBUG:Z

    if-eqz v4, :cond_9

    .line 706
    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "getBestApChan() - best SoftApChan is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_9
    aget p1, v2, v1

    goto/16 :goto_0

    .line 703
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 712
    :cond_b
    const-string v5, "CWS_CELLCOEX_MGR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "getBestApChan() - Error! Should not get there"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v4

    .line 713
    goto/16 :goto_0

    .line 653
    :array_0
    .array-data 4
        0x6
        0xb
        0x1
        0xa
        0x9
        0x8
        0x7
        0x5
        0x4
        0x3
        0x2
    .end array-data
.end method

.method private getGlobalWifiRadioState()Lcom/intel/internal/cellcoex/service/props/WifiState$State;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 631
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->isWifiTetherEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 632
    sget-object v0, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_ACTIVE_TETHER:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    .line 640
    :goto_0
    return-object v0

    .line 634
    :cond_0
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->isWifiStaP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 635
    sget-object v0, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    goto :goto_0

    .line 637
    :cond_1
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->isWifiStaConnected()Z

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->isWifiP2pConnected()Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 638
    :cond_2
    sget-object v0, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_ACTIVE_STA_P2P:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    goto :goto_0

    .line 640
    :cond_3
    sget-object v0, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_IDLE:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    goto :goto_0
.end method

.method public static getInstance()Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
    .locals 2

    .prologue
    .line 81
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "CWS_CELLCOEX_MGR"

    const-string v1, "getInstance() - Singleton WifiCoexMgr"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sInstance:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    if-nez v0, :cond_2

    .line 85
    const-class v1, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sInstance:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    invoke-direct {v0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;-><init>()V

    sput-object v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sInstance:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    .line 89
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_2
    sget-object v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sInstance:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isWifiP2pConnected()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 609
    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mWifiCoexNative:Lcom/intel/internal/cellcoex/handler/WifiCoexNative;

    const-string v6, "INTERFACES"

    invoke-virtual {v5, v6}, Lcom/intel/internal/cellcoex/handler/WifiCoexNative;->wifiCoexSendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 610
    .local v2, "ifaces":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 611
    const/4 v1, 0x0

    .line 612
    .local v1, "i":I
    const/4 v0, 0x0

    .line 614
    .local v0, "cnt":I
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 615
    .local v3, "ifacesArray":[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 616
    aget-object v5, v3, v1

    const-string v6, "p2p"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 617
    add-int/lit8 v0, v0, 0x1

    .line 615
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    :cond_1
    if-le v0, v4, :cond_2

    .line 622
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    .end local v3    # "ifacesArray":[Ljava/lang/String;
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isWifiStaConnected()Z
    .locals 4

    .prologue
    .line 587
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 589
    .local v0, "wifiNetInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 594
    :goto_0
    return v1

    .line 592
    :cond_0
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isWifiStaConnected() - Error! Unable to get network info."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWifiStaP2pConnected(I)Z
    .locals 4
    .param p1, "connType"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 575
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->isWifiStaP2pEnabled()Z

    move-result v3

    if-ne v3, v1, :cond_0

    .line 576
    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 577
    .local v0, "wifiNetInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 583
    .end local v0    # "wifiNetInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 581
    goto :goto_0

    .restart local v0    # "wifiNetInfo":Landroid/net/NetworkInfo;
    :cond_1
    move v1, v2

    .line 583
    goto :goto_0
.end method

.method private isWifiStaP2pEnabled()Z
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method private isWifiTetherEnabled()Z
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    return v0
.end method

.method private setAndBroadcastWifiStateProp(Lcom/intel/internal/cellcoex/service/props/WifiState$State;)V
    .locals 3
    .param p1, "aState"    # Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    .prologue
    .line 647
    sget-object v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v1, "cws.wifi.state"

    new-instance v2, Lcom/intel/internal/cellcoex/service/props/WifiState;

    invoke-direct {v2, p1}, Lcom/intel/internal/cellcoex/service/props/WifiState;-><init>(Lcom/intel/internal/cellcoex/service/props/WifiState$State;)V

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 648
    return-void
.end method

.method private updateSoftApChan()V
    .locals 5

    .prologue
    .line 717
    const/4 v0, -0x1

    .line 718
    .local v0, "bestApChan":I
    sget-object v2, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v3, "cws.wifi.softap.channel"

    invoke-interface {v2, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->getProp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;

    .line 720
    .local v1, "softApChan":Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;
    if-nez v1, :cond_0

    .line 721
    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "updateSoftApChan() - Error! Unable to get property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cws.wifi.softap.channel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :goto_0
    return-void

    .line 726
    :cond_0
    invoke-virtual {v1}, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;->getSoftApChannel()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->getBestApChan(I)I

    move-result v0

    .line 727
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 728
    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "updateSoftApChan() - Error! Unable to compute bestApChan"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 732
    :cond_1
    invoke-virtual {v1}, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;->getSoftApChannel()I

    move-result v2

    if-eq v2, v0, :cond_4

    .line 733
    sget-boolean v2, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 734
    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "updateSoftApChan() - SoftAp channel currently in use <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;->getSoftApChannel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> is not the safest. Safest one is <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_2
    sget-object v2, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v3, "cws.wifi.softap.channel"

    new-instance v4, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;

    invoke-direct {v4, v0}, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;-><init>(I)V

    invoke-interface {v2, v3, v4}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 744
    :cond_3
    :goto_1
    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Wi-Fi Tethering running on channel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 739
    :cond_4
    sget-boolean v2, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 740
    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "updateSoftApChan() - Already operating on the safest channel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public checkPropCatalog()Z
    .locals 4

    .prologue
    .line 165
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 166
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "checkPropCatalog()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    sget-object v1, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.wifi.safeChannels"

    invoke-interface {v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->getProp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

    .line 169
    .local v0, "wifiSafeChannels24":Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;
    if-nez v0, :cond_1

    .line 170
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "checkPropCatalog() - Error! checkPropCatalog failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v1, 0x0

    .line 173
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getProvidedPropList()Ljava/util/List;
    .locals 4
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
    .line 120
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 121
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getProvidedPropList()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "myList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "cws.wifi.state"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    const-string v1, "cws.wifi.softap.channel"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    const-string v1, "cws.wifi.oper.params"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-object v0
.end method

.method public getRequiredPropList()Ljava/util/List;
    .locals 4
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
    .line 131
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 132
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getRequiredPropList()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v0, "myList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "mws.wifi.safeChannels"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 180
    sget-object v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 181
    sget-object v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 184
    new-instance v0, Lcom/intel/internal/cellcoex/handler/WifiCoexNative;

    invoke-direct {v0}, Lcom/intel/internal/cellcoex/handler/WifiCoexNative;-><init>()V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mWifiCoexNative:Lcom/intel/internal/cellcoex/handler/WifiCoexNative;

    .line 187
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mUnknownState:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$UnknownState;

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->addState(Lcom/android/internal/util/State;)V

    .line 188
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mOffState:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$OffState;

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->addState(Lcom/android/internal/util/State;)V

    .line 189
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mIdleState:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$IdleState;

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->addState(Lcom/android/internal/util/State;)V

    .line 190
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mActiveStateStaP2p:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateStaP2p;

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->addState(Lcom/android/internal/util/State;)V

    .line 191
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mActiveStateTether:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->addState(Lcom/android/internal/util/State;)V

    .line 194
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mUnknownState:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$UnknownState;

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->setInitialState(Lcom/android/internal/util/State;)V

    .line 197
    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->start()V

    .line 200
    sget-object v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sContext:Landroid/content/Context;

    new-instance v1, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$1;

    invoke-direct {v1, p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$1;-><init>(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    sget-object v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sContext:Landroid/content/Context;

    new-instance v1, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$2;

    invoke-direct {v1, p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$2;-><init>(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    sget-object v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sContext:Landroid/content/Context;

    new-instance v1, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$3;

    invoke-direct {v1, p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$3;-><init>(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 254
    sget-object v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sContext:Landroid/content/Context;

    new-instance v1, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$4;

    invoke-direct {v1, p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$4;-><init>(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 270
    sget-object v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v1, "mws.wifi.safeChannels"

    new-instance v2, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$5;

    invoke-direct {v2, p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$5;-><init>(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)V

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setPropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z

    .line 282
    return-void
.end method

.method public populatePropCatalog()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 140
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 141
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "populatePropCatalog()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    sget-object v1, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "cws.wifi.state"

    new-instance v3, Lcom/intel/internal/cellcoex/service/props/WifiState;

    invoke-direct {v3}, Lcom/intel/internal/cellcoex/service/props/WifiState;-><init>()V

    invoke-interface {v1, v2, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "populatePropCatalog() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Error! Cannot create property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cws.wifi.state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return v0

    .line 148
    :cond_1
    sget-object v1, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "cws.wifi.softap.channel"

    new-instance v3, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;

    invoke-direct {v3}, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;-><init>()V

    invoke-interface {v1, v2, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 149
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "populatePropCatalog() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Error! Cannot create property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cws.wifi.softap.channel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_2
    sget-object v1, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "cws.wifi.oper.params"

    new-instance v3, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;

    invoke-direct {v3}, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;-><init>()V

    invoke-interface {v1, v2, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 155
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "populatePropCatalog() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Error! Cannot create property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cws.wifi.oper.params"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerToPropertyBus(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)Z
    .locals 3
    .param p1, "propMgr"    # Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    .prologue
    .line 112
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "registerToPropertyBus()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    sput-object p1, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    .line 115
    sget-object v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-interface {v0, p0}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addPropNode(Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;)Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 102
    sput-object p1, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sContext:Landroid/content/Context;

    .line 103
    return-void
.end method
