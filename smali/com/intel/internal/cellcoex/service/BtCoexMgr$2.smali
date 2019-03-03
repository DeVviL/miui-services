.class Lcom/intel/internal/cellcoex/service/BtCoexMgr$2;
.super Landroid/content/BroadcastReceiver;
.source "BtCoexMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/internal/cellcoex/service/BtCoexMgr;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;


# direct methods
.method constructor <init>(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$2;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$2;->this$0:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-static {v1, v0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->access$300(Lcom/intel/internal/cellcoex/service/BtCoexMgr;I)V

    return-void
.end method
