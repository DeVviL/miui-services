.class Lcom/android/server/content/SyncManager$ScreenOffIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOffIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method private constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/content/SyncManager$ScreenOffIntentReceiver;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$ScreenOffIntentReceiver;-><init>(Lcom/android/server/content/SyncManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/content/SyncManager$ScreenOffIntentReceiver;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$5500(Lcom/android/server/content/SyncManager;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/content/SyncManager$ScreenOffIntentReceiver;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$5600(Lcom/android/server/content/SyncManager;)V

    goto :goto_0
.end method
