.class Lcom/intel/cws/cwsservicemanagerclient/CsmClient$1;
.super Landroid/content/BroadcastReceiver;
.source "CsmClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanagerclient/CsmClient;
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

    iput-object p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$1;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$1;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$402(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;Z)Z

    :cond_0
    return-void
.end method
