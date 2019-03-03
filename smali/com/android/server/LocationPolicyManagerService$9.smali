.class Lcom/android/server/LocationPolicyManagerService$9;
.super Ljava/lang/Object;
.source "LocationPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationPolicyManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v6, 0x1

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    move v6, v3

    :goto_0
    return v6

    :pswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/LocationPolicyManagerService;->access$1600(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/LocationPolicyManagerService;->access$1600(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/location/ILocationPolicyListener;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2, v4, v5}, Landroid/location/ILocationPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/LocationPolicyManagerService;->access$1600(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_0

    :pswitch_1
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_2

    move v3, v6

    :cond_2
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/LocationPolicyManagerService;->access$1600(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_4

    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/LocationPolicyManagerService;->access$1600(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/location/ILocationPolicyListener;

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v2, v3}, Landroid/location/ILocationPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService$9;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/LocationPolicyManagerService;->access$1600(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_0

    :catch_0
    move-exception v7

    goto :goto_2

    :catch_1
    move-exception v7

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
