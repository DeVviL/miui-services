.class public Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;
.super Ljava/lang/Object;
.source "HandlersFactory.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$1;,
        Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$ModemStateChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"

.field private static sContext:Landroid/content/Context;

.field private static sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

.field private static sInstance:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final mCoexHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IMwsCoexHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mModemStateChangeListener:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$ModemStateChangeListener;

.field private mReadyToStart:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "CWS_CELLCOEX_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mClassName:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mCoexHandlers:Ljava/util/List;

    .line 50
    iput-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mReadyToStart:Z

    .line 55
    iput-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mModemStateChangeListener:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$ModemStateChangeListener;

    .line 102
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "constructor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    sput-object p1, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->sContext:Landroid/content/Context;

    .line 107
    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->sContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 109
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 110
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "constructor: cannot retrieve system service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Lcom/intel/internal/cellcoex/service/CellCoexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cannot retrieve system service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/internal/cellcoex/service/CellCoexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->findHandler()Z

    move-result v0

    iput-boolean v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mReadyToStart:Z

    .line 117
    iget-boolean v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mReadyToStart:Z

    if-nez v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$ModemStateChangeListener;

    invoke-direct {v1, p0, v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$ModemStateChangeListener;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$1;)V

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mModemStateChangeListener:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$ModemStateChangeListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 123
    :cond_2
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;)Z
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mReadyToStart:Z

    return v0
.end method

.method static synthetic access$202(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mReadyToStart:Z

    return p1
.end method

.method static synthetic access$300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;)Z
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->findHandler()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;)Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$ModemStateChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mModemStateChangeListener:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$ModemStateChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$600()Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private findHandler()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "aBaseBandVersion":Ljava/lang/String;
    sget-boolean v2, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 134
    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "modem version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    :cond_1
    :goto_0
    return v1

    .line 139
    :cond_2
    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->canHandle(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IA7262 will handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mCoexHandlers:Ljava/util/List;

    new-instance v2, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    sget-object v3, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->sContext:Landroid/content/Context;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;
    .locals 2
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 88
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "CWS_CELLCOEX_MGR"

    const-string v1, "Singleton HandlersFactory - getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->sInstance:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    if-nez v0, :cond_2

    .line 92
    const-class v1, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    monitor-enter v1

    .line 93
    :try_start_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->sInstance:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    invoke-direct {v0, p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->sInstance:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    .line 96
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_2
    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->sInstance:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    return-object v0

    .line 96
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
    .line 193
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "checkPropCatalog()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    const/4 v0, 0x1

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
    .line 172
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getProvidedPropList()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequiredPropList()Ljava/util/List;
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
    .line 179
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getRequiredPropList()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    .line 202
    sget-boolean v2, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 203
    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "init"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mCoexHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IMwsCoexHandler;

    .line 205
    .local v1, "itHandler":Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IMwsCoexHandler;
    sget-boolean v2, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 206
    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IMwsCoexHandler;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_1
    invoke-interface {v1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IMwsCoexHandler;->start()V

    goto :goto_0

    .line 209
    .end local v1    # "itHandler":Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IMwsCoexHandler;
    :cond_2
    return-void
.end method

.method public isReadyToStart()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mReadyToStart:Z

    return v0
.end method

.method public populatePropCatalog()Z
    .locals 3

    .prologue
    .line 186
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "populatePropCatalog()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public registerToPropertyBus(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)Z
    .locals 7
    .param p1, "propMgr"    # Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    .prologue
    .line 154
    sget-boolean v4, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 155
    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "registerToPropertyBus()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    const/4 v3, 0x1

    .line 157
    .local v3, "retVal":Z
    sput-object p1, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    .line 158
    sget-object v4, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-interface {v4, p0}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addPropNode(Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;)Z

    move-result v4

    and-int/2addr v3, v4

    .line 159
    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mCoexHandlers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IMwsCoexHandler;

    .line 160
    .local v1, "itHandler":Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IMwsCoexHandler;
    sget-boolean v4, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 161
    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->mClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "registerToPropertyBus "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IMwsCoexHandler;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_2
    instance-of v4, v1, Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;

    if-eqz v4, :cond_1

    move-object v2, v1

    .line 163
    check-cast v2, Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;

    .line 164
    .local v2, "itHandlerAsPropNode":Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;
    sget-object v4, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-interface {v2, v4}, Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;->registerToPropertyBus(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)Z

    move-result v4

    and-int/2addr v3, v4

    goto :goto_0

    .line 167
    .end local v1    # "itHandler":Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IMwsCoexHandler;
    .end local v2    # "itHandlerAsPropNode":Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;
    :cond_3
    return v3
.end method
