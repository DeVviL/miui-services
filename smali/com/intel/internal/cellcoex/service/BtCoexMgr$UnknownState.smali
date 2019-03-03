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

    .prologue
    .line 279
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 280
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

    .prologue
    const/4 v4, 0x1

    .line 284
    invoke-static {}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$700()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
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

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$800(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_3

    .line 288
    invoke-static {}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$700()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
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

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1, v4}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$402(Lcom/intel/internal/cellcoex/service/BtCoexMgr;I)I

    .line 291
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/BtState$State;->RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$500(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/intel/internal/cellcoex/service/props/BtState$State;)V

    .line 292
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sendMessage(Landroid/os/Message;)V

    .line 330
    :cond_2
    :goto_0
    return-void

    .line 296
    :cond_3
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$200(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/intel/internal/cellcoex/service/props/MwsState;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$102(Lcom/intel/internal/cellcoex/service/BtCoexMgr;I)I

    .line 298
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$800(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 299
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 325
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

    .line 327
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$900(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V

    goto :goto_0

    .line 301
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

    .line 302
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1, v4}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$402(Lcom/intel/internal/cellcoex/service/BtCoexMgr;I)I

    .line 303
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/BtState$State;->RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$500(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/intel/internal/cellcoex/service/props/BtState$State;)V

    .line 304
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 307
    :pswitch_1
    invoke-static {}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$700()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
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

    .line 312
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

    .line 313
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$402(Lcom/intel/internal/cellcoex/service/BtCoexMgr;I)I

    .line 314
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/BtState$State;->RADIO_ON:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$500(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/intel/internal/cellcoex/service/props/BtState$State;)V

    .line 315
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 318
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

    .line 319
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1, v4}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$402(Lcom/intel/internal/cellcoex/service/BtCoexMgr;I)I

    .line 320
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/BtState$State;->RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$500(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/intel/internal/cellcoex/service/props/BtState$State;)V

    .line 321
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 299
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

    .prologue
    .line 370
    invoke-static {}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
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

    .line 372
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, -0x1

    .line 334
    invoke-static {}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$700()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
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

    .line 336
    :cond_0
    const/4 v0, 0x1

    .line 337
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 359
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

    .line 360
    const/4 v0, 0x0

    .line 362
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1800(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V

    .line 365
    :cond_1
    :goto_0
    return v0

    .line 339
    :pswitch_1
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$100(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 340
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1100(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 343
    :pswitch_2
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$100(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 344
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1200(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/service/BtCoexMgr$ActiveState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1300(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 345
    :cond_2
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$100(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 346
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 349
    :pswitch_3
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 350
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1500(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 353
    :pswitch_4
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 354
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1200(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/service/BtCoexMgr$ActiveState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1600(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 355
    :cond_3
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 356
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1700(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
