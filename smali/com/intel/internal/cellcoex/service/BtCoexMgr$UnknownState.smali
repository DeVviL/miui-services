.class Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;
.super Lcom/android/internal/util/State;
.source "BtCoexMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/BtCoexMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnknownState"
.end annotation


# instance fields
.field private final mStateName:Ljava/lang/String;

.field final synthetic this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;


# direct methods
.method constructor <init>(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V
    .locals 1

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->mStateName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$700()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->mStateName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".enter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$800(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$700()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DefaultAdapter not ready. state = STATE_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1, v4}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$402(Lcom/intel/internal/cellcoex/service/BtCoexMgr;I)I

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/BtState$State;->RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$500(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/intel/internal/cellcoex/service/props/BtState$State;)V

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sendMessage(Landroid/os/Message;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$200(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/intel/internal/cellcoex/service/props/MwsState;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$102(Lcom/intel/internal/cellcoex/service/BtCoexMgr;I)I

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$800(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Unhandled state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$900(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V

    goto :goto_0

    :pswitch_0
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BluetoothAdapter.STATE_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1, v4}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$402(Lcom/intel/internal/cellcoex/service/BtCoexMgr;I)I

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/BtState$State;->RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$500(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/intel/internal/cellcoex/service/props/BtState$State;)V

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$700()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BluetoothAdapter.STATE_TURNING_ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BluetoothAdapter.STATE_ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$402(Lcom/intel/internal/cellcoex/service/BtCoexMgr;I)I

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/BtState$State;->RADIO_ON:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$500(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/intel/internal/cellcoex/service/props/BtState$State;)V

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BluetoothAdapter.STATE_TURNING_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1, v4}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$402(Lcom/intel/internal/cellcoex/service/BtCoexMgr;I)I

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/BtState$State;->RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$500(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/intel/internal/cellcoex/service/props/BtState$State;)V

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public exit()V
    .locals 3

    invoke-static {}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->mStateName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v4, -0x1

    invoke-static {}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$700()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->mStateName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".processMessage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Unhandled message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1800(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V

    :cond_1
    :goto_0
    return v0

    :pswitch_1
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$100(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v1

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1100(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$100(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1200(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/service/BtCoexMgr$ActiveState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1300(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$100(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v1

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1500(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1200(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/service/BtCoexMgr$ActiveState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1600(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1700(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
