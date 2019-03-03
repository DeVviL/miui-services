.class public Lcom/intel/internal/widget/aa/deviceinfo/Wifi;
.super Ljava/lang/Object;
.source "Wifi.java"


# static fields
.field public static final SECURITY_EAP:I = 0x3

.field public static final SECURITY_NONE:I = 0x0

.field public static final SECURITY_PSK:I = 0x2

.field public static final SECURITY_WEP:I = 0x1

.field private static sWManager:Landroid/net/wifi/WifiManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/intel/internal/widget/aa/deviceinfo/Wifi;->sWManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intel/internal/widget/aa/deviceinfo/Wifi;->mContext:Landroid/content/Context;

    return-void
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public convertToDeviceInfo(Landroid/net/wifi/WifiInfo;)Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method public getConnections()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;",
            ">;"
        }
    .end annotation

    sget-object v4, Lcom/intel/internal/widget/aa/deviceinfo/Wifi;->sWManager:Landroid/net/wifi/WifiManager;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/intel/internal/widget/aa/deviceinfo/Wifi;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    sput-object v4, Lcom/intel/internal/widget/aa/deviceinfo/Wifi;->sWManager:Landroid/net/wifi/WifiManager;

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/intel/internal/widget/aa/deviceinfo/Wifi;->sWManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    new-instance v4, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v0}, Lcom/intel/internal/widget/aa/deviceinfo/Wifi;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/intel/internal/widget/aa/deviceinfo/Wifi;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v4, "No wifi connections found"

    invoke-static {v4}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    :cond_2
    return-object v2
.end method

.method public getCurrentConnection()Landroid/net/wifi/WifiInfo;
    .locals 2

    sget-object v0, Lcom/intel/internal/widget/aa/deviceinfo/Wifi;->sWManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/intel/internal/widget/aa/deviceinfo/Wifi;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/intel/internal/widget/aa/deviceinfo/Wifi;->sWManager:Landroid/net/wifi/WifiManager;

    :cond_0
    sget-object v0, Lcom/intel/internal/widget/aa/deviceinfo/Wifi;->sWManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method
