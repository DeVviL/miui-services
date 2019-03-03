.class public Lcom/android/server/securespaces/SpaceEncryptionService;
.super Landroid/service/securespaces/ISpaceEncryptionService$Stub;
.source "SpaceEncryptionService.java"


# static fields
.field private static final ABORTCMD:I = -0xc9

.field private static final ACKCMD:I = -0xca

.field private static final DEBUG:Z = true

.field private static final DEFAULT_AUTH_DATA:Ljava/lang/String; = "4178522d9b7d8c122e09d8c21e499939"

.field private static final EF_MOUNT:I = -0x79

.field private static final EF_OVERWRITE:I = -0x7b

.field private static final EF_UNMOUNT:I = -0x7c

.field private static final EF_UPDATE:I = -0x7a

.field private static final KEY_DESC_HASH_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final SALT_LENGTH:I = 0x20

.field private static final SECONDARY_STORAGE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SpaceEncryptionService"

.field private static final USER_SALT_DIR_NAME:Ljava/lang/String; = ".Spaces"

.field private static final USER_SALT_FILE_NAME:Ljava/lang/String; = "salt"

.field private static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field private static final fekekDescriptionSalt:[B

.field private static final fnekDescriptionSalt:[B


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEcryptfsLock:Ljava/lang/Object;

.field private mEcryptfsMountedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEcryptfsMountedUsersRemovable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

.field private mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 74
    const-string v0, "miui_security"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 99
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/securespaces/SpaceEncryptionService;->fekekDescriptionSalt:[B

    .line 111
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/securespaces/SpaceEncryptionService;->fnekDescriptionSalt:[B

    .line 139
    const-string v0, "SECONDARY_STORAGE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/securespaces/SpaceEncryptionService;->SECONDARY_STORAGE:Ljava/lang/String;

    return-void

    .line 99
    :array_0
    .array-data 1
        0x30t
        -0x46t
        0x14t
        -0x3ft
        -0x1et
        -0x50t
        -0x7et
        -0x23t
        -0x2dt
        -0x7t
        -0x7t
        0x6et
        0x2dt
        0x1ft
        0x46t
        -0x55t
        0x67t
        0x8t
        0x4bt
        -0xft
        -0x67t
        0x72t
        -0x45t
        0x78t
        0x33t
        -0x63t
        0x17t
        0x1bt
        -0x5t
        -0x1at
        -0x2et
        0x6at
    .end array-data

    .line 111
    :array_1
    .array-data 1
        0x7et
        0x5ct
        -0x66t
        0x60t
        -0x2et
        -0x31t
        -0x36t
        0x3et
        -0x73t
        0x35t
        -0x2at
        -0x48t
        -0x63t
        -0x73t
        0x11t
        0x10t
        0xdt
        0x36t
        0x6et
        0x5at
        0x16t
        -0x7t
        -0x46t
        0x7bt
        0x3ct
        -0x1bt
        -0x7at
        0x28t
        -0x6et
        -0x61t
        -0x69t
        -0x6et
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 135
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    .line 136
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsersRemovable:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    .line 211
    iput-object p1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mContext:Landroid/content/Context;

    .line 212
    invoke-static {}, Lcom/android/server/securespaces/PackageManagerQueue;->getInstance()Lcom/android/server/securespaces/PackageManagerQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    .line 214
    invoke-direct {p0}, Lcom/android/server/securespaces/SpaceEncryptionService;->initializeEcryptfsMounts()V

    .line 215
    return-void
.end method

.method private cleanUpUserDirectoriesLocked(I)V
    .locals 3
    .param p1, "userid"    # I

    .prologue
    .line 877
    if-eqz p1, :cond_0

    const/16 v1, 0x63

    if-eq p1, v1, :cond_0

    const/16 v1, 0x3e7

    if-ne p1, v1, :cond_1

    .line 879
    :cond_0
    const-string v1, "SpaceEncryptionService"

    const-string v2, "Invalid user id."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :goto_0
    return-void

    .line 882
    :cond_1
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 883
    .local v0, "pms":Lcom/android/server/pm/PackageManagerService;
    if-eqz v0, :cond_2

    .line 884
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUser(I)I

    goto :goto_0

    .line 886
    :cond_2
    const-string v1, "SpaceEncryptionService"

    const-string v2, "Unable to clean-up user directories: pms == null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doEcryptfsMountLocked(IILjava/lang/String;)I
    .locals 12
    .param p1, "userId"    # I
    .param p2, "authId"    # I
    .param p3, "authData"    # Ljava/lang/String;

    .prologue
    .line 435
    const/4 v6, 0x0

    .line 437
    .local v6, "rc":I
    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doEcryptfsMountLocked: userId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " authId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniInitssService()I

    move-result v6

    .line 440
    if-eqz v6, :cond_0

    .line 441
    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doEcryptfsMountLocked - jniInitssService failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v9, -0x1

    .line 474
    :goto_0
    return v9

    .line 446
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->getUserSalt(I)[B

    move-result-object v8

    .line 449
    .local v8, "userSalt":[B
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateFekekDescription(I[B)Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "fekekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateFnekDescription(I[B)Ljava/lang/String;

    move-result-object v3

    .line 451
    .local v3, "fnekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateMediaFekekDescription(I[B)Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, "mediaFekekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateMediaFnekDescription(I[B)Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, "mediaFnekDesc":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "encodedAuthData":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "cmdStr":Ljava/lang/String;
    const/16 v9, -0x79

    invoke-static {v9, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniSendssService(ILjava/lang/String;)I

    move-result v6

    .line 463
    if-eqz v6, :cond_1

    .line 464
    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to execute mount cmdStr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_1
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniRecvssService()I

    move-result v7

    .line 468
    .local v7, "ret":I
    const/16 v9, -0xca

    if-ne v7, v9, :cond_2

    .line 469
    const/4 v6, 0x0

    :goto_1
    move v9, v6

    .line 474
    goto/16 :goto_0

    .line 471
    :cond_2
    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Execution of mount cmdStr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " returned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v6}, Lcom/android/server/securespaces/SpaceEncryptionService;->getEncryptionCmdError(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v6, -0x1

    goto :goto_1
.end method

.method private doEcryptfsMountRemovableLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedRemovableLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 281
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniEcryptfsMountRemovable(ILjava/lang/String;)I

    move-result v0

    .line 282
    .local v0, "rc":I
    if-nez v0, :cond_1

    .line 283
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsersRemovable:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    :cond_1
    const-string v1, "SpaceEncryptionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call to jniEcryptfsMountRemovable() failed for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with rc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doEcryptfsOverwriteLocked(I)I
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 555
    const/4 v1, 0x0

    .line 557
    .local v1, "rc":I
    const-string v3, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doEcryptfsOverwriteLocked: userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v4, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 560
    :try_start_0
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniInitssService()I

    move-result v1

    .line 561
    if-eqz v1, :cond_0

    .line 562
    const-string v3, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jniInitssService failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v3, -0x1

    monitor-exit v4

    .line 579
    :goto_0
    return v3

    .line 566
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "cmdStr":Ljava/lang/String;
    const/16 v3, -0x7b

    invoke-static {v3, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniSendssService(ILjava/lang/String;)I

    move-result v1

    .line 568
    if-eqz v1, :cond_1

    .line 569
    const-string v3, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to execute overwrite cmdStr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_1
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniRecvssService()I

    move-result v2

    .line 573
    .local v2, "ret":I
    const/16 v3, -0xca

    if-ne v2, v3, :cond_2

    .line 574
    const/4 v1, 0x0

    .line 579
    :goto_1
    monitor-exit v4

    move v3, v1

    goto :goto_0

    .line 576
    :cond_2
    const-string v3, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Execution of overwrite cmdStr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->getEncryptionCmdError(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v1, -0x1

    goto :goto_1

    .line 580
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v2    # "ret":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private doEcryptfsUnmountLocked(I)I
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 488
    const/4 v1, 0x0

    .line 490
    .local v1, "rc":I
    const-string v3, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doEcryptfsUnmountLocked: Unmounting userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniInitssService()I

    move-result v1

    .line 493
    if-eqz v1, :cond_0

    .line 494
    const-string v3, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doEcryptfsUnmountLocked - jniInitssService failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v3, -0x1

    .line 509
    :goto_0
    return v3

    .line 497
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "cmdStr":Ljava/lang/String;
    const/16 v3, -0x7c

    invoke-static {v3, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniSendssService(ILjava/lang/String;)I

    move-result v1

    .line 499
    if-eqz v1, :cond_1

    .line 500
    const-string v3, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to execute umount cmdStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_1
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniRecvssService()I

    move-result v2

    .line 503
    .local v2, "ret":I
    const/16 v3, -0xca

    if-ne v2, v3, :cond_2

    .line 504
    const/4 v1, 0x0

    :goto_1
    move v3, v1

    .line 509
    goto :goto_0

    .line 506
    :cond_2
    const-string v3, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Execution of unmount cmdStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->getEncryptionCmdError(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private doEcryptfsUnmountRemovableLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedRemovableLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-static {p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniEcryptfsUnmountRemovable(I)I

    move-result v0

    .line 318
    .local v0, "rc":I
    if-nez v0, :cond_1

    .line 320
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsersRemovable:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :cond_1
    const-string v1, "SpaceEncryptionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call to jniEcryptfsUnmountRemovable() failed for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with rc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doEcryptfsUpdateLocked(IILjava/lang/String;)I
    .locals 12
    .param p1, "userId"    # I
    .param p2, "authId"    # I
    .param p3, "authData"    # Ljava/lang/String;

    .prologue
    .line 515
    const/4 v6, 0x0

    .line 517
    .local v6, "rc":I
    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doEcryptfsUpdateLocked: userId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " authId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniInitssService()I

    move-result v6

    .line 520
    if-eqz v6, :cond_0

    .line 521
    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doEcryptfsUpdateLocked - jniInitssService failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v9, -0x1

    .line 548
    :goto_0
    return v9

    .line 526
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->getUserSalt(I)[B

    move-result-object v8

    .line 529
    .local v8, "userSalt":[B
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateFekekDescription(I[B)Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, "fekekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateFnekDescription(I[B)Ljava/lang/String;

    move-result-object v3

    .line 531
    .local v3, "fnekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateMediaFekekDescription(I[B)Ljava/lang/String;

    move-result-object v4

    .line 532
    .local v4, "mediaFekekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateMediaFnekDescription(I[B)Ljava/lang/String;

    move-result-object v5

    .line 533
    .local v5, "mediaFnekDesc":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "encodedAuthData":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "cmdStr":Ljava/lang/String;
    const/16 v9, -0x7a

    invoke-static {v9, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniSendssService(ILjava/lang/String;)I

    move-result v6

    .line 538
    if-eqz v6, :cond_1

    .line 539
    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to execute update cmdStr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_1
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniRecvssService()I

    move-result v7

    .line 542
    .local v7, "ret":I
    const/16 v9, -0xca

    if-ne v7, v9, :cond_2

    .line 543
    const/4 v6, 0x0

    :goto_1
    move v9, v6

    .line 548
    goto/16 :goto_0

    .line 545
    :cond_2
    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Execution of update cmdStr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " returned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v6}, Lcom/android/server/securespaces/SpaceEncryptionService;->getEncryptionCmdError(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v6, -0x1

    goto :goto_1
.end method

.method private enableGraphiteAppBeforeSwitch(I)V
    .locals 7
    .param p1, "targetId"    # I

    .prologue
    const/4 v6, 0x0

    .line 1181
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v4

    if-nez v4, :cond_0

    .line 1182
    iget-object v4, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1183
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1184
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v2, :cond_1

    .line 1185
    const-string v4, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User switch failed , user id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userManager":Landroid/os/UserManager;
    :cond_0
    :goto_0
    return-void

    .line 1188
    .restart local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "userManager":Landroid/os/UserManager;
    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSpace()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1189
    iget-object v4, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1190
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v4, "content://com.miui.securitycore.provider/activeGraphiteApps"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1191
    .local v1, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v4, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private generateEcryptfsKeyDescription(Ljava/lang/String;[BI[B)Ljava/lang/String;
    .locals 6
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "fixedSalt"    # [B
    .param p3, "userId"    # I
    .param p4, "userSalt"    # [B

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 356
    .local v0, "H":[B
    :try_start_0
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 358
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 359
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 360
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 361
    invoke-virtual {v3, p4}, Ljava/security/MessageDigest;->update([B)V

    .line 362
    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 363
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 376
    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "desc":Ljava/lang/String;
    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .end local v1    # "desc":Ljava/lang/String;
    .end local v3    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v4

    .line 364
    :catch_0
    move-exception v2

    .line 365
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "SpaceEncryptionService"

    const-string v5, "caught exception from MessageDigest: "

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private generateFekekDescription(I[B)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "userSalt"    # [B

    .prologue
    .line 382
    const-string v0, "fekek"

    sget-object v1, Lcom/android/server/securespaces/SpaceEncryptionService;->fekekDescriptionSalt:[B

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateEcryptfsKeyDescription(Ljava/lang/String;[BI[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateFnekDescription(I[B)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "userSalt"    # [B

    .prologue
    .line 386
    const-string v0, "fnek"

    sget-object v1, Lcom/android/server/securespaces/SpaceEncryptionService;->fnekDescriptionSalt:[B

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateEcryptfsKeyDescription(Ljava/lang/String;[BI[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateMediaFekekDescription(I[B)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "userSalt"    # [B

    .prologue
    .line 390
    const-string v0, "media-fekek"

    sget-object v1, Lcom/android/server/securespaces/SpaceEncryptionService;->fekekDescriptionSalt:[B

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateEcryptfsKeyDescription(Ljava/lang/String;[BI[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateMediaFnekDescription(I[B)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "userSalt"    # [B

    .prologue
    .line 394
    const-string v0, "media-fnek"

    sget-object v1, Lcom/android/server/securespaces/SpaceEncryptionService;->fnekDescriptionSalt:[B

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateEcryptfsKeyDescription(Ljava/lang/String;[BI[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEncryptionCmdError(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 143
    packed-switch p1, :pswitch_data_0

    .line 205
    const-string v0, "Unknown Error."

    .line 207
    .local v0, "errStr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 145
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_0
    const-string v0, "ABORTCMD"

    .line 146
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 148
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_1
    const-string v0, "ACKCMD"

    .line 149
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 151
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_2
    const-string v0, "CMD_ERR_OUT_OF_MEMORY"

    .line 152
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 154
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_3
    const-string v0, "CMD_ERR_NO_AUTH_DATA"

    .line 155
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 157
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_4
    const-string v0, "CMD_ERR_KEYRING"

    .line 158
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 160
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_5
    const-string v0, "CMD_ERR_PREPARE_DIR"

    .line 161
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 163
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_6
    const-string v0, "CMD_ERR_FILE_NOT_FOUND"

    .line 164
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 166
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_7
    const-string v0, "CMD_ERR_CREATE_KEY"

    .line 167
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 169
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_8
    const-string v0, "CMD_ERR_FIND_KEY"

    .line 170
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 172
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_9
    const-string v0, "CMD_ERR_LOAD_KEY"

    .line 173
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 175
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_a
    const-string v0, "CMD_ERR_HASHDATA"

    .line 176
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 178
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_b
    const-string v0, "CMD_ERR_MOUNT"

    .line 179
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 181
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_c
    const-string v0, "CMD_ERR_UMOUNT"

    .line 182
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 184
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_d
    const-string v0, "CMD_ERR_SYSCALL"

    .line 185
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 187
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_e
    const-string v0, "CMD_ERR_INVALID_ARGS"

    .line 188
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 190
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_f
    const-string v0, "CMD_ERR_FILE_COPY"

    .line 191
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 193
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_10
    const-string v0, "CMD_ERR_RANDOM_BYTE"

    .line 194
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 196
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_11
    const-string v0, "CMD_ERR_WRITE_KEYFILE"

    .line 197
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 199
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_12
    const-string v0, "CMD_ERR_MAP_FILE"

    .line 200
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 202
    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_13
    const-string v0, "CMD_ERR_REMOVE_DIR"

    .line 203
    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch -0xdc
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUserSalt(I)[B
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 398
    const/16 v7, 0x20

    new-array v3, v7, [B

    .line 400
    .local v3, "salt":[B
    new-instance v5, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v7

    const-string v8, ".Spaces"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 401
    .local v5, "userSaltDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, "salt"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 403
    .local v6, "userSaltFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 406
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 407
    .local v1, "finput":Ljava/io/FileInputStream;
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 408
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v1    # "finput":Ljava/io/FileInputStream;
    :goto_0
    return-object v3

    .line 409
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "SpaceEncryptionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file input exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 415
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 416
    .local v4, "sr":Ljava/security/SecureRandom;
    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 420
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 421
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 422
    .local v2, "foutput":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 423
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 424
    invoke-virtual {v6}, Ljava/io/File;->setReadOnly()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 425
    .end local v2    # "foutput":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 427
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SpaceEncryptionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file output exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initializeEcryptfsMounts()V
    .locals 12

    .prologue
    .line 607
    iget-object v9, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 609
    :try_start_0
    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    new-instance v8, Ljava/io/FileInputStream;

    const-string v10, "/proc/mounts"

    invoke-direct {v8, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    .line 610
    .local v4, "pfr":Lcom/android/internal/util/ProcFileReader;
    new-instance v0, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/user/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, "dataUser":Ljava/lang/String;
    const-string v3, "/mnt/media_rw/sdcard1/_ss_"

    .line 612
    .local v3, "mntMediaRwSdcard1":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 618
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 620
    .local v6, "s1":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 621
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "ecryptfs"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 624
    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v2, v8, 0x1

    .line 625
    .local v2, "i":I
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 626
    .local v7, "userId":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_1

    .line 627
    iget-object v8, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    .end local v2    # "i":I
    .end local v7    # "userId":Ljava/lang/Integer;
    :cond_0
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 660
    .end local v0    # "dataUser":Ljava/lang/String;
    .end local v3    # "mntMediaRwSdcard1":Ljava/lang/String;
    .end local v4    # "pfr":Lcom/android/internal/util/ProcFileReader;
    .end local v6    # "s1":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 661
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v8, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file not found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    return-void

    .line 629
    .restart local v0    # "dataUser":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "mntMediaRwSdcard1":Ljava/lang/String;
    .restart local v4    # "pfr":Lcom/android/internal/util/ProcFileReader;
    .restart local v6    # "s1":Ljava/lang/String;
    .restart local v7    # "userId":Ljava/lang/Integer;
    :cond_1
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUnmountLocked(I)I

    move-result v5

    .line 630
    .local v5, "rc":I
    if-eqz v5, :cond_0

    .line 631
    const-string v8, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ecryptfs unmount operation for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed with rc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 662
    .end local v0    # "dataUser":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "mntMediaRwSdcard1":Ljava/lang/String;
    .end local v4    # "pfr":Lcom/android/internal/util/ProcFileReader;
    .end local v5    # "rc":I
    .end local v6    # "s1":Ljava/lang/String;
    .end local v7    # "userId":Ljava/lang/Integer;
    :catch_1
    move-exception v1

    .line 663
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string v8, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "io exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 665
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 637
    .restart local v0    # "dataUser":Ljava/lang/String;
    .restart local v3    # "mntMediaRwSdcard1":Ljava/lang/String;
    .restart local v4    # "pfr":Lcom/android/internal/util/ProcFileReader;
    .restart local v6    # "s1":Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string v8, "/mnt/media_rw/sdcard1/_ss_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 638
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "ecryptfs_vfat"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 641
    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v2, v8, 0x1

    .line 642
    .restart local v2    # "i":I
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 643
    .restart local v7    # "userId":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_3

    .line 644
    iget-object v8, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsersRemovable:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 649
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniEcryptfsUnmountRemovable(I)I

    move-result v5

    .line 650
    .restart local v5    # "rc":I
    if-eqz v5, :cond_0

    .line 651
    const-string v8, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ecryptfs unmount removable operation for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed with rc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 659
    .end local v2    # "i":I
    .end local v5    # "rc":I
    .end local v6    # "s1":Ljava/lang/String;
    .end local v7    # "userId":Ljava/lang/Integer;
    :cond_4
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method

.method private isSdcardVoldMounted()Z
    .locals 8

    .prologue
    .line 694
    const/4 v4, 0x0

    .line 696
    .local v4, "rc":Z
    :try_start_0
    const-string v0, "/dev/block/vold"

    .line 697
    .local v0, "dbv":Ljava/lang/String;
    const-string v2, "/mnt/media_rw/sdcard1"

    .line 698
    .local v2, "mms":Ljava/lang/String;
    new-instance v3, Lcom/android/internal/util/ProcFileReader;

    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/proc/mounts"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    .line 699
    .local v3, "pfr":Lcom/android/internal/util/ProcFileReader;
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 702
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/dev/block/vold"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/mnt/media_rw/sdcard1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 704
    const/4 v4, 0x1

    .line 709
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->close()V

    .line 715
    .end local v0    # "dbv":Ljava/lang/String;
    .end local v2    # "mms":Ljava/lang/String;
    .end local v3    # "pfr":Lcom/android/internal/util/ProcFileReader;
    :goto_1
    return v4

    .line 707
    .restart local v0    # "dbv":Ljava/lang/String;
    .restart local v2    # "mms":Ljava/lang/String;
    .restart local v3    # "pfr":Lcom/android/internal/util/ProcFileReader;
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 710
    .end local v0    # "dbv":Ljava/lang/String;
    .end local v2    # "mms":Ljava/lang/String;
    .end local v3    # "pfr":Lcom/android/internal/util/ProcFileReader;
    :catch_0
    move-exception v1

    .line 711
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "SpaceEncryptionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 712
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 713
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "SpaceEncryptionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "io exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isUserEcryptfsMountedLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUserEcryptfsMountedRemovableLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsersRemovable:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static native jniEcryptfsMountRemovable(ILjava/lang/String;)I
.end method

.method private static native jniEcryptfsUnmountRemovable(I)I
.end method

.method private static native jniInitssService()I
.end method

.method private static native jniRecvssService()I
.end method

.method private static native jniSendssService(ILjava/lang/String;)I
.end method

.method private static native jniWipeRemovableUserDir(I)I
.end method

.method private processPackageManagerQueueLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPms:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_0

    .line 594
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 596
    :cond_0
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/pm/PackageManagerService;->processPackageManagerQueue(ILcom/android/server/securespaces/PackageManagerQueue;)V

    .line 598
    monitor-exit v1

    .line 599
    return-void

    .line 598
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private validatePermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 584
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 585
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission check failed, need: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 590
    :cond_0
    return-void
.end method


# virtual methods
.method public ecryptfsMount(IILjava/lang/String;)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "authId"    # I
    .param p3, "authData"    # Ljava/lang/String;

    .prologue
    .line 725
    const-string v1, "SpaceEncryptionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in ecryptfsMount("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authData)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 729
    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 731
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->enableGraphiteAppBeforeSwitch(I)V

    .line 733
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 736
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    const/4 v0, 0x1

    monitor-exit v2

    .line 751
    :goto_0
    return v0

    .line 741
    :cond_0
    if-nez p3, :cond_2

    .line 742
    const-string v1, "4178522d9b7d8c122e09d8c21e499939"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsMountLocked(IILjava/lang/String;)I

    move-result v0

    .line 747
    .local v0, "rc":I
    :goto_1
    if-nez v0, :cond_1

    .line 748
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->processPackageManagerQueueLocked(I)V

    .line 751
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 752
    .end local v0    # "rc":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 744
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsMountLocked(IILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .restart local v0    # "rc":I
    goto :goto_1
.end method

.method public ecryptfsMountRemovable(I)V
    .locals 11
    .param p1, "userId"    # I

    .prologue
    const/16 v10, 0x63

    .line 232
    const-string v7, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v7}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 234
    sget-object v7, Lcom/android/server/securespaces/SpaceEncryptionService;->SECONDARY_STORAGE:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 273
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v8, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 237
    if-ne p1, v10, :cond_2

    .line 238
    :try_start_0
    const-string v7, "SpaceEncryptionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ecryptfsMountRemovable() called with invalid userId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_1
    :goto_1
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 239
    :cond_2
    const/4 v7, -0x1

    if-ne p1, v7, :cond_5

    .line 243
    const/4 v7, 0x0

    :try_start_1
    invoke-direct {p0, v7}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsMountRemovableLocked(I)V

    .line 245
    const-string v7, "user"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v5

    .line 246
    .local v5, "um":Landroid/os/IUserManager;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 247
    .local v1, "am":Landroid/app/IActivityManager;
    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    .line 249
    const/4 v7, 0x1

    :try_start_2
    invoke-interface {v5, v7}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    .line 250
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 251
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_1

    .line 252
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 253
    .local v4, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isSpace()Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v7, :cond_3

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, v10, :cond_3

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    const/4 v9, 0x0

    invoke-interface {v1, v7, v9}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 258
    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsMountRemovableLocked(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 263
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v2

    .line 264
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "SpaceEncryptionService"

    const-string v9, "call to getUsers() failed"

    invoke-static {v7, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 267
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v7, "SpaceEncryptionService"

    const-string v9, "unable to contact UserManagerService.  it is running?"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 270
    .end local v1    # "am":Landroid/app/IActivityManager;
    .end local v5    # "um":Landroid/os/IUserManager;
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsMountRemovableLocked(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public ecryptfsOverwrite(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 832
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 834
    .local v0, "callingUid":I
    const-string v1, "SpaceEncryptionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in ecryptfsOverwrite("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 836
    const-string v1, "SpaceEncryptionService"

    const-string v2, "Calling UID must be System to overwrite the Ecryptfs keys."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v1, -0x1

    .line 840
    :goto_0
    return v1

    .line 839
    :cond_0
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 840
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsOverwriteLocked(I)I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 841
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ecryptfsUnmount(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 758
    const-string v1, "SpaceEncryptionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in ecryptfsUnmount("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 762
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 765
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 766
    const/4 v0, 0x1

    monitor-exit v2

    .line 778
    :goto_0
    return v0

    .line 769
    :cond_0
    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 773
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUnmountLocked(I)I

    move-result v0

    .line 774
    .local v0, "rc":I
    if-nez v0, :cond_1

    .line 776
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 778
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 779
    .end local v0    # "rc":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ecryptfsUnmountRemovable(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 293
    const-string v2, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v2}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 295
    sget-object v2, Lcom/android/server/securespaces/SpaceEncryptionService;->SECONDARY_STORAGE:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 309
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v3, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 298
    const/16 v2, 0x63

    if-ne p1, v2, :cond_2

    .line 299
    :try_start_0
    const-string v2, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ecryptfsUnmountRemovable() called with invalid userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_1
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 300
    :cond_2
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    .line 302
    :try_start_1
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsersRemovable:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 303
    .local v1, "ui":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUnmountRemovableLocked(I)V

    goto :goto_2

    .line 306
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ui":Ljava/lang/Integer;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUnmountRemovableLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public ecryptfsUpdate(IILjava/lang/String;)I
    .locals 7
    .param p1, "userId"    # I
    .param p2, "authId"    # I
    .param p3, "authData"    # Ljava/lang/String;

    .prologue
    .line 790
    const-string v4, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in ecryptfsUpdate("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", authData)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const-string v4, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v4}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 797
    iget-object v5, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 798
    :try_start_0
    const-string v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v4}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 803
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedLocked(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 804
    const/4 v4, -0x1

    monitor-exit v5

    .line 823
    :goto_0
    return v4

    .line 807
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    .line 808
    .local v3, "userManager":Lcom/android/server/pm/UserManagerService;
    invoke-virtual {v3, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoPartial(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 811
    .local v2, "ui":Landroid/content/pm/UserInfo;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 813
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez p2, :cond_2

    .line 814
    const/16 v4, 0x20

    new-array v0, v4, [B

    .line 815
    .local v0, "randomAuth":[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 816
    .local v1, "sr":Ljava/security/SecureRandom;
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 817
    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    .line 823
    .end local v0    # "randomAuth":[B
    .end local v1    # "sr":Ljava/security/SecureRandom;
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUpdateLocked(IILjava/lang/String;)I

    move-result v4

    monitor-exit v5

    goto :goto_0

    .line 824
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    .end local v3    # "userManager":Lcom/android/server/pm/UserManagerService;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 819
    .restart local v2    # "ui":Landroid/content/pm/UserInfo;
    .restart local v3    # "userManager":Lcom/android/server/pm/UserManagerService;
    :cond_2
    :try_start_1
    const-string p3, "4178522d9b7d8c122e09d8c21e499939"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public isAuthProtected(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 939
    const-string v2, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v2}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 942
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 943
    .local v1, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 945
    .local v0, "isProtected":Z
    :goto_0
    const-string v2, "SpaceEncryptionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAuthProtected: userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const-string v2, "SpaceEncryptionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lpu.isLockPasswordEnabled() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const-string v2, "SpaceEncryptionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lpu.isLockPatternEnabled() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return v0

    .line 943
    .end local v0    # "isProtected":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataDirectoryTmpfs()Z
    .locals 7

    .prologue
    .line 669
    const/4 v3, 0x0

    .line 671
    .local v3, "rc":Z
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "dataDir":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/util/ProcFileReader;

    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/proc/mounts"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    .line 673
    .local v2, "pfr":Lcom/android/internal/util/ProcFileReader;
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 676
    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tmpfs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tmpfs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 679
    const/4 v3, 0x1

    .line 684
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->close()V

    .line 690
    .end local v0    # "dataDir":Ljava/lang/String;
    .end local v2    # "pfr":Lcom/android/internal/util/ProcFileReader;
    :goto_1
    return v3

    .line 682
    .restart local v0    # "dataDir":Ljava/lang/String;
    .restart local v2    # "pfr":Lcom/android/internal/util/ProcFileReader;
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 685
    .end local v0    # "dataDir":Ljava/lang/String;
    .end local v2    # "pfr":Lcom/android/internal/util/ProcFileReader;
    :catch_0
    move-exception v1

    .line 686
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v4, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 687
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 688
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "io exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public needAirlockUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 955
    const-string v2, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v2}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 957
    const/4 v0, 0x0

    .line 958
    .local v0, "needAirLockUser":Z
    iget-object v3, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 959
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v1

    .line 960
    .local v1, "needsEcryptfsMount":Z
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isAuthProtected(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 961
    const/4 v0, 0x1

    .line 963
    :cond_0
    monitor-exit v3

    return v0

    .line 964
    .end local v1    # "needsEcryptfsMount":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public needsEcryptfsMount(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 850
    const-string v3, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v3}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 852
    iget-object v3, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 853
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedLocked(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 856
    monitor-exit v3

    .line 870
    :goto_0
    return v2

    .line 859
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    .line 860
    .local v1, "userManager":Lcom/android/server/pm/UserManagerService;
    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoPartial(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 861
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_1

    .line 862
    const-string v4, "SpaceEncryptionService"

    const-string v5, "needsEcryptfsMount - user does not exist for given user id."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    monitor-exit v3

    goto :goto_0

    .line 871
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    .end local v1    # "userManager":Lcom/android/server/pm/UserManagerService;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 865
    .restart local v0    # "ui":Landroid/content/pm/UserInfo;
    .restart local v1    # "userManager":Lcom/android/server/pm/UserManagerService;
    :cond_1
    if-eqz p1, :cond_2

    const/16 v4, 0x63

    if-ne p1, v4, :cond_3

    .line 867
    :cond_2
    :try_start_1
    monitor-exit v3

    goto :goto_0

    .line 870
    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEncryptedSpace()Z

    move-result v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public processEncryption(Landroid/content/pm/UserInfo;)Z
    .locals 7
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 907
    const-string v4, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v4}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 909
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 910
    .local v1, "userId":I
    iget-object v4, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 911
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->cleanUpUserDirectoriesLocked(I)V

    .line 914
    invoke-virtual {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 915
    const-string v3, "SpaceEncryptionService"

    const-string v5, "processEncryption no need to encrypt the user."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    monitor-exit v4

    .line 932
    :goto_0
    return v2

    .line 920
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v5, v6}, Lcom/android/server/securespaces/SpaceEncryptionService;->ecryptfsMount(IILjava/lang/String;)I

    move-result v0

    .line 921
    .local v0, "rc":I
    if-gez v0, :cond_1

    .line 922
    const-string v2, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processEncryption ecryptfsMount failed with rc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 929
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 930
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v3, v5}, Lcom/android/server/securespaces/SpaceEncryptionService;->ecryptfsUpdate(IILjava/lang/String;)I

    .line 932
    :cond_2
    monitor-exit v4

    goto :goto_0

    .line 933
    .end local v0    # "rc":I
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setAirlockWallpaperToUser(I)V
    .locals 8
    .param p1, "userIdOrig"    # I

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0x63

    .line 1008
    const-string v4, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v4}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 1010
    if-ne p1, v6, :cond_1

    .line 1011
    const-string v4, "SpaceEncryptionService"

    const-string v5, "Invalid userid."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1018
    .local v2, "srcWallpaperFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-static {v6}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1020
    .local v0, "dstWallpaperFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1021
    invoke-static {v2, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1022
    const-string v4, "SpaceEncryptionService"

    const-string v5, "Copy of wallpaper file failed."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_2
    :goto_1
    const/16 v4, 0x1c0

    invoke-static {v0, v4, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    move-result v4

    if-eqz v4, :cond_3

    .line 1029
    const-string v4, "SpaceEncryptionService"

    const-string v5, "Set permissions of wallpaper file failed."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper_info.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1038
    .local v3, "srcWallpaperInfoFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {v6}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper_info.xml"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1039
    .local v1, "dstWallpaperInfoFile":Ljava/io/File;
    invoke-static {v3, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1040
    const-string v4, "SpaceEncryptionService"

    const-string v5, "Copy of wallpaper info file failed."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1025
    .end local v1    # "dstWallpaperInfoFile":Ljava/io/File;
    .end local v3    # "srcWallpaperInfoFile":Ljava/io/File;
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public setOpAddExcludeFromWipe(ILjava/lang/String;)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1166
    const-string v2, "SpaceEncryptionService"

    const-string v3, "setOpAddExcludeFromWipe(%d, %s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const-string v2, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v2}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1171
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1172
    :try_start_0
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p2, p1}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;I)V

    .line 1173
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v2}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    .line 1174
    monitor-exit v1

    .line 1177
    :goto_0
    return v0

    .line 1174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move v0, v1

    .line 1177
    goto :goto_0
.end method

.method public setOpCleanUserData(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1151
    const-string v0, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, p1}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(II)V

    .line 1156
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    .line 1157
    monitor-exit v1

    .line 1158
    const/4 v0, 0x1

    .line 1160
    :goto_0
    return v0

    .line 1157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOpClearUserData(ILjava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1136
    const-string v0, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1140
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, p2, p1}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;I)V

    .line 1141
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    .line 1142
    monitor-exit v1

    .line 1143
    const/4 v0, 0x1

    .line 1145
    :goto_0
    return v0

    .line 1142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOpCreateUserConfig(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1121
    const-string v0, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1125
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p1}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(II)V

    .line 1126
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    .line 1127
    monitor-exit v1

    .line 1128
    const/4 v0, 0x1

    .line 1130
    :goto_0
    return v0

    .line 1127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOpCreateUserData(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "seinfo"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1046
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1049
    iget-object v6, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v6

    .line 1050
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v1, 0x0

    move-object v2, p2

    move v3, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;IILjava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    .line 1052
    monitor-exit v6

    .line 1053
    const/4 v0, 0x1

    .line 1055
    :cond_0
    return v0

    .line 1052
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOpDeleteCacheFiles(ILjava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1091
    const-string v0, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1095
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p2, p1}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;I)V

    .line 1096
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    .line 1097
    monitor-exit v1

    .line 1098
    const/4 v0, 0x1

    .line 1100
    :goto_0
    return v0

    .line 1097
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOpDeleteCodeCacheFiles(ILjava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1106
    const-string v0, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1110
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p2, p1}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;I)V

    .line 1111
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    .line 1112
    monitor-exit v1

    .line 1113
    const/4 v0, 0x1

    .line 1115
    :goto_0
    return v0

    .line 1112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOpLinkNativeLibraryDir(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "dataPath"    # Ljava/lang/String;
    .param p3, "newNativePath32"    # Ljava/lang/String;

    .prologue
    .line 1076
    const-string v0, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1080
    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2, p3, p1}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1081
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    .line 1082
    monitor-exit v1

    .line 1083
    const/4 v0, 0x1

    .line 1085
    :goto_0
    return v0

    .line 1082
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1085
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOpRemove(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1061
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1064
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    .line 1065
    :try_start_0
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2, p1}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;I)V

    .line 1066
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v2}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    .line 1067
    monitor-exit v1

    .line 1070
    :goto_0
    return v0

    .line 1067
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1070
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchUser(I)Z
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 970
    const-string v7, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v7}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 972
    const/4 v4, 0x0

    .line 974
    .local v4, "rc":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 975
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z

    move-result v4

    .line 976
    if-eqz v4, :cond_2

    .line 977
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v6

    .line 979
    .local v6, "wm":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    .line 985
    .local v2, "iters":I
    :cond_0
    const-string v7, "SpaceEncryptionService"

    const-string v8, "waiting for current user to be updated..."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const-wide/16 v8, 0xfa

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 987
    add-int/lit8 v2, v2, 0x1

    .line 988
    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, p1, :cond_1

    const/16 v7, 0x8

    if-lt v2, v7, :cond_0

    .line 989
    :cond_1
    invoke-interface {v6}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1002
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v2    # "iters":I
    .end local v6    # "wm":Landroid/view/IWindowManager;
    :cond_2
    :goto_0
    return v4

    .line 991
    :catch_0
    move-exception v3

    .line 992
    .local v3, "npe":Ljava/lang/NullPointerException;
    const-string v7, "SpaceEncryptionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "npe encountered in switchUser("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/4 v4, 0x0

    .line 1001
    goto :goto_0

    .line 994
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v5

    .line 995
    .local v5, "rex":Landroid/os/RemoteException;
    const-string v7, "SpaceEncryptionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "binder call threw a remote exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/4 v4, 0x0

    .line 1001
    goto :goto_0

    .line 997
    .end local v5    # "rex":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 998
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v7, "SpaceEncryptionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "interrupted while waiting for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1000
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public wipeRemovableUserDir(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 330
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    .line 332
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 333
    const/16 v1, 0x63

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    if-gez p1, :cond_1

    .line 334
    :cond_0
    :try_start_0
    const-string v1, "SpaceEncryptionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wipeRemovableUserDir() called with invalid userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    monitor-exit v2

    .line 343
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-static {p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniWipeRemovableUserDir(I)I

    move-result v0

    .line 338
    .local v0, "rc":I
    if-eqz v0, :cond_2

    .line 339
    const-string v1, "SpaceEncryptionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call to jniWipeRemovableUserDir() failed for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with rc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "rc":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
