.class public Lcom/android/server/am/JobSchedulerServiceInjector;
.super Ljava/lang/Object;
.source "JobSchedulerServiceInjector.java"


# static fields
.field private static final BATTERY_TEMPERATURE_THRESHOLD:I = 0x190

.field private static final TAG:Ljava/lang/String; = "JobSchedulerServiceInjector"

.field private static final filter:Landroid/content/IntentFilter;

.field private static isDelayState:Z

.field private static sBatteryStatus:I

.field private static sBatteryTemperature:I

.field private static sDelayEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sput v0, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryStatus:I

    sput v1, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryTemperature:I

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/JobSchedulerServiceInjector;->filter:Landroid/content/IntentFilter;

    sget-boolean v2, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v2, :cond_0

    const-string v2, "persist.sys.job_delay"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/server/am/JobSchedulerServiceInjector;->sDelayEnable:Z

    sput-boolean v1, Lcom/android/server/am/JobSchedulerServiceInjector;->isDelayState:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBatteryTemperature(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/am/JobSchedulerServiceInjector;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryStatus:I

    const-string v1, "temperature"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryTemperature:I

    :cond_0
    return-void
.end method

.method public static isDelayState(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/am/JobSchedulerServiceInjector;->sDelayEnable:Z

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/android/server/am/JobSchedulerServiceInjector;->getBatteryTemperature(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->isLowMemory()Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    sget v1, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryTemperature:I

    const/16 v2, 0x190

    if-le v1, v2, :cond_4

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/JobSchedulerServiceInjector;->isDelayState:Z

    :goto_1
    sget-boolean v0, Lcom/android/server/am/JobSchedulerServiceInjector;->isDelayState:Z

    if-eqz v0, :cond_3

    const-string v0, "JobSchedulerServiceInjector"

    const-string v1, "Jobs should be delayed because of low memory or high temperature"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v0, Lcom/android/server/am/JobSchedulerServiceInjector;->isDelayState:Z

    goto :goto_0

    :cond_4
    sput-boolean v0, Lcom/android/server/am/JobSchedulerServiceInjector;->isDelayState:Z

    goto :goto_1
.end method
