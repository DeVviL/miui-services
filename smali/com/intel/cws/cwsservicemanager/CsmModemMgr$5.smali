.class Lcom/intel/cws/cwsservicemanager/CsmModemMgr$5;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$5;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "mAcquireFailureHandler - sending intent with delay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "Modem Manager Acquire Failure"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$5;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$800(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CsmModemMgr$5;->this$0:Lcom/intel/cws/cwsservicemanager/CsmModemMgr;

    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CsmModemMgr;->access$800(Lcom/intel/cws/cwsservicemanager/CsmModemMgr;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->csmBroadcastIntent(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_1
    return-void
.end method
