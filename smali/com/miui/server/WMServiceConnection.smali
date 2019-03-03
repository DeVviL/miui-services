.class public Lcom/miui/server/WMServiceConnection;
.super Ljava/lang/Object;
.source "WMServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.miui.wmsvc.LINK"

.field private static final BIND_DELAY:I = 0xea60

.field private static final MAX_DEATH_COUNT_IN_ONE_DAY:I = 0x3

.field private static final MAX_DEATH_COUNT_IN_TOTAL:I = 0xa

.field private static final ONE_DAY_IN_MILLISECONDS:I = 0x5265c00

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.miui.wmsvc"

.field private static final TAG:Ljava/lang/String; = "WMServiceConnection"


# instance fields
.field private mBindRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mDeathTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/miui/server/WMServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/miui/server/WMServiceConnection$1;-><init>(Lcom/miui/server/WMServiceConnection;)V

    iput-object v0, p0, Lcom/miui/server/WMServiceConnection;->mBindRunnable:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lcom/miui/server/WMServiceConnection$2;

    invoke-direct {v0, p0}, Lcom/miui/server/WMServiceConnection$2;-><init>(Lcom/miui/server/WMServiceConnection;)V

    iput-object v0, p0, Lcom/miui/server/WMServiceConnection;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 31
    iput-object p1, p0, Lcom/miui/server/WMServiceConnection;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/server/WMServiceConnection;->mDeathTimes:Ljava/util/List;

    .line 34
    invoke-direct {p0}, Lcom/miui/server/WMServiceConnection;->bindDelay()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/WMServiceConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/WMServiceConnection;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/miui/server/WMServiceConnection;->shouldBind()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/server/WMServiceConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/WMServiceConnection;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/miui/server/WMServiceConnection;->bind()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/server/WMServiceConnection;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/WMServiceConnection;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mDeathTimes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/server/WMServiceConnection;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/WMServiceConnection;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/server/WMServiceConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/WMServiceConnection;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/miui/server/WMServiceConnection;->bindDelay()V

    return-void
.end method

.method private bind()V
    .locals 4

    .prologue
    .line 57
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.wmsvc.LINK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.miui.wmsvc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v2, p0, Lcom/miui/server/WMServiceConnection;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    const-string v2, "WMServiceConnection"

    const-string v3, "Bind Inspector success!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 62
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v2, "WMServiceConnection"

    const-string v3, "Bind Inspector failed!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WMServiceConnection"

    const-string v3, "Bind Inspector failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private bindDelay()V
    .locals 4

    .prologue
    .line 38
    const-string v0, "WMServiceConnection"

    const-string v1, "schedule bind in 60000ms"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/server/WMServiceConnection;->mBindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/server/WMServiceConnection;->mBindRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    return-void
.end method

.method private shouldBind()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 92
    iget-object v4, p0, Lcom/miui/server/WMServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/MiuiSettings$Secure;->isHttpInvokeAppEnable(Landroid/content/ContentResolver;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 93
    const-string v4, "WMServiceConnection"

    const-string v6, "Cancel bind for http invoke disabled"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 117
    :goto_0
    return v4

    .line 96
    :cond_0
    iget-object v4, p0, Lcom/miui/server/WMServiceConnection;->mRemote:Landroid/os/IBinder;

    if-eqz v4, :cond_1

    .line 97
    const-string v4, "WMServiceConnection"

    const-string v6, "Cancel bind for connected"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 98
    goto :goto_0

    .line 101
    :cond_1
    iget-object v4, p0, Lcom/miui/server/WMServiceConnection;->mDeathTimes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v6, 0xa

    if-lt v4, v6, :cond_2

    .line 102
    const-string v4, "WMServiceConnection"

    const-string v6, "Cancel bind for MAX_DEATH_COUNT_IN_TOTAL reached"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 103
    goto :goto_0

    .line 106
    :cond_2
    iget-object v4, p0, Lcom/miui/server/WMServiceConnection;->mDeathTimes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x3

    if-lt v4, v6, :cond_3

    .line 107
    iget-object v4, p0, Lcom/miui/server/WMServiceConnection;->mDeathTimes:Ljava/util/List;

    iget-object v6, p0, Lcom/miui/server/WMServiceConnection;->mDeathTimes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 108
    .local v2, "time":J
    const-wide/32 v6, 0x5265c00

    add-long/2addr v6, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 109
    .local v0, "delay":J
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-lez v4, :cond_3

    .line 110
    const-string v4, "WMServiceConnection"

    const-string v6, "Cancel bind for MAX_DEATH_COUNT_IN_ONE_DAY reached"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v4, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/miui/server/WMServiceConnection;->mBindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object v4, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/miui/server/WMServiceConnection;->mBindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v4, v5

    .line 113
    goto :goto_0

    .line 117
    .end local v0    # "delay":J
    .end local v2    # "time":J
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 71
    iput-object p2, p0, Lcom/miui/server/WMServiceConnection;->mRemote:Landroid/os/IBinder;

    .line 72
    iget-object v1, p0, Lcom/miui/server/WMServiceConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/server/WMServiceConnection;->mBindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/WMServiceConnection;->mRemote:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/miui/server/WMServiceConnection;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    const-string v1, "WMServiceConnection"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WMServiceConnection"

    const-string v2, "linkToDeath failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/server/WMServiceConnection;->mRemote:Landroid/os/IBinder;

    .line 84
    const-string v0, "WMServiceConnection"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 88
    :cond_0
    return-void
.end method
