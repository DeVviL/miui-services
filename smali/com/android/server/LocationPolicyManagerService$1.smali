.class Lcom/android/server/LocationPolicyManagerService$1;
.super Lcom/android/internal/app/IUidStateChangeCallback$Stub;
.source "LocationPolicyManagerService.java"


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

    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$1;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IUidStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidStateChange(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$1;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/LocationPolicyManagerService;->access$000(Lcom/android/server/LocationPolicyManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$1;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v0, p1}, Lcom/android/server/LocationPolicyManagerService;->access$100(Lcom/android/server/LocationPolicyManagerService;I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
