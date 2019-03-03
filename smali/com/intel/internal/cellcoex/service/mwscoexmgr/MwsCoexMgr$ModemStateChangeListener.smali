.class final Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;
.super Landroid/telephony/PhoneStateListener;
.source "MwsCoexMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ModemStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;


# direct methods
.method private constructor <init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->access$000()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isRadioOn()Z

    move-result v2

    const-string v3, "CWS_CELLCOEX_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    invoke-static {v5}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "TelephonyManager.isRadioOn() is ready..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->access$000()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->access$200()Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->access$302(Z)Z

    new-instance v1, Landroid/content/Intent;

    const-string v3, "intel.intent.action.ACTION_CELLCOEX_UNBLOCK_BOOT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->access$400()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "CWS_CELLCOEX_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr$ModemStateChangeListener;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    invoke-static {v5}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "TelephonyManager.isRadioOn() not yet ready..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->access$302(Z)Z

    goto :goto_0
.end method
