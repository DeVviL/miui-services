.class Lcom/intel/cws/cwsservicemanager/CsmModemMgr$6;
.super Ljava/lang/Object;
.source "CsmModemMgr.java"

# interfaces
.implements Lcom/intel/internal/telephony/AsyncOperationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->acquireAsync()V
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

    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$6;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperationComplete()V
    .locals 3

    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "acquireModemAsync - onOperationComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "Modem Manager Acquire Success"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$6;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$800(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$6;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$800(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->csmBroadcastIntent(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onOperationError(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "CWS_SERVICE_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error during acquireModemAsync - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$6;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$1000(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
