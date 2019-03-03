.class final Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$WifiSafeChanProvPropChangeListener;
.super Ljava/lang/Object;
.source "WifiSafeChannelProviderSTM.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiSafeChanProvPropChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;


# direct methods
.method private constructor <init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)V
    .locals 0

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$WifiSafeChanProvPropChangeListener;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$WifiSafeChanProvPropChangeListener;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 3

    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$WifiSafeChanProvPropChangeListener;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->access$200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mws.lte_reg_status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " old value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getOldValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$WifiSafeChanProvPropChangeListener;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;

    const v1, 0x80001

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
