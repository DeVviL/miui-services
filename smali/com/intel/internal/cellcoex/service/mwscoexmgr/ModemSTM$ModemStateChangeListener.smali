.class final Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$ModemStateChangeListener;
.super Landroid/telephony/PhoneStateListener;
.source "ModemSTM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ModemStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;


# direct methods
.method private constructor <init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)V
    .locals 0

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$ModemStateChangeListener;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$ModemStateChangeListener;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$ModemStateChangeListener;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$202(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;I)I

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$ModemStateChangeListener;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onServiceStateChanged(DataRegState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$ModemStateChangeListener;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$ModemStateChangeListener;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    const v1, 0x80001

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$ModemStateChangeListener;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->sendMessage(II)V

    return-void
.end method
