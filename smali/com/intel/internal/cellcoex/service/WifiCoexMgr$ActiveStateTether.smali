.class Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;
.super Lcom/android/internal/util/State;
.source "WifiCoexMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/WifiCoexMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveStateTether"
.end annotation


# instance fields
.field private final mStateName:Ljava/lang/String;

.field final synthetic this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;


# direct methods
.method constructor <init>(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)V
    .locals 1

    .prologue
    .line 506
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 507
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;->mStateName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 511
    invoke-static {}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

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

    .line 513
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;->mStateName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

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

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_ACTIVE_TETHER:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    invoke-static {v0, v1}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->access$300(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/intel/internal/cellcoex/service/props/WifiState$State;)V

    .line 521
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Wi-Fi Tethering running on channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->access$2300(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)V

    .line 526
    invoke-static {}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->access$100()Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v0

    const-string v1, "mws.wifi.safeChannels"

    new-instance v2, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether$1;

    invoke-direct {v2, p0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether$1;-><init>(Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;)V

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setPropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z

    .line 533
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 562
    invoke-static {}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->access$100()Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v0

    const-string v1, "cws.wifi.softap.channel"

    new-instance v2, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;

    invoke-direct {v2}, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 563
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 537
    const/4 v0, 0x1

    .line 538
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 550
    const/4 v0, 0x0

    .line 553
    :goto_0
    return v0

    .line 540
    :pswitch_0
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    iget-object v2, v2, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->mOffState:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$OffState;

    invoke-static {v1, v2}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->access$2400(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
