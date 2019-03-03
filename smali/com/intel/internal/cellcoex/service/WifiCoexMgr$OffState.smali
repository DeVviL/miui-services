.class Lcom/intel/internal/cellcoex/service/WifiCoexMgr$OffState;
.super Lcom/android/internal/util/State;
.source "WifiCoexMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OffState"
.end annotation


# instance fields
.field private final mStateName:Ljava/lang/String;

.field final synthetic this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;


# direct methods
.method constructor <init>(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)V
    .locals 1

    .prologue
    .line 362
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$OffState;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 363
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$OffState;->mStateName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 367
    invoke-static {}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$OffState;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "##########################"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$OffState;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$OffState;->mStateName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$OffState;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "##########################"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$OffState;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    invoke-static {v0, v1}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->access$300(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/intel/internal/cellcoex/service/props/WifiState$State;)V

    .line 375
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 379
    const/4 v0, 0x1

    .line 380
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 394
    const/4 v0, 0x0

    .line 397
    :goto_0
    return v0

    .line 382
    :sswitch_0
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$OffState;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$OffState;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    iget-object v2, v2, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mActiveStateTether:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->access$1400(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 385
    :sswitch_1
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$OffState;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$OffState;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    iget-object v2, v2, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mIdleState:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$IdleState;

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->access$1500(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 380
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method
