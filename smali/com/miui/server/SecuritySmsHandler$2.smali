.class Lcom/miui/server/SecuritySmsHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "SecuritySmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecuritySmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SecuritySmsHandler;


# direct methods
.method constructor <init>(Lcom/miui/server/SecuritySmsHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/miui/server/SecuritySmsHandler;->getSlotIdFromIntent(Landroid/content/Intent;)I

    move-result v8

    const-string v9, "SecurityManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mInterceptedSmsResultReceiver sms dispatched, action:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/miui/server/SecuritySmsHandler$2;->getResultCode()I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_1

    const-string v9, "SecurityManagerService"

    const-string v10, "mInterceptedSmsResultReceiver SMS_RECEIVED_ACTION no aborted"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_0
    array-length v9, v5

    if-ge v4, v9, :cond_0

    aget-object v9, v5, v4

    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    invoke-static {v9, v1, v3, v8}, Lcom/miui/server/SecuritySmsHandler;->access$100(Lcom/miui/server/SecuritySmsHandler;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v9, "blockType"

    invoke-virtual {p2, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v2}, Lmiui/provider/ExtraTelephony;->getRealBlockType(I)I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_2

    const-string v9, "SecurityManagerService"

    const-string v10, "mInterceptedSmsResultReceiver: This sms is intercepted by AntiSpam"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    invoke-static {v9, p2}, Lcom/miui/server/SecuritySmsHandler;->access$200(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v9, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    invoke-static {v9, p2}, Lcom/miui/server/SecuritySmsHandler;->access$300(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;)V

    goto :goto_1
.end method
