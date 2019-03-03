.class Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;
.super Lcom/android/internal/util/State;
.source "ModemSTM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RadioOnRegisteredNotAgressive"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;


# direct methods
.method constructor <init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)V
    .locals 0

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

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

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;->getName()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$600(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/props/MwsState;

    move-result-object v0

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->REGISTERED_NOT_AGRESSIVE:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    iput-object v1, v0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$700(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v0

    const-string v1, "mws.state"

    new-instance v2, Lcom/intel/internal/cellcoex/service/props/MwsState;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$600(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/props/MwsState;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/intel/internal/cellcoex/service/props/MwsState;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsState;)V

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".processMessage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    return v1

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    if-nez v2, :cond_2

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " received LteRegStatus msg with malformed obj field"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->isAgressive()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$300()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " /!\\ Lte aggression /!\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$2000(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredAgressive;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$2400(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V

    :cond_4
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$300()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Lte harmless."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    const/4 v1, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x80001
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
