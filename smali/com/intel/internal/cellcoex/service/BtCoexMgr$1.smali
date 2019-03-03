.class Lcom/intel/internal/cellcoex/service/BtCoexMgr$1;
.super Ljava/lang/Object;
.source "BtCoexMgr.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


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
    .line 196
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$1;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 5
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;

    .prologue
    .line 199
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    .line 200
    .local v1, "eventVal":Ljava/lang/Object;
    instance-of v2, v1, Lcom/intel/internal/cellcoex/service/props/MwsState;

    if-nez v2, :cond_0

    .line 201
    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$1;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$1;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-virtual {v4}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "malformed message obj: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_0
    return-void

    :cond_0
    move-object v0, v1

    .line 206
    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsState;

    .line 207
    .local v0, "aNewMwsState":Lcom/intel/internal/cellcoex/service/props/MwsState;
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$1;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$1;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v3, v0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$200(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/intel/internal/cellcoex/service/props/MwsState;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$102(Lcom/intel/internal/cellcoex/service/BtCoexMgr;I)I

    .line 208
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$1;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$1;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$1;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$100(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
