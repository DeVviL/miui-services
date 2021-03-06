.class public Lcom/android/server/pm/PackageDexOptimizerManager;
.super Ljava/lang/Object;
.source "PackageDexOptimizerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;,
        Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;,
        Lcom/android/server/pm/PackageDexOptimizerManager$Holder;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOOTDEXOPT_DATA_APPS_THRESHOLD:I = 0xa

.field private static final DEXOPT_WHITELIST:[Ljava/lang/String;

.field private static final START_DEXOPT_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PackageDexOptimizerManager"

.field private static sDexoptWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPerformDexOptMethod:Ljava/lang/reflect/Method;

.field private static final sPreferredInstructionSet:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field final mPendingDexOpt:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "com.eg.android.AlipayGphone"

    aput-object v3, v2, v4

    const-string v3, "com.tencent.mm"

    aput-object v3, v2, v5

    sput-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->DEXOPT_WHITELIST:[Ljava/lang/String;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sPreferredInstructionSet:Ljava/lang/String;

    :try_start_0
    const-class v2, Lcom/android/server/pm/PackageManagerService;

    const-string v3, "performDexOpt"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/miui/whetstone/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sPerformDexOptMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.miui.home"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.android.systemui"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.android.keyguard"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.android.phone"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.android.contacts"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.android.incallui"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.android.mms"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.android.mms.service"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.android.server.telecom"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.android.providers.telephony"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.android.providers.contacts"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.xiaomi.simactivate.service"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.android.frameworks.telresources"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.miui.stepsprovider"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.xiaomi.xmsf"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.miui.whetstone"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.miui.sysbase"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.miui.daemon"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.miui.analytics"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.miui.hybrid"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.miui.sysopt"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.miui.powerkeeper"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.miui.systemAdSolution"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.google.android.webview"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.android.settings"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.android.camera"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.sohu.inputmethod.sogou.xiaomi"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.google.android.gms"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.tencent.mm"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.tencent.mobileqq"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    const-string v3, "com.eg.android.AlipayGphone"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-class v2, Lcom/android/server/pm/PackageManagerService;

    const-string v3, "performDexOpt"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/miui/whetstone/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sPerformDexOptMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sPerformDexOptMethod:Ljava/lang/reflect/Method;

    goto/16 :goto_0
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "PackageDexOptimizerManager"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;

    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;-><init>(Lcom/android/server/pm/PackageDexOptimizerManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageDexOptimizerManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageDexOptimizerManager;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lcom/android/server/pm/PackageDexOptimizerManager;->sPerformDexOptMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static getDefaultMostUsagePackageList(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v9, 0x7

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageDexOptimizerManager;->getSortedUsageStatsByForegroundTime(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_1
    return-object v2

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "persist.sys.dexopt_threshold"

    const/16 v9, 0xa

    invoke-static {v8, v9}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v9

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    sget-object v8, Lcom/android/server/pm/PackageDexOptimizerManager;->DEXOPT_WHITELIST:[Ljava/lang/String;

    array-length v8, v8

    if-ge v0, v8, :cond_4

    sget-object v8, Lcom/android/server/pm/PackageDexOptimizerManager;->DEXOPT_WHITELIST:[Ljava/lang/String;

    aget-object v3, v8, v0

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_3

    const-string v8, "PackageDexOptimizerManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found default Package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, -0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    if-lez v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageStats;

    invoke-virtual {v7}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v9

    :try_start_1
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_5

    invoke-static {v4}, Lcom/android/server/pm/PackageDexOptimizerManager;->isSystemPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    :catchall_1
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    :cond_6
    :try_start_3
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "PackageDexOptimizerManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found most usage Package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, -0x1

    :cond_7
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static getInstance()Lcom/android/server/pm/PackageDexOptimizerManager;
    .locals 1

    sget-object v0, Lcom/android/server/pm/PackageDexOptimizerManager$Holder;->INSTANCE:Lcom/android/server/pm/PackageDexOptimizerManager;

    return-object v0
.end method

.method private static getPrimaryInstructionSet(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/pm/PackageDexOptimizerManager;->sPreferredInstructionSet:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getRecentlyUsedPackages(Landroid/content/Context;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageDexOptimizerManager;->getSortedUsageStatsByForegroundTime(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    invoke-virtual {v3}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    invoke-virtual {v3}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method static getSortedUsageStatsByForegroundTime(Landroid/content/Context;I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    const-string v9, "usagestats"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStatsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    mul-int/lit8 v9, p1, 0x18

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v0, v9

    sub-long v10, v6, v0

    invoke-virtual {v8, v10, v11, v6, v7}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v5

    const/4 v3, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v9, Lcom/android/server/pm/PackageDexOptimizerManager$1;

    invoke-direct {v9}, Lcom/android/server/pm/PackageDexOptimizerManager$1;-><init>()V

    invoke-static {v3, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    return-object v3
.end method

.method public static isAlwaysSpeedDexOpt(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2

    sget-object v0, Lcom/android/server/pm/PackageDexOptimizerManager;->sDexoptWhiteList:Ljava/util/Set;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/server/pm/PackageDexOptimizerManager;->isPersistentApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPersistentApp(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSystemPackage(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ensurePackageDexOpt(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageDexOptimizerManager;->ensurePackageDexOpt(Ljava/lang/String;Lmiui/os/IMiuiDexoptObserver;)Z

    move-result v0

    return v0
.end method

.method public ensurePackageDexOpt(Ljava/lang/String;Lmiui/os/IMiuiDexoptObserver;)Z
    .locals 6

    const/4 v3, 0x1

    const-string v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->getPackagesThatNeedDexOpt()Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;-><init>(Lcom/android/server/pm/PackageDexOptimizerManager;Ljava/lang/String;Lmiui/os/IMiuiDexoptObserver;)V

    iget-object v4, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method
