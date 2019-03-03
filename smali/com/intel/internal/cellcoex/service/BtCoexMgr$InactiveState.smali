.class Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;
.super Lcom/android/internal/util/State;
.source "BtCoexMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/BtCoexMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InactiveState"
.end annotation


# instance fields
.field private final mStateName:Ljava/lang/String;

.field final synthetic this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;


# direct methods
.method constructor <init>(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V
    .locals 1

    .prologue
    .line 378
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 379
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->mStateName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 383
    invoke-static {}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->mStateName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$100(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 388
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1200(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/service/BtCoexMgr$ActiveState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1900(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$2000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;->deinitPropListeners()Z

    move-result v0

    if-nez v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$2100(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V

    .line 396
    :cond_2
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 428
    invoke-static {}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->mStateName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 400
    invoke-static {}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$700()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->mStateName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".processMessage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    const/4 v0, 0x1

    .line 403
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 417
    :pswitch_0
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Unhandled message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v0, 0x0

    .line 420
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$2400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V

    .line 423
    :cond_1
    :goto_0
    :pswitch_1
    return v0

    .line 409
    :pswitch_2
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$100(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 410
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1200(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/service/BtCoexMgr$ActiveState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$2200(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 413
    :pswitch_3
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 414
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$1200(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/service/BtCoexMgr$ActiveState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$2300(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
