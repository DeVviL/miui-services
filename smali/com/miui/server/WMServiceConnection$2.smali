.class Lcom/miui/server/WMServiceConnection$2;
.super Ljava/lang/Object;
.source "WMServiceConnection.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/WMServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/WMServiceConnection;


# direct methods
.method constructor <init>(Lcom/miui/server/WMServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/server/WMServiceConnection$2;->this$0:Lcom/miui/server/WMServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "WMServiceConnection"

    const-string v1, "Inspector service binderDied!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/server/WMServiceConnection$2;->this$0:Lcom/miui/server/WMServiceConnection;

    invoke-static {v0}, Lcom/miui/server/WMServiceConnection;->access$400(Lcom/miui/server/WMServiceConnection;)V

    return-void
.end method
