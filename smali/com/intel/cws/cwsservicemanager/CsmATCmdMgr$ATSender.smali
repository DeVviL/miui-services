.class public Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;
.super Ljava/lang/Object;
.source "CsmATCmdMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ATSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;


# direct methods
.method public constructor <init>(Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;->this$0:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SendCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v4, "ERROR"

    const-wide/16 v8, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v8, p0, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;->this$0:Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;

    invoke-static {v8}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->access$000(Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;)Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->access$100()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "CWS_SERVICE_MGR-ATMgr"

    const-string v9, "ATSendCmd OemPhoneService handle is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v5, v4

    :goto_0
    return-object v5

    :cond_1
    if-nez p1, :cond_3

    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->access$100()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "CWS_SERVICE_MGR-ATMgr"

    const-string v9, "ATSendCmd is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v5, v4

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->access$100()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "CWS_SERVICE_MGR-ATMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ATSendCmd: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/util/concurrent/FutureTask;

    new-instance v8, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender$1;

    invoke-direct {v8, p0, p1}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender$1;-><init>(Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr$ATSender;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v6, v7

    :goto_1
    invoke-static {}, Lcom/intel/cws/cwsservicemanager/CsmATCmdMgr;->access$100()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "CWS_SERVICE_MGR-ATMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ATSendCmd get modem response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v5, v4

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_2
    const-string v8, "CWS_SERVICE_MGR-ATMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Interruption while ATSendCmd: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_3
    const-string v8, "CWS_SERVICE_MGR-ATMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Execution exception while ATSendCmd: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v3

    :goto_4
    const-string v8, "CWS_SERVICE_MGR-ATMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Timeout while ATSendCmd: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v3

    move-object v6, v7

    goto :goto_4

    :catch_4
    move-exception v3

    move-object v6, v7

    goto :goto_3

    :catch_5
    move-exception v3

    move-object v6, v7

    goto :goto_2
.end method
