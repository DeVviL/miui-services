.class Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;
.super Lcom/android/internal/util/State;
.source "ModemSTM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RadioOnUnregisteredState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;


# direct methods
.method constructor <init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 295
    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$600(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/props/MwsState;

    move-result-object v0

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->UNREGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    iput-object v1, v0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    .line 301
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$700(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v0

    const-string v1, "mws.state"

    new-instance v2, Lcom/intel/internal/cellcoex/service/props/MwsState;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$600(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/props/MwsState;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/intel/internal/cellcoex/service/props/MwsState;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsState;)V

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 302
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 306
    const/4 v1, 0x0

    .line 307
    .local v1, "retVal":Z
    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->getName()Ljava/lang/String;

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

    .line 310
    :cond_0
    const v2, 0x80002

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_9

    .line 311
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    if-nez v2, :cond_2

    .line 312
    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " received LteRegStatus msg with malformed obj field"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_1
    :goto_0
    return v1

    .line 315
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    .line 316
    .local v0, "aMwsLteRegStatus":Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;
    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->isAgressive()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 317
    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$300()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 318
    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " /!\\ Lte aggression /!\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_3
    iget-object v2, v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    sget-object v3, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->REGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    if-ne v2, v3, :cond_4

    .line 321
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$2000(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredAgressive;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$2100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V

    .line 338
    :cond_4
    :goto_1
    const/4 v1, 0x1

    .line 339
    goto :goto_0

    .line 324
    :cond_5
    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$300()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 325
    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LTE on and harmless"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_6
    iget-object v2, v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    sget-object v3, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->REGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    if-ne v2, v3, :cond_8

    .line 328
    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$300()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 329
    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LTE registered and harmless"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_7
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$1300(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$2200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 334
    :cond_8
    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$300()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 335
    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " No LTE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 340
    .end local v0    # "aMwsLteRegStatus":Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;
    :cond_9
    const v2, 0x80001

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_1

    .line 341
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_a

    const/4 v2, 0x2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_1

    .line 343
    :cond_a
    const/4 v1, 0x1

    .line 344
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$1300(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$2300(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0
.end method
