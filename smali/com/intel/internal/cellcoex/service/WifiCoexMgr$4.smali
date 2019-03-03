.class Lcom/intel/internal/cellcoex/service/WifiCoexMgr$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiCoexMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;


# direct methods
.method constructor <init>(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$4;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$4;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Wi-Fi P2P connected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$4;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$4;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sendMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$4;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Wi-Fi P2P disconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$4;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$4;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
