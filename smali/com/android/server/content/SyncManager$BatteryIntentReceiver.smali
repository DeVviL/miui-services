.class Lcom/android/server/content/SyncManager$BatteryIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method private constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .prologue
    .line 3504
    iput-object p1, p0, Lcom/android/server/content/SyncManager$BatteryIntentReceiver;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/content/SyncManager;
    .param p2, "x1"    # Lcom/android/server/content/SyncManager$1;

    .prologue
    .line 3504
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$BatteryIntentReceiver;-><init>(Lcom/android/server/content/SyncManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3507
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3508
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3509
    iget-object v1, p0, Lcom/android/server/content/SyncManager$BatteryIntentReceiver;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1, p2}, Lcom/android/server/content/SyncManager;->access$5300(Lcom/android/server/content/SyncManager;Landroid/content/Intent;)V

    .line 3511
    :cond_0
    return-void
.end method
