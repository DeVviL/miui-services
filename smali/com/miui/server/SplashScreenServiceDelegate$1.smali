.class Lcom/miui/server/SplashScreenServiceDelegate$1;
.super Landroid/content/BroadcastReceiver;
.source "SplashScreenServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SplashScreenServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SplashScreenServiceDelegate;


# direct methods
.method constructor <init>(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string v2, "Boot completed, delay to bind SplashScreenService"

    invoke-static {v1, v2, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->access$000(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$100(Lcom/miui/server/SplashScreenServiceDelegate;)V

    goto :goto_0

    :cond_2
    const-string v1, "miui.intent.action.ad.DEBUG_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string v2, "Debug On"

    invoke-static {v1, v2, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->access$000(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Z)V

    invoke-static {v3}, Lcom/miui/server/SplashScreenServiceDelegate;->access$202(Z)Z

    goto :goto_0

    :cond_3
    const-string v1, "miui.intent.action.ad.DEBUG_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string v2, "Debug Off"

    invoke-static {v1, v2, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->access$000(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$202(Z)Z

    goto :goto_0
.end method
