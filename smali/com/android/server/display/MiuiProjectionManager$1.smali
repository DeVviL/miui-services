.class Lcom/android/server/display/MiuiProjectionManager$1;
.super Ljava/lang/Object;
.source "MiuiProjectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/MiuiProjectionManager;->startProjection(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MiuiProjectionManager;


# direct methods
.method constructor <init>(Lcom/android/server/display/MiuiProjectionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/MiuiProjectionManager$1;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager$1;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    invoke-static {v0}, Lcom/android/server/display/MiuiProjectionManager;->access$100(Lcom/android/server/display/MiuiProjectionManager;)V

    return-void
.end method
