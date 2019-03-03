.class Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$1;
.super Landroid/content/BroadcastReceiver;
.source "ModemSTM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;


# direct methods
.method constructor <init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)V
    .locals 0

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$1;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$1;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$002(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Z)Z

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$1;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mCoexBroadcastMessageReceiver got Airplane Mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$1;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$1;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$1;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    const v1, 0x80001

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->sendMessage(II)V

    :cond_0
    return-void
.end method
