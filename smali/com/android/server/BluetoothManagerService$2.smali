.class Lcom/android/server/BluetoothManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 211
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    const-string v2, "android.bluetooth.adapter.extra.LOCAL_NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "newName":Ljava/lang/String;
    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bluetooth Adapter name changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-eqz v1, :cond_0

    .line 216
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .end local v1    # "newName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 219
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$300(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    monitor-enter v3

    .line 220
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 222
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;I)V

    .line 227
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 229
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$700(Lcom/android/server/BluetoothManagerService;)V

    .line 234
    :cond_3
    :goto_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 224
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;I)V

    goto :goto_1

    .line 230
    :cond_5
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$800(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 232
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 235
    :cond_6
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 236
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$100(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$100(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    const/16 v4, 0x12c

    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 238
    :cond_7
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$300(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    monitor-enter v3

    .line 240
    :try_start_2
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$800(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 242
    const-string v2, "BluetoothManagerService"

    const-string v4, "Auto-enabling Bluetooth."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;Z)V

    .line 245
    :cond_8
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 247
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    const-string v2, "BluetoothManagerService"

    const-string v3, "Retrieving Bluetooth Adapter name and address..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v2}, Lcom/android/server/BluetoothManagerService;->getNameAndAddress()V

    goto/16 :goto_0

    .line 245
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method