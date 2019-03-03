.class public Lcom/android/server/LocationManagerServiceInjector;
.super Ljava/lang/Object;
.source "LocationManagerServiceInjector.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private static mMetok:Lcom/android/server/location/MetokProxy;

.field private static final sBackupGpsListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/location/IGpsStatusListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final sBackupReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static final sGpsStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/location/IGpsStatusListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static sGpsStatusProviderRef:Landroid/location/IGpsStatusProvider;

.field private static sLocationManagerService:Lcom/android/server/LocationManagerService;

.field private static sLock:Ljava/lang/Object;

.field private static sMiuiFakeGpsProvider:Lcom/android/server/MiuiFakeGpsProvider;

.field private static sPolicyListener:Landroid/location/ILocationPolicyListener;

.field private static sPolicyManager:Landroid/location/ILocationPolicyManager;

.field private static sRealProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static sReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private static sRestrictBackgroundAll:Z

.field private static final sUidRules:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LocationManagerInjector"

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/LocationManagerServiceInjector;->sRestrictBackgroundAll:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sUidRules:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/LocationManagerServiceInjector$1;

    invoke-direct {v0}, Lcom/android/server/LocationManagerServiceInjector$1;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyListener:Landroid/location/ILocationPolicyListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/util/SparseIntArray;
    .locals 1

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sUidRules:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$200(II)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/LocationManagerServiceInjector;->checkCurrentLocationRequest(II)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/LocationManagerServiceInjector;->sRestrictBackgroundAll:Z

    return p0
.end method

.method public static bindLocationPolicyService(Landroid/location/ILocationPolicyManager;)V
    .locals 4

    sput-object p0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    new-instance v1, Lcom/android/server/MiuiFakeGpsProvider;

    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    check-cast v0, Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/MiuiFakeGpsProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Lcom/android/server/LocationPolicyManagerService;)V

    sput-object v1, Lcom/android/server/LocationManagerServiceInjector;->sMiuiFakeGpsProvider:Lcom/android/server/MiuiFakeGpsProvider;

    :try_start_0
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sPolicyListener:Landroid/location/ILocationPolicyListener;

    invoke-interface {v0, v1}, Landroid/location/ILocationPolicyManager;->registerListener(Landroid/location/ILocationPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static checkCurrentLocationRequest(II)V
    .locals 7

    if-eqz p1, :cond_3

    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v6, "remove gps listener from GpsStatusProvider"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_1
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusProviderRef:Landroid/location/IGpsStatusProvider;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/IGpsStatusListener;

    invoke-interface {v6, v4}, Landroid/location/IGpsStatusProvider;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v6, "mGpsStatusProvider.removeGpsStatusListener failed"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_1
    :try_start_3
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v6, "backup gps listener in mBackupGpsListeners"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {p0}, Lcom/android/server/LocationManagerServiceInjector;->removeAndBackupLocationRequestIfNeeded(I)V

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    return-void

    :cond_3
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v6, "add gps listener to GpsStatusProvider"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v4

    if-eqz v4, :cond_4

    :try_start_5
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusProviderRef:Landroid/location/IGpsStatusProvider;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/IGpsStatusListener;

    invoke-interface {v6, v4}, Landroid/location/IGpsStatusProvider;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_6
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v6, "listener already dead"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4

    :catch_2
    move-exception v0

    :try_start_7
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v6, "mGpsStatusProvider.addGpsStatusListener failed"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_5
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v6, "remove gps listener in mBackupGpsListeners"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static {p0}, Lcom/android/server/LocationManagerServiceInjector;->restoreBlockedLocationRequestIfNeeded(I)V

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1
.end method

.method public static checkIfRequestBlockedByPolicy(ILjava/lang/String;Landroid/location/IGpsStatusListener;)Z
    .locals 7

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/android/server/LocationManagerServiceInjector;->isRequestBlockedByPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " addGpsStatusListener("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is blocked by policy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/IGpsStatusListener;

    invoke-interface {v3}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    monitor-exit v5

    move v3, v4

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5

    move v3, v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static checkIfRequestBlockedByPolicy(ILjava/lang/String;Landroid/location/LocationRequest;)Z
    .locals 3

    invoke-static {p0}, Lcom/android/server/LocationManagerServiceInjector;->isRequestBlockedByPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is blocked by policy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkWhenRemoveListenerLocked(ILandroid/location/IGpsStatusListener;)Z
    .locals 6

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/IGpsStatusListener;

    invoke-interface {v4}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    :goto_2
    return v4

    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public static checkWhenRemoveLocationRequestLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;)Z
    .locals 5

    if-nez p1, :cond_0

    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "need either listener or intent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "cannot register both listener and intent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-eqz p1, :cond_2

    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    move-object v1, p1

    :goto_0
    if-eqz v2, :cond_3

    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    invoke-interface {p0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    move-object v1, v0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static createAndBindLP(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6

    :try_start_0
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sContext:Landroid/content/Context;

    invoke-static {v4, p0, p1}, Lcom/android/server/location/MetokProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Lcom/android/server/location/MetokProxy;

    move-result-object v4

    sput-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v5, "bind to metok LP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sRealProviders:Ljava/util/HashMap;

    const-string v5, "gps"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    if-eqz v2, :cond_0

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v4, v2}, Lcom/android/server/location/MetokProxy;->setGpsProvider(Lcom/android/server/location/LocationProviderInterface;)V

    :cond_0
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sRealProviders:Ljava/util/HashMap;

    const-string v5, "network"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v4, v3}, Lcom/android/server/location/MetokProxy;->setNetworkProvider(Lcom/android/server/location/LocationProviderInterface;)V

    :cond_1
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sRealProviders:Ljava/util/HashMap;

    const-string v5, "fused"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    if-eqz v1, :cond_2

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v4, v1}, Lcom/android/server/location/MetokProxy;->setFusedProvider(Lcom/android/server/location/LocationProviderInterface;)V

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v5, "failed to bind to metok LP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    sput-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    goto :goto_0
.end method

.method public static dumpLp(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/location/MetokProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static getCurrentLocationRequestUids()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_0
    :try_start_1
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$Receiver;

    iget v5, v4, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, v4, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public static init(Lcom/android/server/LocationManagerService;Ljava/lang/Object;Landroid/content/Context;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/LocationManagerService;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    sput-object p2, Lcom/android/server/LocationManagerServiceInjector;->sContext:Landroid/content/Context;

    sput-object p3, Lcom/android/server/LocationManagerServiceInjector;->sRealProviders:Ljava/util/HashMap;

    sput-object p4, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    sput-object p0, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    return-void
.end method

.method static isFakeGpsOn()Z
    .locals 1

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    check-cast v0, Lcom/android/server/LocationPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/LocationPolicyManagerService;->getFakeGpsFeatureOnState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isPhoneStationary()Z
    .locals 1

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    check-cast v0, Lcom/android/server/LocationPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/LocationPolicyManagerService;->getPhoneStationary()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isRequestBlockedByPolicy(I)Z
    .locals 5

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sUidRules:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static locationSanitized(Landroid/location/Location;)Landroid/location/Location;
    .locals 1

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/location/MetokProxy;->locationSanitized(Landroid/location/Location;)Landroid/location/Location;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static removeAndBackupLocationRequestIfNeeded(I)V
    .locals 9

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$Receiver;

    iget v5, v4, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    if-ne v5, p0, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v7, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backup receiver:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v5}, Lcom/android/server/LocationManagerService$Receiver;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v7, v5}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    goto :goto_1

    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private static restoreBlockedLocationRequestIfNeeded(I)V
    .locals 14

    sget-object v13, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    iget v0, v2, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    if-ne v0, p0, :cond_0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, v2, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    iget-object v0, v2, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restore receiver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$UpdateRecord;

    iget-object v1, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget v3, v2, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    iget v4, v2, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v5, v2, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v6

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    move-exception v6

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v3, "linkToDeath failed:"

    invoke-static {v0, v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method static takeOverGpsLP(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->isFakeGpsOn()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->isPhoneStationary()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v2, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v2}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v7, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/server/LocationManagerService;->callIsCurrentProfile(I)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v7, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    iget-object v8, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    iget-object v10, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v5, v7, v8, v9, v10}, Lcom/android/server/LocationManagerServiceFacade;->checkLocationAccess(Lcom/android/server/LocationManagerService;IILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v1, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    iget-object v5, v2, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v8

    iget-wide v10, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v5, v8, v10

    if-gez v5, :cond_1

    iput-boolean v12, v2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sMiuiFakeGpsProvider:Lcom/android/server/MiuiFakeGpsProvider;

    invoke-virtual {v5, v2, v6}, Lcom/android/server/MiuiFakeGpsProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    move-object p0, v6

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v2}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    const/4 v4, 0x0

    if-eqz p0, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v7, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/server/LocationManagerService;->callIsCurrentProfile(I)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v7, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    iget-object v8, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    iget-object v10, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v5, v7, v8, v9, v10}, Lcom/android/server/LocationManagerServiceFacade;->checkLocationAccess(Lcom/android/server/LocationManagerService;IILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    check-cast v5, Lcom/android/server/LocationPolicyManagerService;

    iget-object v7, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/server/LocationPolicyManagerService;->takeOverGpsProvider(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v1, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    iget-object v5, v2, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v8

    iget-wide v10, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v5, v8, v10

    if-gez v5, :cond_4

    iput-boolean v12, v2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sMiuiFakeGpsProvider:Lcom/android/server/MiuiFakeGpsProvider;

    invoke-virtual {v5, v2, v6}, Lcom/android/server/MiuiFakeGpsProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    move-object p0, v4

    goto/16 :goto_0
.end method

.method public static takeOverLP(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    const-string v0, "gps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/LocationManagerServiceInjector;->takeOverGpsLP(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/android/server/LocationManagerServiceInjector;->takeOverMetokLP(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0
.end method

.method public static takeOverMetokLP(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5}, Landroid/os/WorkSource;-><init>()V

    new-instance v2, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v2}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    if-eqz p1, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v7, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/LocationManagerService;->callIsCurrentProfile(I)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v7, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    iget-object v8, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v9, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    iget-object v10, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/LocationManagerServiceFacade;->checkLocationAccess(Lcom/android/server/LocationManagerService;IILjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    iget-object v7, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, p0, v7}, Lcom/android/server/location/MetokProxy;->canTakeOver(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "takeover LP of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    iget-object v6, v2, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v6, v6, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v7, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-nez v6, :cond_5

    :cond_3
    :goto_1
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v6, v2, v5}, Lcom/android/server/location/MetokProxy;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    sput-object v2, Lcom/android/server/LocationManagerServiceInjector;->mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "takeover LP : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/location/ProviderRequest;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v4

    :cond_5
    iget-boolean v6, v2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    sget-object v7, Lcom/android/server/LocationManagerServiceInjector;->mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v7, v7, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-ne v6, v7, :cond_3

    iget-wide v6, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    sget-object v8, Lcom/android/server/LocationManagerServiceInjector;->mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v8, v8, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    goto :goto_1
.end method

.method public static updateGpsStatusProvider(Landroid/location/IGpsStatusProvider;)V
    .locals 0

    sput-object p0, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusProviderRef:Landroid/location/IGpsStatusProvider;

    return-void
.end method

.method public static updateLpStatus(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;)V"
        }
    .end annotation

    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_0
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v3, v0}, Lcom/android/server/location/MetokProxy;->updateStatus(Z)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
