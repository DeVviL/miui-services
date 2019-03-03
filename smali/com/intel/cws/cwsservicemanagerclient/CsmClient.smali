.class public Lcom/intel/cws/cwsservicemanagerclient/CsmClient;
.super Ljava/lang/Object;
.source "CsmClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;
    }
.end annotation


# static fields
.field private static final ASYNC_PARAM:Ljava/lang/String; = "async"

.field private static final CLIENT_TAG:Ljava/lang/String; = "Client"

.field private static final CONFIG_FILE:Ljava/lang/String; = "/system/vendor/etc/CsmConfig.xml"

.field private static final CONFIG_TAG:Ljava/lang/String; = "CsmConfig"

.field public static final CSM_CLIENT_BIND:I = 0x1

.field public static final CSM_CLIENT_BIND_AND_START:I = 0x2

.field private static final CSM_CLIENT_MODEM_DEAD:B = 0x4t

.field private static final CSM_CLIENT_MODEM_DOWN:B = 0x2t

.field private static final CSM_CLIENT_MODEM_UP:B = 0x1t

.field private static final CSM_CLIENT_MSG_ON_BIND:I = 0x1

.field private static final CSM_CLIENT_MSG_RESTART:I = 0x2

.field public static final CSM_CLIENT_NO_ACTION:I = 0x0

.field private static final CSM_CLIENT_NO_MODEM:B = 0x8t

.field protected static final CSM_CLIENT_NO_TIMEOUT:I = 0x0

.field public static final CSM_CLIENT_REBIND:Z = true

.field public static final CSM_CLIENT_STOP_NO_UNBIND:I = 0x0

.field public static final CSM_CLIENT_STOP_REBIND:I = 0x1

.field public static final CSM_CLIENT_STOP_UNBIND:I = 0x2

.field public static final CSM_CLIENT_UNBIND:Z = false

.field protected static final CSM_ID_BT:B = 0x4t

.field protected static final CSM_ID_GPS:B = 0x2t

.field protected static final CSM_ID_NFC:B = 0x8t

.field protected static final CSM_ID_WIFI:B = 0x1t

.field protected static final CSM_ID_WIFI_OFFLOAD:B = 0x20t

.field private static final DEBUG:Z

.field private static final MODULE_TAG:Ljava/lang/String; = "Module"

.field private static final NO_UNBIND_PARAM:Ljava/lang/String; = "no_unbind"

.field private static final REBIND_PARAM:Ljava/lang/String; = "rebind"

.field private static final START_TAG:Ljava/lang/String; = "Start"

.field private static final STOP_TAG:Ljava/lang/String; = "Stop"

.field private static final SYNC_PARAM:Ljava/lang/String; = "sync"

.field private static final TAG:Ljava/lang/String; = "CsmClient"

.field private static final TIMEOUT_TAG:Ljava/lang/String; = "Timeout_ms"

.field private static final UNBIND_PARAM:Ljava/lang/String; = "unbind"


# instance fields
.field mClientId:Ljava/lang/Byte;

.field mContext:Landroid/content/Context;

.field protected mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

.field protected mHandler:Landroid/os/Handler;

.field private mIsBound:Z

.field private mIsLockRequested:Z

.field private mIsPlatformShuttingDown:Z

.field private mIsStartSync:Z

.field private final mModemCallbacks:Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener$Stub;

.field private mModemStatus:B

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mSimStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mStopMode:I

.field private mTimeout:I

.field private waitOnModemUp:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "CsmClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;-><init>(Landroid/content/Context;BI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;-><init>(Landroid/content/Context;BII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;BII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v9, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsBound:Z

    iput-boolean v9, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsLockRequested:Z

    iput-boolean v9, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsPlatformShuttingDown:Z

    new-instance v6, Ljava/util/concurrent/Semaphore;

    invoke-direct {v6, v9, v7}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->waitOnModemUp:Ljava/util/concurrent/Semaphore;

    const/4 v6, 0x2

    iput-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemStatus:B

    iput-boolean v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsStartSync:Z

    const v6, 0xea60

    iput v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mTimeout:I

    iput v9, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mStopMode:I

    iput-object v8, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mSimStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$1;

    invoke-direct {v6, p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$1;-><init>(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)V

    iput-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$3;

    invoke-direct {v6, p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$3;-><init>(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)V

    iput-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemCallbacks:Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener$Stub;

    new-instance v6, Ljava/lang/Byte;

    invoke-direct {v6, p2}, Ljava/lang/Byte;-><init>(B)V

    iput-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    iput-object p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mContext:Landroid/content/Context;

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v6, "/system/vendor/etc/CsmConfig.xml"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v5, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;-><init>(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;Lcom/intel/cws/cwsservicemanagerclient/CsmClient$1;)V

    invoke-virtual {v5, v4}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;->parse(Ljava/io/InputStream;)V

    sget-boolean v6, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "CsmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] mIsStartSync: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsStartSync:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v6, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "CsmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] mTimeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mTimeout:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v6, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "CsmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] mStopMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mStopMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    new-instance v6, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;

    invoke-direct {v6, p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$2;-><init>(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)V

    iput-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_3

    const-string v6, "CsmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] There is no CSM. Re-initialising mModemStatus."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x8

    iput-byte v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemStatus:B

    :cond_3
    packed-switch p3, :pswitch_data_0

    new-instance v6, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v7, "Unsupported value for start in CsmClient."

    const/4 v8, 0x4

    invoke-direct {v6, v7, v8}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v6

    :catch_0
    move-exception v0

    const-string v6, "CsmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] Configuration Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    invoke-direct {p0, p4}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->start(I)Z

    :goto_1
    :pswitch_1
    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientBind()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)B
    .locals 1

    iget-byte v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemStatus:B

    return v0
.end method

.method static synthetic access$1002(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;B)B
    .locals 0

    iput-byte p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemStatus:B

    return p1
.end method

.method static synthetic access$102(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsStartSync:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)Ljava/util/concurrent/Semaphore;
    .locals 1

    iget-object v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->waitOnModemUp:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$202(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;I)I
    .locals 0

    iput p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mTimeout:I

    return p1
.end method

.method static synthetic access$302(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;I)I
    .locals 0

    iput p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mStopMode:I

    return p1
.end method

.method static synthetic access$402(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsPlatformShuttingDown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsLockRequested:Z

    return v0
.end method

.method static synthetic access$700(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsBound:Z

    return v0
.end method

.method static synthetic access$702(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsBound:Z

    return p1
.end method

.method static synthetic access$800(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientStop(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientBind()V

    return-void
.end method

.method private csmClientBind()V
    .locals 4

    const/4 v3, 0x1

    iget-byte v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemStatus:B

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    const-string v0, "CsmClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] csmClientBind called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "cws_service_manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-object v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    if-nez v0, :cond_0

    const-string v0, "CsmClient"

    const-string v1, "mCwsServiceMgr is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CsmClient"

    const-string v1, "mCwsServiceMgr is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsBound:Z

    iget-object v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string v0, "CsmClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] csmClientBind called while there is no modem."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private csmClientStop(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    const/4 v4, 0x1

    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] csmStop called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsBound:Z

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    if-nez v1, :cond_1

    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] mCwsServiceMgr is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v2, "null mCwsServiceMgr"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] csmStop failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ge p1, v4, :cond_0

    const/4 p1, 0x1

    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v2, "Unsupported value for csmClientStop."

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-interface {v1, v2}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->csmStop(B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientUnbind(Z)V

    :cond_2
    :goto_1
    :pswitch_1
    return-void

    :pswitch_2
    invoke-direct {p0, v4}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientUnbind(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private csmClientUnbind(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    if-nez v1, :cond_1

    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] mCwsServiceMgr is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v2, "null mCwsServiceMgr"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] csmUnregisterCallback failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iput-boolean v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsBound:Z

    iget-boolean v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsPlatformShuttingDown:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientBind()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemCallbacks:Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener$Stub;

    invoke-interface {v1, v2, v3}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->csmUnregisterCallback(ILandroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private start(I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x3

    iget-byte v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemStatus:B

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const-string v2, "CsmClient"

    const-string v3, "Calling start while there is no modem."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "No modem."

    invoke-direct {v2, v3, v7}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_0
    iget-byte v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemStatus:B

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    const-string v2, "CsmClient"

    const-string v3, "Calling start while modem is DEAD."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "Modem is dead."

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_1
    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Start called."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsPlatformShuttingDown:Z

    if-nez v2, :cond_6

    iput-boolean v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsLockRequested:Z

    iget-boolean v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsBound:Z

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientBind()V

    :cond_2
    :goto_0
    if-lez p1, :cond_8

    iget-byte v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemStatus:B

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_8

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    :try_start_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->waitOnModemUp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientUnbind(Z)V

    sget-boolean v2, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Modem lock failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientBind()V

    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "Modem lock failed."

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Unable to wait on semaphore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientUnbind(Z)V

    invoke-direct {p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientBind()V

    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "Unable to wait on semaphore."

    invoke-direct {v2, v3, v6}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    if-nez v2, :cond_5

    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCwsServiceMgr is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "null mCwsServiceMgr"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] csmStart failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to call csmStart."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-interface {v2, v3}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->csmStart(B)V

    sget-boolean v2, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] csmStart called."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_6
    sget-boolean v2, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " start called during platform shutdown."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "Shutdown ongoing"

    invoke-direct {v2, v3, v6}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_8
    return v7
.end method


# virtual methods
.method public atSendCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    if-nez v2, :cond_0

    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCwsServiceMgr is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v3, "null mCwsServiceMgr"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v2, "CsmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] atSendCmd failed. Restarting CsmClient."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    invoke-interface {v2, p1}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->atSendCmd(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0
.end method

.method public csmActivateSimStatusReceiver()V
    .locals 4

    sget-boolean v1, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Activating SIM status receiver."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$4;

    invoke-direct {v1, p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$4;-><init>(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)V

    iput-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mSimStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mSimStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected csmAddCallbacks()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    if-nez v1, :cond_0

    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] mCwsServiceMgr is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/intel/cws/cwsservicemanager/CsmException;

    const-string v2, "null mCwsServiceMgr"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/intel/cws/cwsservicemanager/CsmException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Registering callback failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mModemCallbacks:Lcom/intel/cws/cwsservicemanager/ICsmModemMgrListener$Stub;

    invoke-interface {v1, v2, v3}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;->csmRegisterCallback(ILandroid/os/IBinder;)V

    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Callbacks registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public csmClientModemAvailable()V
    .locals 0

    return-void
.end method

.method public csmClientModemUnavailable()V
    .locals 0

    return-void
.end method

.method public csmStartModem()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsStartSync:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CsmClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] csmStartModem - Sync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mTimeout:I

    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->start(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    sget-boolean v0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "CsmClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] csmStartModem - Async"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->start(I)Z

    move-result v0

    goto :goto_0
.end method

.method public csmStop()V
    .locals 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mIsLockRequested:Z

    :try_start_0
    iget v1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mStopMode:I

    invoke-direct {p0, v1}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientStop(I)V
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CsmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Unexpected exception."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getClientId()Ljava/lang/Byte;
    .locals 1

    iget-object v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    return-object v0
.end method

.method public getService()Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;
    .locals 1

    iget-object v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mCwsServiceMgr:Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    return-object v0
.end method

.method public onSimAbsent()V
    .locals 0

    return-void
.end method

.method public onSimLoaded()V
    .locals 0

    return-void
.end method
