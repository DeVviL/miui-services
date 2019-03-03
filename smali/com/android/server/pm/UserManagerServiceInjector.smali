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

    .prologue
    .line 28
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

    .line 83
    const/16 v0, 0xc7

    sput v0, Lcom/android/server/pm/UserManagerServiceInjector;->HIDDEN_SPACES_USER_ID_SCOPE:I

    .line 84
    const/16 v0, 0x64

    sput v0, Lcom/android/server/pm/UserManagerServiceInjector;->HIDDEN_SPACES_MIN_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndGetNewUserId(II)I
    .locals 1
    .param p0, "flags"    # I
    .param p1, "defUserId"    # I

    .prologue
    .line 79
    invoke-static {p0, p1}, Lmiui/securityspace/XSpaceUserHandle;->checkAndGetXSpaceUserId(II)I

    move-result v0

    return v0
.end method

.method public static checkAndGetNewUserId(Lcom/android/server/pm/UserManagerService;IIZLjava/lang/Object;Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)I
    .locals 1
    .param p0, "userManagerService"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "flags"    # I
    .param p2, "defUserId"    # I
    .param p3, "isAirlockUser"    # Z
    .param p4, "mPackagesLock"    # Ljava/lang/Object;
    .param p6, "mRemovingUserIds"    # Landroid/util/SparseBooleanArray;
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

    .prologue
    .line 36
    .local p5, "mUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/UserInfo;>;"
    move v0, p2

    .line 37
    .local v0, "userId":I
    if-eqz p3, :cond_0

    .line 38
    const/16 v0, 0x63

    .line 42
    :goto_0
    invoke-static {v0}, Lcom/android/server/pm/UserManagerServiceInjector;->cleanDirtyData(I)V

    .line 43
    return v0

    .line 40
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/pm/UserManagerServiceInjector;->checkAndGetNewUserId(II)I

    move-result v0

    goto :goto_0
.end method

.method private static cleanDirtyData(I)V
    .locals 7
    .param p0, "userId"    # I

    .prologue
    .line 49
    :try_start_0
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 50
    .local v2, "userSystemDirectory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    invoke-static {v2}, Lcom/android/server/pm/UserManagerServiceInjector;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 52
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

    .line 55
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    sget-object v5, Lcom/android/server/pm/UserManagerServiceInjector;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .local v3, "usersDir":Ljava/io/File;
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

    .line 57
    .local v1, "userFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    new-instance v4, Landroid/util/AtomicFile;

    invoke-direct {v4, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Landroid/util/AtomicFile;->delete()V

    .line 59
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

    .line 65
    .end local v1    # "userFile":Ljava/io/File;
    .end local v2    # "userSystemDirectory":Ljava/io/File;
    .end local v3    # "usersDir":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "UserManagerService"

    const-string v5, "cleanDirtyData failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static handleUserRestrictions(ZLandroid/content/pm/UserInfo;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "isAirlockUser"    # Z
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "restrictions"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 101
    if-eqz p0, :cond_1

    .line 102
    const-string v0, "no_install_apps"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    const-string v0, "no_debugging_features"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "no_install_unknown_sources"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static isAvailable(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)Z
    .locals 1
    .param p0, "id"    # I
    .param p2, "mRemovingUserIds"    # Landroid/util/SparseBooleanArray;
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

    .prologue
    .line 87
    .local p1, "mUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/UserInfo;>;"
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
    .param p0, "flags"    # I

    .prologue
    .line 32
    invoke-static {p0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserFlag(I)Z

    move-result v0

    return v0
.end method

.method public static processEncryption(ZLandroid/content/pm/UserInfo;)Z
    .locals 2
    .param p0, "isAirlockUser"    # Z
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 91
    if-nez p0, :cond_0

    invoke-static {p1}, Landroid/service/securespaces/SpaceEncryptionManager;->processEncryption(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const-string v0, "UserManagerService"

    const-string v1, "SpaceEncryptionManager.processEncryption Failed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 95
    :cond_0
    const-string v0, "UserManagerService"

    const-string v1, "SpaceEncryptionManager.processEncryption OK!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static removeDirectoryRecursive(Ljava/io/File;)V
    .locals 7
    .param p0, "parent"    # Ljava/io/File;

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 69
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "files":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 71
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    .local v1, "child":Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/pm/UserManagerServiceInjector;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 70
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 76
    return-void
.end method
