.class Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;
.super Ljava/lang/Object;
.source "GpsLocationProviderInjector.java"


# static fields
.field private static final DBG:Z = true

.field private static final NTP_SERVERS_LIST:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "GpsNetworkTimeUpdateServiceInjector"

.field private static final hasServerField:Z = true

.field private static sConnManager:Landroid/net/ConnectivityManager;

.field private static sDefaultNtpServer:Ljava/lang/String;

.field private static sNtpServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sServerField:Ljava/lang/reflect/Field;

.field private static sTime:Landroid/util/TrustedTime;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    .line 33
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cn,ntp.org.cn"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "time5.aliyun.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "time6.aliyun.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ntp-sz.chl.la"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "time4.aliyun.com"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "2.android.pool.ntp.org"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "tw.ntp.org.cn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ntp1.aliyun.com"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "clock.via.org"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "dns.sjtu.edu.cn"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->NTP_SERVERS_LIST:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getReflectServerField(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "reflectInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static initNtpServers(Landroid/content/Context;Landroid/util/TrustedTime;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trustedTime"    # Landroid/util/TrustedTime;

    .prologue
    .line 74
    sput-object p1, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    .line 75
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    sput-object v5, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sConnManager:Landroid/net/ConnectivityManager;

    .line 77
    sget-object v5, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    instance-of v5, v5, Landroid/util/NtpTrustedTime;

    if-eqz v5, :cond_0

    .line 79
    :try_start_0
    sget-object v5, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    const-string v6, "mServer"

    invoke-static {v5, v6}, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->initReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v5, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-static {v5}, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->getReflectServerField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sDefaultNtpServer:Ljava/lang/String;

    .line 81
    sget-object v5, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sDefaultNtpServer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->NTP_SERVERS_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 83
    .local v4, "ntpServer":Ljava/lang/String;
    sget-object v5, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "ntpServer":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method static initReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p0, "reflectInstance"    # Ljava/lang/Object;
    .param p1, "strField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    .line 48
    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    return-void
.end method

.method static refreshNtpServer(I)Z
    .locals 5
    .param p0, "tryCounter"    # I

    .prologue
    .line 61
    :try_start_0
    sget-object v2, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v1, p0, v2

    .line 62
    .local v1, "index":I
    sget-object v3, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    sget-object v2, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->setReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    const-string v2, "GpsNetworkTimeUpdateServiceInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryCounter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",ntpServers = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-static {v4}, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->getReflectServerField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v2, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 65
    sget-object v2, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    sget-object v3, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sDefaultNtpServer:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->setReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const/4 v2, 0x1

    .line 69
    .end local v1    # "index":I
    :goto_0
    return v2

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static setReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "reflectInstance"    # Ljava/lang/Object;
    .param p1, "strField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method static switchNtpServer(I)V
    .locals 1
    .param p0, "tryCounter"    # I

    .prologue
    .line 92
    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    instance-of v0, v0, Landroid/util/NtpTrustedTime;

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->refreshNtpServer(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 97
    :cond_1
    return-void
.end method
