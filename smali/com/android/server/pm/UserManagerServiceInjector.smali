.class public Lcom/android/server/pm/UserManagerServiceInjector;
.super Ljava/lang/Object;
.source "UserManagerServiceInjector.java"


# static fields
.field private static HIDDEN_SPACES_MIN_USER_ID:I = 0x0

.field private static HIDDEN_SPACES_USER_ID_SCOPE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final XML_SUFFIX:Ljava/lang/String; = ".xml"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManagerServiceInjector;->USER_INFO_DIR:Ljava/lang/String;

    const/16 v0, 0xc7

    sput v0, Lcom/android/server/pm/UserManagerServiceInjector;->HIDDEN_SPACES_USER_ID_SCOPE:I

    const/16 v0, 0x64

    sput v0, Lcom/android/server/pm/UserManagerServiceInjector;->HIDDEN_SPACES_MIN_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndGetNewUserId(II)I
    .locals 1

    invoke-static {p0, p1}, Lmiui/securityspace/XSpaceUserHandle;->checkAndGetXSpaceUserId(II)I

    move-result v0

    return v0
.end method

.method public static checkAndGetNewUserId(Lcom/android/server/pm/UserManagerService;IIZLjava/lang/Object;Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            "IIZ",
            "Ljava/lang/Object;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")I"
        }
    .end annotation

    move v0, p2

    if-eqz p3, :cond_0

    const/16 v0, 0x63

    :goto_0
    invoke-static {v0}, Lcom/android/server/pm/UserManagerServiceInjector;->cleanDirtyData(I)V

    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/pm/UserManagerServiceInjector;->checkAndGetNewUserId(II)I

    move-result v0

    goto :goto_0
.end method

.method private static cleanDirtyData(I)V
    .locals 7

    :try_start_0
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lcom/android/server/pm/UserManagerServiceInjector;->removeDirectoryRecursive(Ljava/io/File;)V

    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clean dirty system Directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    sget-object v5, Lcom/android/server/pm/UserManagerServiceInjector;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Landroid/util/AtomicFile;

    invoke-direct {v4, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Landroid/util/AtomicFile;->delete()V

    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clean dirty user file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v4, "UserManagerService"

    const-string v5, "cleanDirtyData failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static handleUserRestrictions(ZLandroid/content/pm/UserInfo;Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    const-string v0, "no_install_apps"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "no_debugging_features"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "no_install_unknown_sources"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static isAvailable(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p2, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHiddenUserType(I)Z
    .locals 1

    invoke-static {p0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserFlag(I)Z

    move-result v0

    return v0
.end method

.method public static processEncryption(ZLandroid/content/pm/UserInfo;)Z
    .locals 2

    if-nez p0, :cond_0

    invoke-static {p1}, Landroid/service/securespaces/SpaceEncryptionManager;->processEncryption(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UserManagerService"

    const-string v1, "SpaceEncryptionManager.processEncryption Failed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "UserManagerService"

    const-string v1, "SpaceEncryptionManager.processEncryption OK!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static removeDirectoryRecursive(Ljava/io/File;)V
    .locals 7

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/pm/UserManagerServiceInjector;->removeDirectoryRecursive(Ljava/io/File;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method
