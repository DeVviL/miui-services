.class Lcom/intel/internal/cellcoex/test/CoexPropertyTest$1;
.super Landroid/content/BroadcastReceiver;
.source "CoexPropertyTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/test/CoexPropertyTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/internal/cellcoex/test/CoexPropertyTest;


# direct methods
.method constructor <init>(Lcom/intel/internal/cellcoex/test/CoexPropertyTest;)V
    .locals 0

    iput-object p1, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest$1;->this$0:Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "intel.intent.action.ACTION_CELLCOEX_PROP_TEST"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/intel/internal/cellcoex/test/CoexPropertyTest$1;->this$0:Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->access$000(Lcom/intel/internal/cellcoex/test/CoexPropertyTest;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intel/internal/cellcoex/test/ITestIntentParser;

    invoke-interface {v2, p2}, Lcom/intel/internal/cellcoex/test/ITestIntentParser;->parseIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    return-void
.end method
