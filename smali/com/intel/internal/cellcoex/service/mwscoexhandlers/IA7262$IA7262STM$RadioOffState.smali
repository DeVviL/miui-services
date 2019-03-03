.class Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;
.super Lcom/android/internal/util/State;
.source "IA7262.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RadioOffState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;


# direct methods
.method constructor <init>(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 650
    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;->SAFETX_POWER_DEC_TABLE:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

    invoke-static {v0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$500(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;)V

    .line 655
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;->BTCOEX_IDC_PARAM:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

    invoke-static {v0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$500(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;)V

    .line 656
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;->COEX_IDC_RT_PARAMS:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

    invoke-static {v0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$500(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;)V

    .line 658
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$600(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    move-result-object v0

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->RF_OFF:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    iput-object v1, v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    .line 659
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$600(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->setLteRegBand(Ljava/lang/String;)Z

    .line 660
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v0

    const-string v1, "mws.lte_reg_status"

    new-instance v2, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$600(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;)V

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 663
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v0

    const-string v1, "mws.state"

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$700(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/beans/PropertyChangeListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setPropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 665
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/!\\ FATAL ERROR /!\\ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unable to subscribe to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mws.state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    new-instance v0, Lcom/intel/internal/cellcoex/service/CellCoexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unable to subscribe to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mws.state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/internal/cellcoex/service/CellCoexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$800(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->setMwsBtAllSafeFreq()V

    .line 673
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v0

    const-string v1, "mws.bt.coexparams"

    new-instance v2, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$800(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;)V

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 677
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->setUnknown()V

    .line 678
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v0

    const-string v1, "mws.wlan.coexparams"

    new-instance v2, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;)V

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 682
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    new-instance v1, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    invoke-direct {v1}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;-><init>()V

    invoke-static {v0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1002(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;)Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    .line 683
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v0

    const-string v1, "mws.lte_frame_ind"

    new-instance v2, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;)V

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 685
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 720
    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v0

    const-string v1, "mws.state"

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$700(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/beans/PropertyChangeListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->removePropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 725
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/!\\ FATAL ERROR /!\\ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unable to unsubscribe to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mws.state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    new-instance v0, Lcom/intel/internal/cellcoex/service/CellCoexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unable to subscribe to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mws.state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/internal/cellcoex/service/CellCoexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 689
    const/4 v1, 0x0

    .line 690
    .local v1, "retVal":Z
    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 691
    const-string v3, "CWS_CELLCOEX_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v5}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".processMessage("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_0
    const v3, 0x90001

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_4

    .line 694
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;

    if-nez v3, :cond_1

    .line 695
    const-string v3, "CWS_CELLCOEX_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v5}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "malformed message obj: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 715
    .end local v1    # "retVal":Z
    .local v2, "retVal":I
    :goto_0
    return v2

    .line 699
    .end local v2    # "retVal":I
    .restart local v1    # "retVal":Z
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;

    .line 700
    .local v0, "aICoexPropProvider":Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;
    const-string v3, "mws.state"

    invoke-interface {v0}, Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v2, v1

    .line 701
    .restart local v2    # "retVal":I
    goto :goto_0

    .line 703
    .end local v2    # "retVal":I
    :cond_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/intel/internal/cellcoex/service/props/MwsState;

    if-nez v3, :cond_3

    .line 704
    const-string v3, "CWS_CELLCOEX_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v5}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "malformed message MwsState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 706
    .restart local v2    # "retVal":I
    goto :goto_0

    .line 708
    .end local v2    # "retVal":I
    :cond_3
    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/intel/internal/cellcoex/service/props/MwsState;

    invoke-static {v4, v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1102(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/intel/internal/cellcoex/service/props/MwsState;)Lcom/intel/internal/cellcoex/service/props/MwsState;

    .line 709
    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1100(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsState;

    move-result-object v3

    iget-object v3, v3, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    sget-object v4, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    if-eq v3, v4, :cond_4

    .line 710
    const-string v3, "CWS_CELLCOEX_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v5}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "transitionTo(mRadioOnState)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const/4 v1, 0x1

    .line 712
    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/android/internal/util/IState;)V

    .end local v0    # "aICoexPropProvider":Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;
    :cond_4
    move v2, v1

    .line 715
    .restart local v2    # "retVal":I
    goto/16 :goto_0
.end method
