.class Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;
.super Lcom/android/internal/util/State;
.source "IA7262.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RadioOnState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;


# direct methods
.method constructor <init>(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)V
    .locals 0

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private processReceivedIntent(Landroid/content/Intent;)Z
    .locals 23

    const/4 v15, 0x0

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$100()Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "CWS_CELLCOEX_MGR"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "processReceivedIntent: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v17, "intel.intent.action.ACTION_IDC_REG_STATUS_AND_BAND_IND"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const-string v17, "subId"

    const-wide/16 v20, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)J

    move-result-wide v20

    cmp-long v17, v20, v18

    if-eqz v17, :cond_2

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$100()Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v17, "CWS_CELLCOEX_MGR"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "intent ACTION_IDC_REG_STATUS_AND_BAND_IND not for us"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move/from16 v16, v15

    :goto_0
    return v16

    :cond_2
    const-string v17, "regStatus"

    const/16 v20, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const-string v17, "band"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$100()Z

    move-result v17

    if-eqz v17, :cond_3

    const-string v17, "CWS_CELLCOEX_MGR"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "ACTION_IDC_REG_STATUS_AND_BAND_IND("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "subId"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "regStatus"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "band"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v7, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    invoke-direct {v7}, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;-><init>()V

    packed-switch v14, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$600(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$602(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;)Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v17

    const-string v20, "mws.lte_reg_status"

    new-instance v21, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$600(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    const/4 v15, 0x1

    :cond_5
    :goto_2
    move/from16 v16, v15

    goto/16 :goto_0

    :pswitch_0
    sget-object v17, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->NOT_REGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$800(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->setMwsBtAllSafeFreq()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v17

    const-string v20, "mws.bt.coexparams"

    new-instance v21, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$800(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->setUnknown()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v17

    const-string v20, "mws.wlan.coexparams"

    new-instance v21, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    new-instance v20, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    invoke-direct/range {v20 .. v20}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1002(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;)Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v17

    const-string v20, "mws.lte_frame_ind"

    new-instance v21, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v7, v13}, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->setLteRegBand(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    sget-object v17, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->REGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    invoke-virtual {v7}, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->isAgressive()Z

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$800(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->setMwsBtAllSafeFreq()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v17

    const-string v20, "mws.bt.coexparams"

    new-instance v21, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$800(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->setUnknown()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v17

    const-string v20, "mws.wlan.coexparams"

    new-instance v21, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    new-instance v20, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    invoke-direct/range {v20 .. v20}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1002(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;)Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v17

    const-string v20, "mws.lte_frame_ind"

    new-instance v21, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    sget-object v17, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->NOT_REGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$800(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->setMwsBtAllSafeFreq()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v17

    const-string v20, "mws.bt.coexparams"

    new-instance v21, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$800(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->setUnknown()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v17

    const-string v20, "mws.wlan.coexparams"

    new-instance v21, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    new-instance v20, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    invoke-direct/range {v20 .. v20}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1002(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;)Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v17

    const-string v20, "mws.lte_frame_ind"

    new-instance v21, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    const-string v17, "intel.intent.action.ACTION_IDC_WLAN_COEX_IND"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    const-string v17, "WlanCoexInfo"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    const-string v17, "subId"

    const-wide/16 v20, -0x1

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v12, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)J

    move-result-wide v20

    cmp-long v17, v20, v18

    if-eqz v17, :cond_9

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$100()Z

    move-result v17

    if-eqz v17, :cond_8

    const-string v17, "CWS_CELLCOEX_MGR"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "intent ACTION_IDC_WLAN_COEX_IND not for us"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move/from16 v16, v15

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-result-object v17

    const-string v20, "WlanSafeRxMin"

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->setSafeRxMinFreq(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-result-object v17

    const-string v20, "WlanSafeRxMax"

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->setSafeRxMaxFreq(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-result-object v17

    const-string v20, "WlanSafeTxMin"

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->setSafeTxMinFreq(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-result-object v17

    const-string v20, "WlanSafeTxMax"

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->setSafeTxMaxFreq(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-result-object v17

    const-string v20, "WlanSafeTxPowerNum"

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->setSafeTxPowerNum(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-result-object v17

    const-string v20, "WlanSafeTxPowerTable"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->setSafeTxPowerTable([I)V

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$100()Z

    move-result v17

    if-eqz v17, :cond_a

    const-string v17, "CWS_CELLCOEX_MGR"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "ACTION_IDC_WLAN_COEX_IND("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "subId"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v17

    const-string v20, "mws.wlan.coexparams"

    new-instance v21, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_b
    const-string v17, "intel.intent.action.ACTION_IDC_BT_COEX_IND"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    const-string v17, "BtCoexInfo"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    const-string v17, "subId"

    const-wide/16 v20, -0x1

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v12, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)J

    move-result-wide v20

    cmp-long v17, v20, v18

    if-eqz v17, :cond_d

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$100()Z

    move-result v17

    if-eqz v17, :cond_c

    const-string v17, "CWS_CELLCOEX_MGR"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "intent ACTION_IDC_BT_COEX_IND not for us"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move/from16 v16, v15

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$800(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    move-result-object v17

    const-string v20, "BtSafeRxMin"

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->setSafeRxMinFreq(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$800(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    move-result-object v17

    const-string v20, "BtSafeRxMax"

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->setSafeRxMaxFreq(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$800(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    move-result-object v17

    const-string v20, "BtSafeTxMin"

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->setSafeTxMinFreq(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$800(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    move-result-object v17

    const-string v20, "BtSafeTxMax"

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->setSafeTxMaxFreq(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$800(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    move-result-object v17

    const-string v20, "BtSafeTxPowerNum"

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->setSafeTxPowerNum(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$800(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    move-result-object v17

    const-string v20, "BtSafeTxPowerTable"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->setSafeTxPowerTable([I)V

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$100()Z

    move-result v17

    if-eqz v17, :cond_e

    const-string v17, "CWS_CELLCOEX_MGR"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "ACTION_IDC_BT_COEX_IND("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "subId"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$800(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v17

    const-string v20, "mws.bt.coexparams"

    new-instance v21, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$800(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_f
    const-string v17, "intel.intent.action.ACTION_IDC_LTE_FRAME_IND"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const-string v17, "LteCoexInfo"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    const-string v17, "subId"

    const-wide/16 v20, -0x1

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v12, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)J

    move-result-wide v20

    cmp-long v17, v20, v18

    if-eqz v17, :cond_11

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$100()Z

    move-result v17

    if-eqz v17, :cond_10

    const-string v17, "CWS_CELLCOEX_MGR"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "intent ACTION_IDC_LTE_FRAME_IND not for us"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move/from16 v16, v15

    goto/16 :goto_0

    :cond_11
    const-string v17, "TDDSpecialSubFrameNumber"

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v17, "LteBitmap"

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v4}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->setValues(II)V

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$100()Z

    move-result v17

    if-eqz v17, :cond_12

    const-string v17, "CWS_CELLCOEX_MGR"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "ACTION_IDC_LTE_FRAME_IND("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "subId"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v17

    const-string v20, "mws.lte_frame_ind"

    new-instance v21, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_13
    const-string v17, "intel.intent.action.ACTION_IDC_LTE_FREQ_IND"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    const-string v17, "LteFreqInfo"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    const-string v17, "subId"

    const-wide/16 v20, -0x1

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v12, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)J

    move-result-wide v20

    cmp-long v17, v20, v18

    if-eqz v17, :cond_15

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$100()Z

    move-result v17

    if-eqz v17, :cond_14

    const-string v17, "CWS_CELLCOEX_MGR"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "intent ACTION_IDC_LTE_FREQ_IND not for us"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move/from16 v16, v15

    goto/16 :goto_0

    :cond_15
    const-string v17, "UlFreq"

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v17, "UlBw"

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v17, "DlFreq"

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v17, "DlBw"

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$2300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v5, v10, v9}, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->setValues(IIII)V

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$100()Z

    move-result v17

    if-eqz v17, :cond_16

    const-string v17, "CWS_CELLCOEX_MGR"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "ACTION_IDC_LTE_FREQ_IND("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "subId"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$2300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v17

    const-string v20, "mws.lte_freq_ind"

    new-instance v21, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$2300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    const/4 v15, 0x1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processReceivedPropChange(Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const-string v2, "mws.state"

    invoke-interface {p1}, Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, p1, Lcom/intel/internal/cellcoex/service/props/MwsState;

    if-nez v2, :cond_1

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "malformed message MwsState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    check-cast p1, Lcom/intel/internal/cellcoex/service/props/MwsState;

    invoke-static {v2, p1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1102(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/intel/internal/cellcoex/service/props/MwsState;)Lcom/intel/internal/cellcoex/service/props/MwsState;

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->RADIO_ON:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1100(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsState;

    move-result-object v3

    iget-object v3, v3, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    if-eq v2, v3, :cond_2

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "transitionTo(mRadioOffState)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$2100(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$2200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/android/internal/util/IState;)V

    :cond_2
    :goto_1
    move v1, v0

    goto/16 :goto_0

    :cond_3
    const-string v2, "cws.wifi.state"

    invoke-interface {p1}, Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v2, p1, Lcom/intel/internal/cellcoex/service/props/WifiState;

    if-nez v2, :cond_4

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "malformed message WifiState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    check-cast p1, Lcom/intel/internal/cellcoex/service/props/WifiState;

    invoke-static {v2, p1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1602(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/intel/internal/cellcoex/service/props/WifiState;)Lcom/intel/internal/cellcoex/service/props/WifiState;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const-string v2, "cws.wifi.oper.params"

    invoke-interface {p1}, Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    instance-of v2, p1, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;

    if-nez v2, :cond_6

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "malformed message WifiOperParams: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    check-cast p1, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;

    invoke-static {v2, p1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1702(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/intel/internal/cellcoex/service/props/WifiOperParams;)Lcom/intel/internal/cellcoex/service/props/WifiOperParams;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)V

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_7
    const-string v2, "cws.bt.state"

    invoke-interface {p1}, Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, p1, Lcom/intel/internal/cellcoex/service/props/BtState;

    if-nez v2, :cond_8

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "malformed message BtState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    check-cast p1, Lcom/intel/internal/cellcoex/service/props/BtState;

    invoke-static {v2, p1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1802(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/intel/internal/cellcoex/service/props/BtState;)Lcom/intel/internal/cellcoex/service/props/BtState;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$2000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)V

    const/4 v0, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public enter()V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".enter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v2, v2, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    sget-object v3, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;->SAFETX_POWER_DEC_TABLE:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

    invoke-static {v2, v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$500(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;)V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v2, v2, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    sget-object v3, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;->BTCOEX_IDC_PARAM:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

    invoke-static {v2, v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$500(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;)V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v2, v2, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    sget-object v3, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;->COEX_IDC_RT_PARAMS:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

    invoke-static {v2, v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$500(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "intel.intent.action.ACTION_IDC_REG_STATUS_AND_BAND_IND"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "intel.intent.action.ACTION_IDC_WLAN_COEX_IND"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "intel.intent.action.ACTION_IDC_BT_COEX_IND"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "intel.intent.action.ACTION_IDC_LTE_FRAME_IND"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v2, v2, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v2

    const-string v3, "mws.lte_freq_ind"

    invoke-interface {v2, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->isPropRequired(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "intel.intent.action.ACTION_IDC_LTE_FREQ_IND"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$1500()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1400(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v2, v2, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$400(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v3, v3, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-interface {v2, v4, v5, v3}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;->setRegistrationStatusAndBandReporting(JZ)I

    move-result v2

    if-eq v6, v2, :cond_2

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "setRegistrationStatusAndBandReporting failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v2, v2, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v2

    const-string v3, "cws.wifi.state"

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$700(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/beans/PropertyChangeListener;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setPropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/!\\ FATAL ERROR /!\\ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "unable to subscribe to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cws.wifi.state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/intel/internal/cellcoex/service/CellCoexException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "unable to subscribe to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cws.wifi.state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/intel/internal/cellcoex/service/CellCoexException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_1
    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "OemPhoneService.setRegistrationStatusAndBandReporting("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v4, v4, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", true)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Exception in setRegistrationStatusAndBandReporting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v2, v2, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v2

    const-string v3, "cws.wifi.oper.params"

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$700(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/beans/PropertyChangeListener;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setPropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/!\\ FATAL ERROR /!\\ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "unable to subscribe to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cws.wifi.oper.params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/intel/internal/cellcoex/service/CellCoexException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "unable to subscribe to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cws.wifi.oper.params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/intel/internal/cellcoex/service/CellCoexException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v2, v2, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v2

    const-string v3, "cws.bt.state"

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$700(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/beans/PropertyChangeListener;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setPropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/!\\ FATAL ERROR /!\\ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "unable to subscribe to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cws.bt.state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/intel/internal/cellcoex/service/CellCoexException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "unable to subscribe to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cws.bt.state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/intel/internal/cellcoex/service/CellCoexException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v2, v2, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$400(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v3, v3, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-interface {v2, v4, v5, v3}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;->setCoexReporting(JZ)I

    move-result v2

    if-eq v6, v2, :cond_6

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "setCoexReporting failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v2, v2, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v2

    const-string v3, "mws.lte_freq_ind"

    invoke-interface {v2, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->isPropRequired(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :try_start_3
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v2, v2, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$400(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v3, v3, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-interface {v2, v4, v5, v3}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;->setLteFreqReporting(JZ)I

    move-result v2

    if-eq v6, v2, :cond_8

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "setLteFreqReporting failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v2, v2, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v2

    const-string v4, "cws.wifi.state"

    invoke-interface {v2, v4}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->getProp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intel/internal/cellcoex/service/props/WifiState;

    invoke-static {v3, v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1602(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/intel/internal/cellcoex/service/props/WifiState;)Lcom/intel/internal/cellcoex/service/props/WifiState;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1600(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/WifiState;

    move-result-object v2

    if-nez v2, :cond_9

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Can\'t retrieve Wifi state property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cws.wifi.state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :catch_1
    move-exception v0

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Exception in setCoexReporting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    :try_start_4
    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "OemPhoneService.setLteFreqReporting("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v4, v4, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", true)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Exception in setLteFreqReporting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v2, v2, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v2

    const-string v4, "cws.wifi.oper.params"

    invoke-interface {v2, v4}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->getProp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;

    invoke-static {v3, v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1702(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/intel/internal/cellcoex/service/props/WifiOperParams;)Lcom/intel/internal/cellcoex/service/props/WifiOperParams;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1700(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/WifiOperParams;

    move-result-object v2

    if-nez v2, :cond_a

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Can\'t retrieve Wifi Oper Param property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cws.wifi.oper.params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_a
    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v2, v2, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v2

    const-string v4, "cws.bt.state"

    invoke-interface {v2, v4}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->getProp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intel/internal/cellcoex/service/props/BtState;

    invoke-static {v3, v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1802(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/intel/internal/cellcoex/service/props/BtState;)Lcom/intel/internal/cellcoex/service/props/BtState;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1800(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/BtState;

    move-result-object v2

    if-nez v2, :cond_b

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Can\'t retrieve Bt state property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cws.bt.state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_b
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$2000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)V

    goto/16 :goto_3
.end method

.method public exit()V
    .locals 3

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$1500()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$1400(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v0

    const-string v1, "cws.wifi.state"

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$700(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/beans/PropertyChangeListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->removePropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/!\\ FATAL ERROR /!\\ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unable to subscribe to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cws.wifi.state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/intel/internal/cellcoex/service/CellCoexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unable to subscribe to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cws.wifi.state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/internal/cellcoex/service/CellCoexException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v0

    const-string v1, "cws.bt.state"

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$700(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/beans/PropertyChangeListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->removePropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/!\\ FATAL ERROR /!\\ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unable to subscribe to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cws.bt.state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/intel/internal/cellcoex/service/CellCoexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unable to subscribe to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cws.bt.state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/internal/cellcoex/service/CellCoexException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v0

    const-string v1, "cws.wifi.oper.params"

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$700(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/beans/PropertyChangeListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->removePropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/!\\ FATAL ERROR /!\\ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unable to subscribe to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cws.wifi.oper.params"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/intel/internal/cellcoex/service/CellCoexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unable to subscribe to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cws.wifi.oper.params"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/internal/cellcoex/service/CellCoexException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    const/4 v2, 0x0

    const v4, 0x90001

    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v4, v5, :cond_3

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v6}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".processMessage(CMD_COEX_PROP_CHANGED)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;

    if-nez v4, :cond_1

    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v6}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " malformed message obj is not ICoexPropProvider: "

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

    invoke-direct {p0, v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->processReceivedPropChange(Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;)Z

    move-result v2

    :cond_2
    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    const v4, 0x90002

    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v4, v5, :cond_2

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$100()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v6}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".processMessage(CMD_INTENT_RECEIVED)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Landroid/content/Intent;

    if-nez v4, :cond_5

    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-static {v6}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " malformed message obj is not Intent: "

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

    :cond_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;->processReceivedIntent(Landroid/content/Intent;)Z

    move-result v2

    goto/16 :goto_1
.end method
