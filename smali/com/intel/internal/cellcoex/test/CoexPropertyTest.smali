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

    const-string v0, "CWS_CELLCOEX_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/CoexPropertyTest$1;

    invoke-direct {v1, p0}, Lcom/intel/internal/cellcoex/test/CoexPropertyTest$1;-><init>(Lcom/intel/internal/cellcoex/test/CoexPropertyTest;)V

    iput-object v1, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v1, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->DEBUG:Z

    if-eqz v1, :cond_0

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

    :cond_0
    sput-object p1, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "intel.intent.action.ACTION_CELLCOEX_PROP_TEST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/intel/internal/cellcoex/test/CoexPropertyTest;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/intel/internal/cellcoex/test/CoexPropertyTest;
    .locals 2

    sget-boolean v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    const-string v1, "Singleton CoexPropertyTest - getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sInstance:Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    if-nez v0, :cond_2

    const-class v1, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sInstance:Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    if-nez v0, :cond_1

    new-instance v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    invoke-direct {v0, p0}, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sInstance:Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sInstance:Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    return-object v0

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

    sget-boolean v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->DEBUG:Z

    if-eqz v0, :cond_0

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

    :cond_0
    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_REG_STATUS;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_REG_STATUS;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_WIFI_STATE;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_WIFI_STATE;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_WIFI_SOFTAP_CHANNEL;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_WIFI_SOFTAP_CHANNEL;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_MWS_WIFI_SAFE_CHANNELS_24;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_MWS_WIFI_SAFE_CHANNELS_24;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_MWS_WLAN_COEX_PARAMS;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_MWS_WLAN_COEX_PARAMS;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_MWS_SIG_PARAMS;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_MWS_SIG_PARAMS;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_FRAME_IND;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_FRAME_IND;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_MWS_BT_COEX_PARAMS;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_MWS_BT_COEX_PARAMS;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_MWS_RADIO_VERSION;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_MWS_RADIO_VERSION;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_SPS;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_SPS;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_WIFI_OPER_PARAMS;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_WIFI_OPER_PARAMS;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->mPropParserFactory:Ljava/util/List;

    new-instance v1, Lcom/intel/internal/cellcoex/test/Parser_MWS_SAFE_TX_POWER_DECODING_TABLES;

    sget-object v2, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/test/Parser_MWS_SAFE_TX_POWER_DECODING_TABLES;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public populatePropCatalog()Z
    .locals 3

    sget-boolean v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->DEBUG:Z

    if-eqz v0, :cond_0

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

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public registerToPropertyBus(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)Z
    .locals 1

    sput-object p1, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    sget-object v0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-interface {v0, p0}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addPropNode(Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;)Z

    move-result v0

    return v0
.end method
