.class public final Lcom/android/server/AppOpsServiceState$Callback;
.super Ljava/lang/Object;
.source "AppOpsServiceState.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Callback"
.end annotation


# instance fields
.field final mCallback:Lcom/android/internal/app/IOpsCallback;

.field volatile mUnLink:Z

.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/AppOpsServiceState;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsServiceState;Lcom/android/internal/app/IOpsCallback;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/AppOpsServiceState$Callback;->this$0:Lcom/android/server/AppOpsServiceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/AppOpsServiceState$Callback;->mCallback:Lcom/android/internal/app/IOpsCallback;

    iput p3, p0, Lcom/android/server/AppOpsServiceState$Callback;->mUserId:I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsServiceState$Callback;->mCallback:Lcom/android/internal/app/IOpsCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const-string v0, "AppOpsServiceState"

    const-string v1, "linkToDeath"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/AppOpsServiceState$Callback;->unlinkToDeath()V

    iget-object v0, p0, Lcom/android/server/AppOpsServiceState$Callback;->this$0:Lcom/android/server/AppOpsServiceState;

    iget v1, p0, Lcom/android/server/AppOpsServiceState$Callback;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/AppOpsServiceState;->access$300(Lcom/android/server/AppOpsServiceState;I)V

    const-string v0, "AppOpsServiceState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied mUserId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AppOpsServiceState$Callback;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unlinkToDeath()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/AppOpsServiceState$Callback;->mUnLink:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/AppOpsServiceState$Callback;->mUnLink:Z

    iget-object v0, p0, Lcom/android/server/AppOpsServiceState$Callback;->mCallback:Lcom/android/internal/app/IOpsCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
