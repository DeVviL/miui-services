.class Lcom/android/server/display/WifiDisplayControllerInjector;
.super Ljava/lang/Object;
.source "WifiDisplayControllerInjector.java"


# static fields
.field private static mReceiver:Lcom/android/server/display/DisplayProjectionReceiver;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerProjectionReceiver(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "miui.action.START_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "miui.action.STOP_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/display/DisplayProjectionReceiver;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayProjectionReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController;)V

    sput-object v1, Lcom/android/server/display/WifiDisplayControllerInjector;->mReceiver:Lcom/android/server/display/DisplayProjectionReceiver;

    sget-object v1, Lcom/android/server/display/WifiDisplayControllerInjector;->mReceiver:Lcom/android/server/display/DisplayProjectionReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
