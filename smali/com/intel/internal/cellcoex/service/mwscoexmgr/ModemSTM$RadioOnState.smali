.class Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;
.super Lcom/android/internal/util/State;
.source "ModemSTM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RadioOnState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;


# direct methods
.method constructor <init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)V
    .locals 0

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->getName()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$600(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/props/MwsState;

    move-result-object v0

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->RADIO_ON:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    iput-object v1, v0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$600(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/props/MwsState;

    move-result-object v0

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->UNREGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    iput-object v1, v0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$700(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v0

    const-string v1, "mws.state"

    new-instance v2, Lcom/intel/internal/cellcoex/service/props/MwsState;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$600(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/props/MwsState;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/intel/internal/cellcoex/service/props/MwsState;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsState;)V

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$1000(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$1100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOffState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$1200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V

    :cond_1
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$1500(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$1600(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$1300(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$1400(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".processMessage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v1, 0x80001

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$1300(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$1700(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$1500(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$1800(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$1100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOffState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$1900(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
