.class Lcom/android/server/pm/PackageManagerServiceInjectorProxy;
.super Ljava/lang/Object;
.source "PackageManagerServiceInjectorProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustCpuAbisForSharedUserLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;Landroid/content/pm/PackageParser$Package;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Landroid/content/pm/PackageParser$Package;",
            "ZZ)V"
        }
    .end annotation

    if-nez p2, :cond_4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->adjustCpuAbisForSharedProcessLPw(Ljava/util/Set;Landroid/content/pm/PackageParser$Package;ZZ)V

    goto :goto_1

    :cond_4
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    if-eqz v4, :cond_5

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v5, :cond_5

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_5

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_7

    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->adjustCpuAbisForSharedProcessLPw(Ljava/util/Set;Landroid/content/pm/PackageParser$Package;ZZ)V

    :cond_7
    return-void
.end method

.method static checkMiuiSdk(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageManagerService;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v6, -0x1

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string v10, "com.miui.sdk.manifest"

    const/4 v11, -0x1

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    :cond_0
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    :try_start_0
    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    new-instance v8, Landroid/content/res/MiuiResources;

    iget-object v10, p1, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v11, 0x0

    invoke-direct {v8, v0, v10, v11}, Landroid/content/res/MiuiResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const/4 v7, 0x0

    if-gtz v6, :cond_1

    const-string v10, "miui_manifest"

    const-string v11, "xml"

    iget-object v12, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/MiuiResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :cond_1
    if-lez v6, :cond_2

    invoke-virtual {v8, v6}, Landroid/content/res/MiuiResources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    invoke-static {v8, v10}, Lmiui/core/ManifestParser;->createFromXmlParser(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lmiui/core/ManifestParser;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lmiui/core/ManifestParser;->parse(Ljava/util/Map;)Lmiui/core/Manifest;

    move-result-object v5

    new-instance v3, Lmiui/core/CompatibleManager;

    iget-object v10, p1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v10, v5}, Lmiui/core/CompatibleManager;-><init>(Landroid/content/Context;Lmiui/core/Manifest;)V

    invoke-virtual {v3}, Lmiui/core/CompatibleManager;->isCompatible()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    :goto_0
    return v9

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_1
    const-string v9, "PackageManager"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v9, Lcom/android/server/pm/PackageManagerException;

    const/16 v10, -0x34

    const-string v11, "error occurs while parsing miui manifest."

    invoke-direct {v9, v10, v11}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v9

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    throw v9
.end method

.method static filterBackgroundDexOptApps(Lcom/android/server/pm/PackageManagerService;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/android/server/pm/PackageDexOptimizerManager;->getDefaultMostUsagePackageList(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->isSystemPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add Background dexopt of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method static getApkPathFromInstallParams(Lcom/android/server/pm/PackageManagerService$InstallParams;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "PackageManager"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static isSystemPackage(Landroid/content/pm/PackageParser$Package;)Z
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

.method static returnPackageDeletedResultToObserver(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/content/pm/IPackageDeleteObserver2;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/content/pm/IPackageDeleteObserver2;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static startActivity(Landroid/app/IActivityManager;Ljava/lang/String;Landroid/content/Intent;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move v8, v7

    move-object v9, v1

    move-object v10, v1

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method
