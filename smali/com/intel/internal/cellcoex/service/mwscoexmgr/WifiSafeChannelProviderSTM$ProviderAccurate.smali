.class Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;
.super Lcom/android/internal/util/State;
.source "WifiSafeChannelProviderSTM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProviderAccurate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;


# direct methods
.method constructor <init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)V
    .locals 0

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private udpateAccurateWlanConstraints()V
    .locals 8

    const/16 v7, 0x14

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0xd

    if-ge v0, v4, :cond_4

    sget-object v4, Lcom/intel/internal/cellcoex/service/props/WifiConstants;->WIFI_CENTER_FREQ_MHZ:[I

    aget v3, v4, v0

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$1400(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->isTxSafe(II)Z

    move-result v2

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$1400(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->isRxSafe(II)Z

    move-result v1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$300(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->setSafeChannels(II)I

    :goto_1
    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v6}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Wifi_Freq["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MHz: TxSafe="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " RxSafe="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Prio="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v6}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$300(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

    move-result-object v6

    invoke-virtual {v6}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->getSafeChannels()[I

    move-result-object v6

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$300(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->setSafeChannels(II)I

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$300(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->setSafeChannels(II)I

    goto/16 :goto_1

    :cond_3
    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$300(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->setSafeChannels(II)I

    goto/16 :goto_1

    :cond_4
    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$400(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v4

    const-string v5, "mws.wifi.safeChannels"

    new-instance v6, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

    iget-object v7, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v7}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$300(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;)V

    invoke-interface {v4, v5, v6}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$400(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v0

    const-string v2, "mws.wlan.coexparams"

    invoke-interface {v0, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->getProp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    invoke-static {v1, v0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$1402(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$1400(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "CWS_CELLCOEX_MGR"

    const-string v1, "Error: cannot retrieve coex property mws.wlan.coexparams"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->udpateAccurateWlanConstraints()V

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$400(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v0

    const-string v1, "mws.wlan.coexparams"

    new-instance v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$WifiSafeChanProvPropChangeListener;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$WifiSafeChanProvPropChangeListener;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$1;)V

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setPropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "failed to register listener to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mws.wlan.coexparams"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/intel/internal/cellcoex/service/CellCoexException;

    const-string v1, "Unable to register listener to property mws.wlan.coexparams"

    invoke-direct {v0, v1}, Lcom/intel/internal/cellcoex/service/CellCoexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exit()V
    .locals 5

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$400(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v0

    const-string v1, "mws.wlan.coexparams"

    new-instance v2, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$WifiSafeChanProvPropChangeListener;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$WifiSafeChanProvPropChangeListener;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$1;)V

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->removePropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "failed to unregister listener to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mws.wlan.coexparams"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/intel/internal/cellcoex/service/CellCoexException;

    const-string v1, "Unable to register listener to property mws.wlan.coexparams"

    invoke-direct {v0, v1}, Lcom/intel/internal/cellcoex/service/CellCoexException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v6}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".processMessage("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v4, 0x80001

    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v4, v5, :cond_4

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;

    if-nez v4, :cond_1

    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v6}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "malformed message obj: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    :goto_0
    return v3

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;

    const-string v4, "mws.state"

    invoke-interface {v0}, Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/intel/internal/cellcoex/service/props/MwsState;

    if-nez v4, :cond_2

    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v6}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "malformed message MwsState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto :goto_0

    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/intel/internal/cellcoex/service/props/MwsState;

    sget-object v4, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$1;->$SwitchMap$com$intel$internal$cellcoex$service$props$MwsState$State:[I

    iget-object v5, v1, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    invoke-virtual {v5}, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$100()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v6}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "radio simply on, Wifi safe channel set to predictive"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v5}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$700(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderPredictive;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$1700(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;Lcom/android/internal/util/IState;)V

    const/4 v2, 0x1

    :cond_4
    :goto_1
    move v3, v2

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$100()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v6}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "transitionTo(ProviderOFF)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v5}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$1000(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderOFF;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$1500(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;Lcom/android/internal/util/IState;)V

    const/4 v2, 0x1

    goto :goto_1

    :pswitch_1
    sget-object v4, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$1;->$SwitchMap$com$intel$internal$cellcoex$service$props$MwsState$SubState:[I

    iget-object v5, v1, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    invoke-virtual {v5}, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$100()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v6}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "transitionTo(ProviderPredictive)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v5}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$700(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderPredictive;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$1600(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;Lcom/android/internal/util/IState;)V

    const/4 v2, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    const-string v4, "mws.wlan.coexparams"

    invoke-interface {v0}, Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    if-nez v4, :cond_8

    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v6}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "malformed message MwsWlanCoexParams: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto/16 :goto_0

    :cond_8
    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    invoke-static {v5, v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$1402(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;->udpateAccurateWlanConstraints()V

    const/4 v2, 0x1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method
