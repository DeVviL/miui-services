.class Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;
.super Landroid/os/Handler;
.source "MiuiContentProviderControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MiuiContentProviderControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MiuiContentProviderControl;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MiuiContentProviderControl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->this$0:Lcom/android/server/am/MiuiContentProviderControl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->this$0:Lcom/android/server/am/MiuiContentProviderControl;

    invoke-static {v1}, Lcom/android/server/am/MiuiContentProviderControl;->access$000(Lcom/android/server/am/MiuiContentProviderControl;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->this$0:Lcom/android/server/am/MiuiContentProviderControl;

    invoke-static {v1}, Lcom/android/server/am/MiuiContentProviderControl;->access$100(Lcom/android/server/am/MiuiContentProviderControl;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->this$0:Lcom/android/server/am/MiuiContentProviderControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/StartProviderInfo;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/server/am/MiuiContentProviderControl;->access$200(Lcom/android/server/am/MiuiContentProviderControl;Lcom/android/server/am/StartProviderInfo;Landroid/app/IActivityManager$ContentProviderHolder;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
