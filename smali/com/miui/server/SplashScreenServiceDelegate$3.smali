.class Lcom/miui/server/SplashScreenServiceDelegate$3;
.super Ljava/lang/Object;
.source "SplashScreenServiceDelegate.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

    .prologue
    .line 230
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate$3;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$3;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string v1, "SplashScreenService binderDied!"

    invoke-static {v0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$300(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$3;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v0}, Lcom/miui/server/SplashScreenServiceDelegate;->access$1100(Lcom/miui/server/SplashScreenServiceDelegate;)V

    .line 235
    return-void
.end method
