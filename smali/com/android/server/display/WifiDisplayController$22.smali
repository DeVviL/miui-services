.class Lcom/android/server/display/WifiDisplayController$22;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v10, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v11, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "wifi_p2p_state"

    invoke-virtual {p2, v11, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    :goto_0
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v10, v3}, Lcom/android/server/display/WifiDisplayController;->access$3800(Lcom/android/server/display/WifiDisplayController;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v10

    goto :goto_0

    :cond_2
    const-string v11, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$3900(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_1

    :cond_3
    const-string v11, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v10, "networkInfo"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v10, v6}, Lcom/android/server/display/WifiDisplayController;->access$4000(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V

    goto :goto_1

    :cond_4
    const-string v11, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string v10, "wifiP2pDevice"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v11, v10}, Lcom/android/server/display/WifiDisplayController;->access$3302(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    goto :goto_1

    :cond_5
    const-string v11, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "discoveryState"

    invoke-virtual {p2, v11, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v3, :cond_6

    move v9, v3

    :goto_2
    if-eqz v9, :cond_0

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$1300(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/server/display/WifiDisplayController;->access$1302(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    goto :goto_1

    :cond_6
    move v9, v10

    goto :goto_2

    :cond_7
    const-string v10, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "networkInfo"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$2300(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$4100(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$4100(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v10, :cond_8

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$2600(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v10

    if-eqz v10, :cond_8

    iget v10, v7, Landroid/net/wifi/ScanResult;->frequency:I

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->access$2600(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    move-result v11

    if-eq v10, v11, :cond_8

    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.settings.WIFI_DISPLAY_SETTINGS"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x14200000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v10, "wifiP2pReconnect"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$4200(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    const-string v10, "WifiDisplayController"

    const-string v11, "Cannot open Wifi Display Settings"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    const-string v10, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$3000(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_1
.end method
