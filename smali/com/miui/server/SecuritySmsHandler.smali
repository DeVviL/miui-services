.class Lcom/miui/server/SecuritySmsHandler;
.super Ljava/lang/Object;
.source "SecuritySmsHandler.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInterceptSmsCallerPkgName:Ljava/lang/String;

.field private mInterceptSmsCallerUid:I

.field private mInterceptSmsCount:I

.field private mInterceptSmsLock:Ljava/lang/Object;

.field private mInterceptSmsSenderNum:Ljava/lang/String;

.field private mInterceptedSmsResultReceiver:Landroid/content/BroadcastReceiver;

.field private mNormalMsgResultReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    iput-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerPkgName:Ljava/lang/String;

    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    iput-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsLock:Ljava/lang/Object;

    new-instance v0, Lcom/miui/server/SecuritySmsHandler$1;

    invoke-direct {v0, p0}, Lcom/miui/server/SecuritySmsHandler$1;-><init>(Lcom/miui/server/SecuritySmsHandler;)V

    iput-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mNormalMsgResultReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/server/SecuritySmsHandler$2;

    invoke-direct {v0, p0}, Lcom/miui/server/SecuritySmsHandler$2;-><init>(Lcom/miui/server/SecuritySmsHandler;)V

    iput-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptedSmsResultReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/miui/server/SecuritySmsHandler;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/server/SecuritySmsHandler;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecuritySmsHandler;->checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchSmsToAntiSpam(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchNormalSms(Landroid/content/Intent;)V

    return-void
.end method

.method private checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    iget-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, p3}, Lmiui/provider/ExtraTelephony;->getSmsBlockType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "SecurityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkByAntiSpam : blockType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private checkWithInterceptedSender(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v1, "SecurityManagerService"

    const-string v3, "checkWithInterceptedSender: callerUid:%d, senderNum:%s, count:%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    const/4 v0, 0x1

    :cond_0
    iget v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/miui/server/SecuritySmsHandler;->releaseSmsIntercept()V

    :cond_1
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 9

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/server/SecuritySmsHandler;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private dispatchMmsToAntiSpam(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SecurityManagerService"

    const-string v1, "dispatchMmsToAntiSpam"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-boolean v0, Lmiui/util/OldmanUtil;->IS_ELDER_MODE:Z

    if-eqz v0, :cond_0

    const-string v0, "com.jeejen.family.miui"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v0, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.permission.RECEIVE_SMS"

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    return-void

    :cond_0
    const-string v0, "com.android.mms"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private dispatchNormalMms(Landroid/content/Intent;)V
    .locals 6

    const/4 v3, 0x1

    const-string v1, "SecurityManagerService"

    const-string v2, "dispatchNormalMms"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "SecurityManagerService"

    const-string v2, "Delivering MMS to: %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/high16 v1, 0x8000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/miui/server/SecuritySmsHandler;->mNormalMsgResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private dispatchNormalSms(Landroid/content/Intent;)V
    .locals 6

    const/4 v3, 0x1

    const-string v1, "SecurityManagerService"

    const-string v2, "dispatchNormalSms"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "SecurityManagerService"

    const-string v2, "Delivering SMS to: %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/high16 v1, 0x8000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/miui/server/SecuritySmsHandler;->mNormalMsgResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private dispatchSmsToAntiSpam(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SecurityManagerService"

    const-string v1, "dispatchSmsToAntiSpam"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-boolean v0, Lmiui/util/OldmanUtil;->IS_ELDER_MODE:Z

    if-eqz v0, :cond_0

    const-string v0, "com.jeejen.family.miui"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v0, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.permission.RECEIVE_SMS"

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    return-void

    :cond_0
    const-string v0, "com.android.mms"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private dispatchToInterceptApp(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "SecurityManagerService"

    const-string v1, "dispatchToInterceptApp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.permission.RECEIVE_SMS"

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptedSmsResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static getSlotIdFromIntent(Landroid/content/Intent;)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sget-object v1, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    const-string v1, "SecurityManagerService"

    const-string v2, "getSlotIdFromIntent slotId < 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private releaseSmsIntercept()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    iput-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerPkgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    return-void
.end method


# virtual methods
.method checkSmsBlocked(Landroid/content/Intent;)Z
    .locals 18

    const-string v15, "SecurityManagerService"

    const-string v16, "enter checkSmsBlocked"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x13

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    move v5, v4

    :goto_0
    return v5

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/miui/server/SecuritySmsHandler;->getSlotIdFromIntent(Landroid/content/Intent;)I

    move-result v14

    const-string v15, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    :goto_1
    array-length v15, v9

    if-ge v8, v15, :cond_1

    aget-object v15, v9, v8

    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    aget-object v15, v9, v15

    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/miui/server/SecuritySmsHandler;->checkWithInterceptedSender(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "SecurityManagerService"

    const-string v16, "Intercepted by sender address"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchToInterceptApp(Landroid/content/Intent;)V

    const/4 v4, 0x1

    :cond_2
    if-nez v4, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v14}, Lcom/miui/server/SecuritySmsHandler;->checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    const-string v15, "blockType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v3}, Lmiui/provider/ExtraTelephony;->getRealBlockType(I)I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-lt v15, v0, :cond_3

    const-string v15, "SecurityManagerService"

    const-string v16, "This sms is intercepted by AntiSpam"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchSmsToAntiSpam(Landroid/content/Intent;)V

    const/4 v4, 0x1

    :cond_3
    :goto_2
    const-string v15, "SecurityManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "leave checkSmsBlocked, blocked:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    goto/16 :goto_0

    :cond_4
    const-string v15, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v15, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v12

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1120058

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    new-instance v10, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v10, v12, v7}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15, v14}, Lcom/miui/server/SecuritySmsHandler;->checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    const-string v15, "blockType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v3}, Lmiui/provider/ExtraTelephony;->getRealBlockType(I)I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-lt v15, v0, :cond_3

    const-string v15, "SecurityManagerService"

    const-string v16, "This mms is intercepted by AntiSpam"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchMmsToAntiSpam(Landroid/content/Intent;)V

    const/4 v4, 0x1

    goto :goto_2
.end method

.method startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "com.miui.permission.MANAGE_SMS_INTERCEPT"

    const-string v4, "SecurityManagerService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    if-nez v3, :cond_1

    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    iput-object p1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerPkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    iput p3, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method stopInterceptSmsBySender()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "com.miui.permission.MANAGE_SMS_INTERCEPT"

    const-string v5, "SecurityManagerService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v3, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v4, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    if-nez v4, :cond_1

    monitor-exit v3

    move v1, v2

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    if-ne v4, v0, :cond_2

    invoke-direct {p0}, Lcom/miui/server/SecuritySmsHandler;->releaseSmsIntercept()V

    monitor-exit v3

    move v1, v2

    goto :goto_0

    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
