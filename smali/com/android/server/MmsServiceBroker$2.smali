.class Lcom/android/server/MmsServiceBroker$2;
.super Ljava/lang/Object;
.source "MmsServiceBroker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MmsServiceBroker;


# direct methods
.method constructor <init>(Lcom/android/server/MmsServiceBroker;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 92
    const-string v0, "MmsServiceBroker"

    const-string v1, "MmsService connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {p2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/MmsServiceBroker;->access$102(Lcom/android/server/MmsServiceBroker;Lcom/android/internal/telephony/IMms;)Lcom/android/internal/telephony/IMms;

    .line 95
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 96
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 101
    const-string v0, "MmsServiceBroker"

    const-string v1, "MmsService unexpectedly disconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/MmsServiceBroker;->access$102(Lcom/android/server/MmsServiceBroker;Lcom/android/internal/telephony/IMms;)Lcom/android/internal/telephony/IMms;

    .line 104
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 105
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$200(Lcom/android/server/MmsServiceBroker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v1}, Lcom/android/server/MmsServiceBroker;->access$200(Lcom/android/server/MmsServiceBroker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 111
    return-void

    .line 105
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
