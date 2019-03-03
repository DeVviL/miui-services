.class Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;
.super Landroid/content/BroadcastReceiver;
.source "CwsServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;


# direct methods
.method constructor <init>(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "Boot Completed - Broadcasting pending intents"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->csmBroadcastPendingIntents()V

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$200(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->getInstance(Landroid/content/Context;)Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$102(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;)Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    invoke-static {v1}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$100(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;)Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr$1;->this$0:Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;

    invoke-static {v3}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$100(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;)Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;-><init>(Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;)V

    invoke-static {v1, v2}, Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;->access$302(Lcom/intel/cws/cwsservicemanager/CwsServiceMgr;Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;)Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;

    :cond_1
    return-void
.end method
