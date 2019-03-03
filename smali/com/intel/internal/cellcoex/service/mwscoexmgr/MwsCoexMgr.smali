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

    .prologue
    const/4 v2, 0x0

    .line 43
    const-string v0, "CWS_CELLCOEX_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    .line 56
    sput-object v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sAreWeReady:Z

    .line 66
    sput-object v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sModemStateChangeListener:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
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

    .line 83
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 84
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

    .line 86
    :cond_0
    sput-object p1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sContext:Landroid/content/Context;

    .line 87
    invoke-static {p1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->getInstance(Landroid/content/Context;)Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mHandlerFactory:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    .line 88
    return-void
.end method

.method static synthetic access$000()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sModemStateChangeListener:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 41
    sput-boolean p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sAreWeReady:Z

    return p0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;
    .locals 2
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 69
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "CWS_CELLCOEX_MGR"

    const-string v1, "Singleton MwsCoexMgr - getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sInstance:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    if-nez v0, :cond_2

    .line 73
    const-class v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sInstance:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    invoke-direct {v0, p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sInstance:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    .line 77
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_2
    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sInstance:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    return-object v0

    .line 77
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
    .line 223
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 224
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

    .line 225
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

    .prologue
    .line 176
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 177
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

    .line 178
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "myList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "mws.state"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v1, "mws.wifi.safeChannels"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
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
    .line 186
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 187
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

    .line 188
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v0, "myList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "mws.wlan.coexparams"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 232
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 233
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

    .line 236
    :cond_0
    new-instance v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    sget-object v3, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;-><init>(Landroid/content/Context;Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;Landroid/telephony/TelephonyManager;)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sModemSTM:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    .line 239
    new-instance v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-direct {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;-><init>(Landroid/content/Context;Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sWifiSafeSTM:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    .line 242
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mHandlerFactory:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->init()V

    .line 243
    return-void
.end method

.method public isReadyToStart()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 119
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

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mHandlerFactory:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    invoke-virtual {v1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->isReadyToStart()Z

    move-result v1

    sput-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sAreWeReady:Z

    .line 122
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 123
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

    .line 125
    :cond_1
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sAreWeReady:Z

    if-nez v1, :cond_2

    .line 126
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sAreWeReady:Z

    .line 157
    :goto_0
    return v1

    .line 128
    :cond_2
    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    sput-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 130
    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_3

    .line 131
    sput-boolean v4, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sAreWeReady:Z

    .line 132
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

    .line 133
    new-instance v1, Lcom/intel/internal/cellcoex/service/CellCoexException;

    const-string v2, "Unable to get service phone"

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/service/CellCoexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_3
    :try_start_0
    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isRadioOn()Z

    .line 137
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

    .line 138
    const/4 v1, 0x1

    sput-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sAreWeReady:Z

    .line 139
    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sModemStateChangeListener:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;

    if-eqz v1, :cond_4

    .line 140
    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sModemStateChangeListener:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_4
    :goto_1
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 155
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

    .line 157
    :cond_5
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sAreWeReady:Z

    goto/16 :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
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

    .line 145
    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sModemStateChangeListener:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;

    if-nez v1, :cond_6

    .line 146
    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$1;)V

    sput-object v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sModemStateChangeListener:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;

    invoke-virtual {v1, v2, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 150
    :cond_6
    sput-boolean v4, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sAreWeReady:Z

    goto :goto_1
.end method

.method public populatePropCatalog()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 195
    sget-boolean v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 196
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

    .line 197
    :cond_0
    const/4 v0, 0x1

    .line 199
    .local v0, "retVal":Z
    sget-object v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v3, "mws.state"

    new-instance v4, Lcom/intel/internal/cellcoex/service/props/MwsState;

    invoke-direct {v4}, Lcom/intel/internal/cellcoex/service/props/MwsState;-><init>()V

    invoke-interface {v2, v3, v4}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
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

    .line 218
    .end local v0    # "retVal":Z
    :goto_0
    return v0

    .line 204
    .restart local v0    # "retVal":Z
    :cond_1
    sget-object v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v3, "mws.wifi.safeChannels"

    new-instance v4, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

    invoke-direct {v4}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;-><init>()V

    invoke-interface {v2, v3, v4}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 205
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

    .line 206
    goto :goto_0

    .line 209
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
    .param p1, "propMgr"    # Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    .prologue
    .line 165
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 166
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

    .line 167
    :cond_0
    const/4 v0, 0x1

    .line 168
    .local v0, "retVal":Z
    sput-object p1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    .line 169
    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-interface {v1, p0}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addPropNode(Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 170
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->mHandlerFactory:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    sget-object v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-virtual {v1, v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->registerToPropertyBus(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 171
    return v0
.end method
