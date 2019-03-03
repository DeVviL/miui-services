.class Lcom/android/server/SystemServerInjector;
.super Ljava/lang/Object;
.source "SystemServerInjector.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SystemServerI"

.field private static final systemLogSwitchesReceiver:Lcom/android/server/SystemLogSwitchesConfigReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/SystemLogSwitchesConfigReceiver;

    invoke-direct {v0}, Lcom/android/server/SystemLogSwitchesConfigReceiver;-><init>()V

    sput-object v0, Lcom/android/server/SystemServerInjector;->systemLogSwitchesReceiver:Lcom/android/server/SystemLogSwitchesConfigReceiver;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final addExtraServices(Landroid/content/Context;Z)V
    .locals 12

    const-string v9, "security"

    new-instance v10, Lcom/miui/server/SecurityManagerService;

    invoke-direct {v10, p0, p1}, Lcom/miui/server/SecurityManagerService;-><init>(Landroid/content/Context;Z)V

    invoke-static {v9, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v9, "MiuiInit"

    new-instance v10, Lcom/miui/server/MiuiInitServer;

    invoke-direct {v10, p0}, Lcom/miui/server/MiuiInitServer;-><init>(Landroid/content/Context;)V

    invoke-static {v9, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v9, "MiuiBackup"

    new-instance v10, Lcom/miui/server/BackupManagerService;

    invoke-direct {v10, p0}, Lcom/miui/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v9, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v9, "locationpolicy"

    invoke-static {}, Lcom/android/server/LocationPolicyManagerService;->getDefaultService()Lcom/android/server/LocationPolicyManagerService;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v9, "perfshielder"

    new-instance v10, Lcom/miui/server/PerfShielderService;

    invoke-direct {v10, p0}, Lcom/miui/server/PerfShielderService;-><init>(Landroid/content/Context;)V

    invoke-static {v9, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :try_start_0
    const-string v9, "com.miui.whetstone.server.WhetstoneActivityManagerService"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-static {v7, v9}, Lmiui/util/ReflectionUtils;->tryNewInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    const-string v9, "SERVICE"

    const-class v10, Ljava/lang/String;

    invoke-static {v7, v9, v10}, Lmiui/util/ReflectionUtils;->tryGetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v8

    if-eqz v6, :cond_0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-ge v9, v10, :cond_1

    :try_start_1
    const-string v9, "com.miui.server.TidaService"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    invoke-virtual {v5, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-string v9, "SERVICE_NAME"

    invoke-virtual {v5, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->startScreenEffectService()V

    invoke-static {}, Lcom/android/server/MiuiFgThread;->initialMiuiFgThread()V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static final addExtraServicesBeforePMS(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/SystemServerInjectorOverlay;->addSecuritySpaceService(Landroid/content/Context;)V

    return-void
.end method

.method static enableLogSwitch()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->enableLogSwitch(Z)V

    invoke-static {}, Lmiui/log/SystemLogSwitchesConfigManager;->updateProgramName()V

    return-void
.end method

.method private static enforceVersionPolicy()V
    .locals 2

    const-string v0, "enable_flash_global"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SystemServerI"

    const-string v1, "enforceVersionPolicy: enable_flash_global enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "locked"

    const-string v1, "ro.secureboot.lockstate"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SystemServerI"

    const-string v1, "enforceVersionPolicy: device unlocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/SystemServerInjector;->isGlobalHaredware()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SystemServerI"

    const-string v1, "enforceVersionPolicy: global device"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "SystemServerI"

    const-string v1, "CN hardware can\'t run Global build; reboot into recovery!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServerInjector;->rebootIntoRecovery()V

    goto :goto_0
.end method

.method private static isGlobalHaredware()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "ugglite"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ugg"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const-string v4, "China"

    const-string v5, "ro.boot.hwcountry"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    const-string v4, "riva"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "S88505AA1"

    const-string v5, "ro.product.wt.boardid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "S88505DA1"

    const-string v5, "ro.product.wt.boardid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    const-string v4, "rosy"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "CN"

    const-string v5, "ro.boot.hwcountry"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_6
    const-string v4, "ro.boot.hwc"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "CN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method static markBootDexopt(JJ)V
    .locals 4

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    sub-long v2, p2, p0

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/BootEventManager;->setBootDexopt(J)V

    return-void
.end method

.method static markPmsScan(JJ)V
    .locals 2

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmiui/mqsas/sdk/BootEventManager;->setPmsScanStart(J)V

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lmiui/mqsas/sdk/BootEventManager;->setPmsScanEnd(J)V

    return-void
.end method

.method static markSystemRun(J)V
    .locals 2

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmiui/mqsas/sdk/BootEventManager;->setSystemRun(J)V

    const-string v0, "file"

    const-string v1, "ro.crypto.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "trigger_restart_framework"

    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/server/SystemServerInjector;->enforceVersionPolicy()V

    :cond_1
    return-void
.end method

.method private static rebootIntoRecovery()V
    .locals 2

    const-string v0, "--show_version_mismatch\n"

    invoke-static {v0}, Lcom/android/server/BcbUtil;->setupBcb(Ljava/lang/String;)Z

    const-string v0, "sys.powerctl"

    const-string v1, "reboot,recovery"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static registerSystemLogSwitchesReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "miui.intent.action.SWITCH_ON_MIUILOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "miui.intent.action.SWITCH_OFF_MIUILOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "miui.intent.action.REVERT_MIUILOG_SWITCHES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/SystemServerInjector;->systemLogSwitchesReceiver:Lcom/android/server/SystemLogSwitchesConfigReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static final systemReadyBeforePMS()V
    .locals 0

    invoke-static {}, Lcom/android/server/SystemServerInjectorOverlay;->systemReadyBeforePMS()V

    return-void
.end method
