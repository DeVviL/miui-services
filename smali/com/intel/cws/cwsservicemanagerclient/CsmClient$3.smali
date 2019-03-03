.class Lcom/intel/cws/cwsservicemanagerclient/CsmClient$3;
.super Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener$Stub;
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

    iput-object p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$3;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public mmgrClbkModemAvailable()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$3;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    iget-object v3, v3, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Modem is available message received"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$3;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-static {v1}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$1000(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)B

    move-result v0

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$3;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-static {v1, v4}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$1002(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;B)B

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$3;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-static {v1}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$1100(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    if-eq v0, v4, :cond_1

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$3;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-virtual {v1}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientModemAvailable()V

    :cond_1
    return-void
.end method

.method public mmgrClbkModemUnavailable(I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x4

    invoke-static {}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$3;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    iget-object v3, v3, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Modem is unavailable - reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$3;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-static {v1}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$1000(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)B

    move-result v0

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$3;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-static {v1}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$1100(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$3;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-static {v1}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$1100(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    :cond_1
    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_3

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$3;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-static {v1, v5}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$1002(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;B)B

    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$3;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-virtual {v1}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientModemUnavailable()V

    :cond_2
    return-void

    :cond_3
    if-ne p1, v4, :cond_4

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$3;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$1002(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;B)B

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$3;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-static {v1, v4}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$1002(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;B)B

    goto :goto_0
.end method
