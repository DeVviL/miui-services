.class public Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;
.super Ljava/lang/Object;
.source "MwsCoexMgr.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"

.field private static sAreWeReady:Z

.field private static sContext:Landroid/content/Context;

.field private static sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

.field private static sInstance:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

.field private static sModemSTM:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

.field private static sModemStateChangeListener:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;

.field private static sTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static sWifiSafeSTM:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final mHandlerFactory:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "CWS_CELLCOEX_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    sput-object v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sAreWeReady:Z

    sput-object v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sModemStateChangeListener:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mClassName:Ljava/lang/String;

    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "constructor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-object p1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->getInstance(Landroid/content/Context;)Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mHandlerFactory:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    return-void
.end method

.method static synthetic access$000()Landroid/telephony/TelephonyManager;
    .locals 1

    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;
    .locals 1

    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sModemStateChangeListener:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sAreWeReady:Z

    return p0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;
    .locals 2

    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    const-string v1, "Singleton MwsCoexMgr - getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sInstance:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    if-nez v0, :cond_2

    const-class v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sInstance:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    if-nez v0, :cond_1

    new-instance v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    invoke-direct {v0, p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sInstance:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sInstance:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

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

    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "checkPropCatalog()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
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

    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getProvidedPropList()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mws.state"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mws.wifi.safeChannels"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getRequiredPropList()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mws.wlan.coexparams"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public init()V
    .locals 4

    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "init"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    sget-object v3, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;-><init>(Landroid/content/Context;Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;Landroid/telephony/TelephonyManager;)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sModemSTM:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    new-instance v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;-><init>(Landroid/content/Context;Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sWifiSafeSTM:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mHandlerFactory:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->init()V

    return-void
.end method

.method public isReadyToStart()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".isReadyToStart"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mHandlerFactory:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    invoke-virtual {v1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->isReadyToStart()Z

    move-result v1

    sput-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sAreWeReady:Z

    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".isReadyToStart mHandlerFactory is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sAreWeReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sAreWeReady:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sAreWeReady:Z

    :goto_0
    return v1

    :cond_2
    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    sput-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_3

    sput-boolean v4, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sAreWeReady:Z

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Cannot retrieve "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/intel/internal/cellcoex/service/CellCoexException;

    const-string v2, "Unable to get service phone"

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/service/CellCoexException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :try_start_0
    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isRadioOn()Z

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TelephonyManager.isRadioOn() is ready..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sAreWeReady:Z

    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sModemStateChangeListener:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sModemStateChangeListener:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".isReadyToStart returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sAreWeReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sAreWeReady:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TelephonyManager.isRadioOn() not yet ready..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sModemStateChangeListener:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;

    if-nez v1, :cond_6

    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$1;)V

    sput-object v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sModemStateChangeListener:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;

    invoke-virtual {v1, v2, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_6
    sput-boolean v4, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sAreWeReady:Z

    goto :goto_1
.end method

.method public populatePropCatalog()Z
    .locals 5

    const/4 v1, 0x0

    sget-boolean v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "populatePropCatalog()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    sget-object v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v3, "mws.state"

    new-instance v4, Lcom/intel/internal/cellcoex/service/props/MwsState;

    invoke-direct {v4}, Lcom/intel/internal/cellcoex/service/props/MwsState;-><init>()V

    invoke-interface {v2, v3, v4}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Cannot create property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mws.state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v3, "mws.wifi.safeChannels"

    new-instance v4, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

    invoke-direct {v4}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;-><init>()V

    invoke-interface {v2, v3, v4}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Cannot create property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mws.wifi.safeChannels"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.state"

    new-instance v3, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$1;

    invoke-direct {v3, p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$1;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;)V

    invoke-interface {v1, v2, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setPropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z

    goto :goto_0
.end method

.method public registerToPropertyBus(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)Z
    .locals 4

    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "registerToPropertyBus()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    sput-object p1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-interface {v1, p0}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addPropNode(Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;)Z

    move-result v1

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mHandlerFactory:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    sget-object v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-virtual {v1, v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->registerToPropertyBus(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method
