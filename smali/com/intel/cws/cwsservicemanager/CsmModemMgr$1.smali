.class Lcom/intel/cws/cwsservicemanager/CsmModemMgr$1;
.super Landroid/content/BroadcastReceiver;
.source "CsmModemMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/CsmModemMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;


# direct methods
.method constructor <init>(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/16 v5, 0x1e

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Modem Manager Connect Success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "modemManagerConnectSuccessReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v4}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$102(I)I

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$200(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "Modem Manager Connect Failure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$108()I

    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modemManagerConnectFailureReceiver - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$100()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$100()I

    move-result v1

    if-le v5, v1, :cond_4

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$300(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V

    goto :goto_0

    :cond_4
    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "connectAsync - retries exceed the failure limit"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-static {v1, v4}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$402(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;Z)Z

    goto :goto_0

    :cond_5
    const-string v1, "Modem Manager Acquire Success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$000()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "modemManagerAcquireSuccessReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {v4}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$502(I)I

    goto :goto_0

    :cond_7
    const-string v1, "Modem Manager Acquire Failure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$508()I

    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$000()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modemManagerAcquireFailureReceiver - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$500()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$500()I

    move-result v1

    if-le v5, v1, :cond_9

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$200(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "acquireAsync - retries exceed the failure limit"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-static {v1, v4}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$402(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;Z)Z

    goto/16 :goto_0
.end method
