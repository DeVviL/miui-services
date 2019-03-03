.class Lcom/intel/internal/cellcoex/service/WifiCoexMgr$5;
.super Ljava/lang/Object;
.source "WifiCoexMgr.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;


# direct methods
.method constructor <init>(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$5;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 4
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;

    .prologue
    .line 274
    invoke-static {}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->access$100()Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v1

    const-string v2, "mws.wifi.safeChannels"

    invoke-interface {v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->getProp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

    .line 276
    .local v0, "mwsWifiSafeChannels24":Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;
    if-eqz v0, :cond_0

    .line 277
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$5;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->access$000(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Wi-Fi safe channels: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    return-void
.end method
