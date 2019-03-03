.class final Lcom/android/server/display/DisplayProjectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisplayProjectionReceiver.java"


# static fields
.field public static final ACTION_START_PROJECTION:Ljava/lang/String; = "miui.action.START_PROJECTION"

.field public static final ACTION_STOP_PROJECTION:Ljava/lang/String; = "miui.action.STOP_PROJECTION"

.field private static final TAG:Ljava/lang/String; = "DisplayProjectionReceiver"


# instance fields
.field private mProjectionManager:Lcom/android/server/display/MiuiProjectionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/android/server/display/MiuiProjectionManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/display/MiuiProjectionManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayProjectionReceiver;->mProjectionManager:Lcom/android/server/display/MiuiProjectionManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/DisplayProjectionReceiver;)Lcom/android/server/display/MiuiProjectionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayProjectionReceiver;->mProjectionManager:Lcom/android/server/display/MiuiProjectionManager;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "miui.action.START_PROJECTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "iface"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayProjectionReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start projection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/android/server/display/DisplayProjectionReceiver$1;

    invoke-direct {v2, p0, v1}, Lcom/android/server/display/DisplayProjectionReceiver$1;-><init>(Lcom/android/server/display/DisplayProjectionReceiver;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/display/DisplayProjectionReceiver$1;->start()V

    goto :goto_0

    :cond_2
    const-string v2, "miui.action.STOP_PROJECTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DisplayProjectionReceiver"

    const-string v3, "stop active projection "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/display/DisplayProjectionReceiver$2;

    invoke-direct {v2, p0}, Lcom/android/server/display/DisplayProjectionReceiver$2;-><init>(Lcom/android/server/display/DisplayProjectionReceiver;)V

    invoke-virtual {v2}, Lcom/android/server/display/DisplayProjectionReceiver$2;->start()V

    goto :goto_0
.end method
