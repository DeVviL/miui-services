.class Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether$1;
.super Ljava/lang/Object;
.source "WifiCoexMgr.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;


# direct methods
.method constructor <init>(Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether$1;->this$1:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 1
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether$1;->this$1:Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;

    iget-object v0, v0, Lcom/intel/internal/cellcoex/service/WifiCoexMgr$ActiveStateTether;->this$0:Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    invoke-static {v0}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->access$2300(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)V

    .line 531
    return-void
.end method
