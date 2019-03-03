.class Lcom/intel/cws/cwsservicemanagerclient/CsmClient$4;
.super Landroid/content/BroadcastReceiver;
.source "CsmClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmActivateSimStatusReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;


# direct methods
.method constructor <init>(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)V
    .locals 0

    iput-object p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$4;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$4;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    iget-object v4, v4, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mSimStatusReceiver - action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$4;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    iget-object v4, v4, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mSimStatusReceiver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - wrong action received"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$4;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    iget-object v4, v4, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mSimStatusReceiver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - not possible to get the string"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$4;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    iget-object v4, v4, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mSimStatusReceiver - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "currentSimState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$4;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-virtual {v2}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->onSimAbsent()V

    goto :goto_0

    :cond_5
    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$4;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-virtual {v2}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->onSimLoaded()V

    goto/16 :goto_0
.end method
