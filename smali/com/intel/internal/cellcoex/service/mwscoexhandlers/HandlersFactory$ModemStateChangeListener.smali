.class final Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$ModemStateChangeListener;
.super Landroid/telephony/PhoneStateListener;
.source "HandlersFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ModemStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;


# direct methods
.method private constructor <init>(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$ModemStateChangeListener;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$ModemStateChangeListener;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$ModemStateChangeListener;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->access$100(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "onServiceStateChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x3

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$ModemStateChangeListener;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$ModemStateChangeListener;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->access$300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->access$202(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;Z)Z

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$ModemStateChangeListener;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$ModemStateChangeListener;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->access$100(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "failed to retrieve base band version while telephony is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "no more OFF..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$ModemStateChangeListener;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->access$500(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$ModemStateChangeListener;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->access$400(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;)Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory$ModemStateChangeListener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "intel.intent.action.ACTION_CELLCOEX_UNBLOCK_BOOT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/HandlersFactory;->access$600()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
