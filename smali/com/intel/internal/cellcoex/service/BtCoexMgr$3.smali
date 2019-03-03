.class Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;
.super Landroid/content/BroadcastReceiver;
.source "BtCoexMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/internal/cellcoex/service/BtCoexMgr;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;


# direct methods
.method constructor <init>(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 225
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 226
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 253
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

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

    .line 255
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$600(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V

    .line 258
    :goto_0
    return-void

    .line 229
    :pswitch_0
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

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

    .line 230
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1, v4}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$402(Lcom/intel/internal/cellcoex/service/BtCoexMgr;I)I

    .line 231
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/BtState$State;->RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$500(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/intel/internal/cellcoex/service/props/BtState$State;)V

    .line 232
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 236
    :pswitch_1
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BluetoothAdapter.STATE_TURNING_ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :pswitch_2
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

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

    .line 241
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$402(Lcom/intel/internal/cellcoex/service/BtCoexMgr;I)I

    .line 242
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/BtState$State;->RADIO_ON:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$500(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/intel/internal/cellcoex/service/props/BtState$State;)V

    .line 243
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 247
    :pswitch_3
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

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

    .line 248
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1, v4}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$402(Lcom/intel/internal/cellcoex/service/BtCoexMgr;I)I

    .line 249
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/BtState$State;->RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$500(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/intel/internal/cellcoex/service/props/BtState$State;)V

    .line 250
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
