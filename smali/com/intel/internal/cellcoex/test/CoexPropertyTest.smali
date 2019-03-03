.class public Lcom/intel/internal/cellcoex/test/CoexPropertyTest;
.super Ljava/lang/Object;
.source "CoexPropertyTest.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;


# static fields
.field public static final ACTION_CELLCOEX_PROP_TEST:Ljava/lang/String; = "intel.intent.action.ACTION_CELLCOEX_PROP_TEST"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"

.field private static sContext:Landroid/content/Context;

.field private static sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

.field private static sInstance:Lcom/intel/internal/cellcoex/test/CoexPropertyTest;


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final mPropParserFactory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/cellcoex/test/ITestIntentParser;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "CWS_CELLCOEX_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->DEBUG:Z

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mClassName:Ljava/lang/String;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    .line 76
    new-instance v1, Lcom/intel/internal/cellcoex/test/CoexPropertyTest$1;

    invoke-direct {v1, p0}, Lcom/intel/internal/cellcoex/test/CoexPropertyTest$1;-><init>(Lcom/intel/internal/cellcoex/test/CoexPropertyTest;)V

    iput-object v1, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    sget-boolean v1, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CoexPropertyTest constructor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    sput-object p1, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sContext:Landroid/content/Context;

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "intel.intent.action.ACTION_CELLCOEX_PROP_TEST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 72
    sget-object v1, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/intel/internal/cellcoex/test/CoexPropertyTest;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/intel/internal/cellcoex/test/CoexPropertyTest;
    .locals 2
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 50
    sget-boolean v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "CWS_CELLCOEX_MGR"

    const-string v1, "Singleton CoexPropertyTest - getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    sget-object v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sInstance:Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    if-nez v0, :cond_2

    .line 54
    const-class v1, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sInstance:Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    invoke-direct {v0, p0}, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sInstance:Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    .line 58
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_2
    sget-object v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sInstance:Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    return-object v0

    .line 58
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
    .locals 3

    .prologue
    .line 118
    sget-boolean v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "checkPropCatalog()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_REG_STATUS;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_REG_STATUS;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_WIFI_STATE;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_WIFI_STATE;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_WIFI_SOFTAP_CHANNEL;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_WIFI_SOFTAP_CHANNEL;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_MWS_WIFI_SAFE_CHANNELS_24;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_MWS_WIFI_SAFE_CHANNELS_24;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_MWS_WLAN_COEX_PARAMS;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_MWS_WLAN_COEX_PARAMS;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_MWS_SIG_PARAMS;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_MWS_SIG_PARAMS;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_FRAME_IND;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_FRAME_IND;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_MWS_BT_COEX_PARAMS;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_MWS_BT_COEX_PARAMS;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_MWS_RADIO_VERSION;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_MWS_RADIO_VERSION;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_SPS;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_SPS;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_WIFI_OPER_PARAMS;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_WIFI_OPER_PARAMS;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_MWS_SAFE_TX_POWER_DECODING_TABLES;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_MWS_SAFE_TX_POWER_DECODING_TABLES;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public getProvidedPropList()Ljava/util/List;
    .locals 1
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
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequiredPropList()Ljava/util/List;
    .locals 1
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
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public populatePropCatalog()Z
    .locals 3

    .prologue
    .line 111
    sget-boolean v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "populatePropCatalog()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public registerToPropertyBus(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)Z
    .locals 1
    .param p1, "propMgr"    # Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    .prologue
    .line 95
    sput-object p1, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    .line 96
    sget-object v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-interface {v0, p0}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addPropNode(Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;)Z

    move-result v0

    return v0
.end method
