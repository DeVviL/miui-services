.class Lcom/miui/server/PerfShielderService$BindServiceHandler;
.super Landroid/os/Handler;
.source "PerfShielderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/PerfShielderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/PerfShielderService;


# direct methods
.method public constructor <init>(Lcom/miui/server/PerfShielderService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/miui/server/PerfShielderService$BindServiceHandler;->this$0:Lcom/miui/server/PerfShielderService;

    .line 710
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 711
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 715
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 723
    :goto_0
    return-void

    .line 717
    :pswitch_0
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$BindServiceHandler;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->access$100(Lcom/miui/server/PerfShielderService;)V

    goto :goto_0

    .line 720
    :pswitch_1
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$BindServiceHandler;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->access$1300(Lcom/miui/server/PerfShielderService;)V

    goto :goto_0

    .line 715
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
