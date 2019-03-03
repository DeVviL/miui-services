.class public Lcom/android/server/pm/PackageManagerServiceCompat;
.super Ljava/lang/Object;
.source "PackageManagerServiceCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageUid(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getWakePathComponents(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/security/WakePathComponent;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    if-nez v0, :cond_1

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-static {v1, v2, v4}, Lcom/android/server/pm/PackageManagerServiceCompat;->parsePkgCompentLock(Ljava/util/List;Ljava/util/List;I)V

    :cond_2
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lcom/android/server/pm/PackageManagerServiceCompat;->parsePkgCompentLock(Ljava/util/List;Ljava/util/List;I)V

    :cond_3
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-static {v1, v2, v4}, Lcom/android/server/pm/PackageManagerServiceCompat;->parsePkgCompentLock(Ljava/util/List;Ljava/util/List;I)V

    :cond_4
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-static {v1, v2, v4}, Lcom/android/server/pm/PackageManagerServiceCompat;->parsePkgCompentLock(Ljava/util/List;Ljava/util/List;I)V

    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static parsePkgCompentLock(Ljava/util/List;Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/security/WakePathComponent;",
            ">;",
            "Ljava/util/List",
            "<+",
            "Landroid/content/pm/PackageParser$Component;",
            ">;I)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_0
    if-ltz v0, :cond_0

    packed-switch p2, :pswitch_data_0

    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :pswitch_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Activity;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v6, Landroid/content/pm/ActivityInfo;->exported:Z

    goto :goto_1

    :pswitch_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Activity;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v6, Landroid/content/pm/ActivityInfo;->exported:Z

    goto :goto_1

    :pswitch_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Provider;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v2, v6, Landroid/content/pm/ProviderInfo;->exported:Z

    goto :goto_1

    :pswitch_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Service;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v2, v6, Landroid/content/pm/ServiceInfo;->exported:Z

    goto :goto_1

    :cond_2
    new-instance v5, Lmiui/security/WakePathComponent;

    invoke-direct {v5}, Lmiui/security/WakePathComponent;-><init>()V

    invoke-virtual {v5, p2}, Lmiui/security/WakePathComponent;->setType(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Component;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lmiui/security/WakePathComponent;->setClassname(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Component;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Component;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_3
    if-ltz v3, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Component;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    :goto_4
    if-ltz v4, :cond_3

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/security/WakePathComponent;->addIntentAction(Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_4
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
