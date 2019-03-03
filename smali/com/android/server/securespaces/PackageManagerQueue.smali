.class public Lcom/android/server/securespaces/PackageManagerQueue;
.super Ljava/lang/Object;
.source "PackageManagerQueue.java"


# static fields
.field private static final DIRECTORY:Ljava/lang/String; = ".Spaces"

.field private static final FILE_NAME:Ljava/lang/String; = "pmops"

.field public static final PMO_ADDEXCLUDEWIPE:I = 0x7

.field public static final PMO_CLEANUSERDATA:I = 0x8

.field public static final PMO_CLEARUSERDATA:I = 0x6

.field public static final PMO_CREATEUSERCONFIG:I = 0x5

.field public static final PMO_CREATEUSERDATA:I = 0x0

.field public static final PMO_DELETECACHEDIRS:I = 0x4

.field public static final PMO_DELETECODECACHEDIRS:I = 0x3

.field public static final PMO_LINKNATIVELIBRARYDIR:I = 0x2

.field public static final PMO_REMOVE:I = 0x1

.field private static final SALT_LENGTH:I = 0x10

.field static final TAG:Ljava/lang/String; = "PackageManagerQueue"

.field private static final VERSION:I = 0x2

.field private static final pmqLock:Ljava/lang/Object;

.field private static sInstance:Lcom/android/server/securespaces/PackageManagerQueue;


# instance fields
.field private nativeLibraryDir:Ljava/lang/String;

.field private opCode:I

.field private packageName:Ljava/lang/String;

.field private seinfo:Ljava/lang/String;

.field private uid:I

.field private user:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/securespaces/PackageManagerQueue;->sInstance:Lcom/android/server/securespaces/PackageManagerQueue;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/securespaces/PackageManagerQueue;->pmqLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 69
    iput v1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uid:I

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/securespaces/PackageManagerQueue;->seinfo:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/securespaces/PackageManagerQueue;->nativeLibraryDir:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private checkUserData(ILcom/android/server/pm/Installer;)V
    .locals 10
    .param p1, "userId"    # I
    .param p2, "installer"    # Lcom/android/server/pm/Installer;

    .prologue
    .line 404
    const-string v7, "PackageManagerQueue"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check user data for second space , user id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/16 v7, -0x2710

    if-ne p1, v7, :cond_1

    .line 406
    const-string v7, "PackageManagerQueue"

    const-string v8, "user id can\'t be -10000"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_0
    return-void

    .line 409
    :cond_1
    const-string v7, "package"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageManagerService;

    .line 410
    .local v5, "pms":Lcom/android/server/pm/PackageManagerService;
    const/4 v7, 0x0

    invoke-virtual {v5, v7, p1}, Lcom/android/server/pm/PackageManagerService;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 411
    .local v1, "applicationInfos":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v1, :cond_0

    .line 412
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    .line 413
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "user"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 414
    .local v6, "userAppDataDir":Ljava/io/File;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 415
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    .local v3, "dataPath":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 417
    const-string v7, "PackageManagerQueue"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create user data : {package:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", seinfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {p2, v7, v8, p1, v9}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;IILjava/lang/String;)I

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/securespaces/PackageManagerQueue;
    .locals 2

    .prologue
    .line 85
    const-class v1, Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/securespaces/PackageManagerQueue;->sInstance:Lcom/android/server/securespaces/PackageManagerQueue;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-direct {v0}, Lcom/android/server/securespaces/PackageManagerQueue;-><init>()V

    sput-object v0, Lcom/android/server/securespaces/PackageManagerQueue;->sInstance:Lcom/android/server/securespaces/PackageManagerQueue;

    .line 87
    :cond_0
    sget-object v0, Lcom/android/server/securespaces/PackageManagerQueue;->sInstance:Lcom/android/server/securespaces/PackageManagerQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public processQueue(Lcom/android/server/pm/Installer;Ljava/lang/Object;I)V
    .locals 23
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "installerLock"    # Ljava/lang/Object;
    .param p3, "userId"    # I

    .prologue
    .line 235
    new-instance v15, Ljava/io/File;

    invoke-static/range {p3 .. p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v18

    const-string v19, ".Spaces"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    .local v15, "userQueueDir":Ljava/io/File;
    new-instance v16, Ljava/io/File;

    const-string v18, "pmops"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 238
    .local v16, "userQueueFile":Ljava/io/File;
    const/4 v10, 0x0

    .line 239
    .local v10, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 240
    .local v5, "bis":Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    .line 242
    .local v7, "dis":Ljava/io/DataInputStream;
    sget-object v19, Lcom/android/server/securespaces/PackageManagerQueue;->pmqLock:Ljava/lang/Object;

    monitor-enter v19

    .line 244
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result v18

    if-nez v18, :cond_1

    .line 386
    if-eqz v7, :cond_0

    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v19

    .line 397
    :goto_1
    return-void

    .line 387
    :catch_0
    move-exception v9

    .line 389
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 392
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_2
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v18

    .line 250
    :cond_1
    :try_start_3
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 251
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v11, "fis":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v6, Ljava/io/BufferedInputStream;

    const/16 v18, 0x800

    move/from16 v0, v18

    invoke-direct {v6, v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 252
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .local v6, "bis":Ljava/io/BufferedInputStream;
    :try_start_5
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 256
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .local v8, "dis":Ljava/io/DataInputStream;
    const/16 v18, 0x10

    :try_start_6
    move/from16 v0, v18

    new-array v12, v0, [B

    .line 257
    .local v12, "headerSalt":[B
    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v13, v0, [B

    .line 260
    .local v13, "recordSalt":[B
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    .line 261
    .local v17, "version":I
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 262
    const-string v18, "PackageManagerQueue"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error processing PackageManager op-file for user "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ". Unrecognized version."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 386
    if-eqz v8, :cond_2

    :try_start_7
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 390
    :cond_2
    :goto_3
    :try_start_8
    monitor-exit v19

    move-object v7, v8

    .end local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 387
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v9

    .line 389
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 392
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v18

    move-object v7, v8

    .end local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 265
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :cond_3
    :try_start_9
    invoke-virtual {v8, v12}, Ljava/io/DataInputStream;->readFully([B)V

    .line 268
    :goto_4
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->available()I

    move-result v18

    if-lez v18, :cond_a

    .line 270
    invoke-virtual {v8, v13}, Ljava/io/DataInputStream;->readFully([B)V

    .line 271
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 273
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 305
    const-string v18, "PackageManagerQueue"

    const-string v20, "Unknown opcode in queueOperation."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_4

    .line 375
    .end local v12    # "headerSalt":[B
    .end local v13    # "recordSalt":[B
    .end local v17    # "version":I
    :catch_2
    move-exception v9

    move-object v7, v8

    .end local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    move-object v10, v11

    .line 376
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .local v9, "e":Ljava/io/FileNotFoundException;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :goto_5
    :try_start_a
    const-string v18, "PackageManagerQueue"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FileNotFoundException caught in writeOp(): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 386
    if-eqz v7, :cond_4

    :try_start_b
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 392
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_6
    :try_start_c
    monitor-exit v19
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 395
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 396
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/securespaces/PackageManagerQueue;->checkUserData(ILcom/android/server/pm/Installer;)V

    goto/16 :goto_1

    .line 275
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "headerSalt":[B
    .restart local v13    # "recordSalt":[B
    .restart local v17    # "version":I
    :pswitch_0
    :try_start_d
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 276
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 277
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->uid:I

    .line 278
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->seinfo:Ljava/lang/String;

    .line 309
    :goto_7
    if-nez p1, :cond_7

    .line 310
    const-string v18, "PackageManagerQueue"

    const-string v20, "Unable to execute queued PackageManager operation.  reference to Installer is null."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 386
    if-eqz v8, :cond_5

    :try_start_e
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 390
    :cond_5
    :goto_8
    :try_start_f
    monitor-exit v19
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object v7, v8

    .end local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 281
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :pswitch_1
    :try_start_10
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 282
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->user:I
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_7

    .line 378
    .end local v12    # "headerSalt":[B
    .end local v13    # "recordSalt":[B
    .end local v17    # "version":I
    :catch_3
    move-exception v9

    move-object v7, v8

    .end local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    move-object v10, v11

    .line 379
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .local v9, "e":Ljava/io/IOException;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :goto_9
    :try_start_11
    const-string v18, "PackageManagerQueue"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "IOException caught in writeOp(): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 386
    if-eqz v7, :cond_4

    :try_start_12
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_6

    .line 387
    :catch_4
    move-exception v9

    .line 389
    :try_start_13
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_6

    .line 285
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "headerSalt":[B
    .restart local v13    # "recordSalt":[B
    .restart local v17    # "version":I
    :pswitch_2
    :try_start_14
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 286
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->nativeLibraryDir:Ljava/lang/String;

    .line 287
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->user:I
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto :goto_7

    .line 381
    .end local v12    # "headerSalt":[B
    .end local v13    # "recordSalt":[B
    .end local v17    # "version":I
    :catch_5
    move-exception v9

    move-object v7, v8

    .end local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    move-object v10, v11

    .line 382
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .local v9, "e":Ljava/lang/Exception;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :goto_a
    :try_start_15
    const-string v18, "PackageManagerQueue"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception caught in writeOp(): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 386
    if-eqz v7, :cond_4

    :try_start_16
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_6

    .line 387
    :catch_6
    move-exception v9

    .line 389
    .local v9, "e":Ljava/io/IOException;
    :try_start_17
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_6

    .line 290
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "headerSalt":[B
    .restart local v13    # "recordSalt":[B
    .restart local v17    # "version":I
    :pswitch_3
    :try_start_18
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 291
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->user:I
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_3
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_5
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto/16 :goto_7

    .line 385
    .end local v12    # "headerSalt":[B
    .end local v13    # "recordSalt":[B
    .end local v17    # "version":I
    :catchall_2
    move-exception v18

    move-object v7, v8

    .end local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    move-object v10, v11

    .line 386
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :goto_b
    if-eqz v7, :cond_6

    :try_start_19
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 390
    :cond_6
    :goto_c
    :try_start_1a
    throw v18
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 294
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "headerSalt":[B
    .restart local v13    # "recordSalt":[B
    .restart local v17    # "version":I
    :pswitch_4
    :try_start_1b
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 295
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    goto/16 :goto_7

    .line 298
    :pswitch_5
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    goto/16 :goto_7

    .line 301
    :pswitch_6
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 302
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->user:I
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_5
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    goto/16 :goto_7

    .line 387
    :catch_7
    move-exception v9

    .line 389
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_1c
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    goto/16 :goto_8

    .line 314
    .end local v9    # "e":Ljava/io/IOException;
    :cond_7
    :try_start_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-eq v0, v1, :cond_8

    .line 315
    const-string v18, "PackageManagerQueue"

    const-string v20, "Invalid user id in PackagerManager queue."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 319
    :cond_8
    const/4 v14, 0x0

    .line 320
    .local v14, "res":I
    monitor-enter p2
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_2
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_5
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 322
    :try_start_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_1

    .line 369
    const-string v18, "PackageManagerQueue"

    const-string v20, "Unknown opcode in queueOperation."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    monitor-exit p2

    goto/16 :goto_4

    .line 372
    :catchall_3
    move-exception v18

    monitor-exit p2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    :try_start_1f
    throw v18
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_2
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_5
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    .line 324
    :pswitch_7
    :try_start_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uid:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Landroid/os/UserHandle;->getUid(II)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->seinfo:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;IILjava/lang/String;)I

    move-result v14

    .line 326
    if-gez v14, :cond_9

    .line 327
    const-string v18, "PackageManagerQueue"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createUserData() returned "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " with user="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " and packageName="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_9
    :goto_d
    monitor-exit p2

    goto/16 :goto_4

    .line 332
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Installer;->remove(Ljava/lang/String;I)I

    move-result v14

    .line 333
    if-gez v14, :cond_9

    .line 334
    const-string v18, "PackageManagerQueue"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "remove() returned "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " with user="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " and packageName="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 338
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    .line 340
    if-gez v14, :cond_9

    .line 341
    const-string v18, "PackageManagerQueue"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "linkNativeLibraryDirectory() returned "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " with user="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " and packageName="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 345
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Installer;->deleteCodeCacheFiles(Ljava/lang/String;I)I

    move-result v14

    .line 346
    if-gez v14, :cond_9

    .line 347
    const-string v18, "PackageManagerQueue"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "deleteCodeCacheFiles() returned "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " with user="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " and packageName="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 351
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Installer;->deleteCacheFiles(Ljava/lang/String;I)I

    move-result v14

    .line 352
    if-gez v14, :cond_9

    .line 353
    const-string v18, "PackageManagerQueue"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "deleteCacheFiles() returned "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " with user="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " and packageName="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 357
    :pswitch_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer;->createUserConfig(I)I

    move-result v14

    .line 358
    if-gez v14, :cond_9

    .line 359
    const-string v18, "PackageManagerQueue"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createUserConfig() returned "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " with user="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 363
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Installer;->clearUserData(Ljava/lang/String;I)I

    move-result v14

    .line 364
    if-gez v14, :cond_9

    .line 365
    const-string v18, "PackageManagerQueue"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "clearUserData() returned "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " with user="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " and packageName="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    goto/16 :goto_d

    .line 386
    .end local v14    # "res":I
    :cond_a
    if-eqz v8, :cond_b

    :try_start_21
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_8
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    :cond_b
    move-object v7, v8

    .end local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    move-object v10, v11

    .line 390
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 387
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v9

    .line 389
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_22
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    move-object v7, v8

    .end local v8    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    move-object v10, v11

    .line 391
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 387
    .end local v12    # "headerSalt":[B
    .end local v13    # "recordSalt":[B
    .end local v17    # "version":I
    .local v9, "e":Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v9

    .line 389
    .local v9, "e":Ljava/io/IOException;
    :try_start_23
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 387
    .end local v9    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v9

    .line 389
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto/16 :goto_c

    .line 385
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v18

    goto/16 :goto_b

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catchall_5
    move-exception v18

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_b

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catchall_6
    move-exception v18

    move-object v5, v6

    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_b

    .line 381
    :catch_b
    move-exception v9

    goto/16 :goto_a

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catch_c
    move-exception v9

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catch_d
    move-exception v9

    move-object v5, v6

    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_a

    .line 378
    :catch_e
    move-exception v9

    goto/16 :goto_9

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catch_f
    move-exception v9

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catch_10
    move-exception v9

    move-object v5, v6

    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 375
    :catch_11
    move-exception v9

    goto/16 :goto_5

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catch_12
    move-exception v9

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catch_13
    move-exception v9

    move-object v5, v6

    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 322
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public setOp(II)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "user"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 112
    iput p2, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 113
    return-void
.end method

.method public setOp(ILjava/lang/String;I)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "pName"    # Ljava/lang/String;
    .param p3, "user"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 106
    iput-object p2, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 107
    iput p3, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 108
    return-void
.end method

.method public setOp(ILjava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "pName"    # Ljava/lang/String;
    .param p3, "user"    # I
    .param p4, "uid"    # I
    .param p5, "seinfo"    # Ljava/lang/String;

    .prologue
    .line 93
    iput p1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 94
    iput-object p2, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 95
    iput p3, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 96
    iput p4, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uid:I

    .line 97
    iput-object p5, p0, Lcom/android/server/securespaces/PackageManagerQueue;->seinfo:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setOp(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "pName"    # Ljava/lang/String;
    .param p3, "nativeLibDir"    # Ljava/lang/String;
    .param p4, "user"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 121
    iput-object p2, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/android/server/securespaces/PackageManagerQueue;->nativeLibraryDir:Ljava/lang/String;

    .line 123
    iput p4, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 124
    return-void
.end method

.method public writeOp()V
    .locals 15

    .prologue
    .line 131
    new-instance v9, Ljava/io/File;

    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-static {v11}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v11

    const-string v12, ".Spaces"

    invoke-direct {v9, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    .local v9, "userQueueDir":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    const-string v11, "pmops"

    invoke-direct {v10, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    .local v10, "userQueueFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 135
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 136
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 138
    .local v2, "dos":Ljava/io/DataOutputStream;
    const/16 v11, 0x10

    new-array v7, v11, [B

    .line 139
    .local v7, "salt":[B
    new-instance v8, Ljava/security/SecureRandom;

    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    .line 141
    .local v8, "sr":Ljava/security/SecureRandom;
    sget-object v12, Lcom/android/server/securespaces/PackageManagerQueue;->pmqLock:Ljava/lang/Object;

    monitor-enter v12

    .line 143
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 146
    const-string v11, "PackageManagerQueue"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PackageManger op-file does not exist for user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".  Creating it now."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 149
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v11, 0x800

    invoke-direct {v1, v6, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 151
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 153
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .local v3, "dos":Ljava/io/DataOutputStream;
    :try_start_3
    invoke-virtual {v8, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 156
    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 157
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 168
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_4
    const-string v11, "PackageManagerQueue"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Appending record to PackageManager op-file for user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v8, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 173
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 174
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 176
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    packed-switch v11, :pswitch_data_0

    .line 208
    const-string v11, "PackageManagerQueue"

    const-string v13, "Unknown opcode in queueOperation."

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 223
    :goto_1
    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 229
    :cond_0
    :goto_2
    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 230
    return-void

    .line 162
    :cond_1
    :try_start_7
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v6, v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 163
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :try_start_8
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v11, 0x800

    invoke-direct {v1, v6, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 164
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :try_start_9
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 178
    :pswitch_0
    :try_start_a
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 179
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 180
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uid:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 181
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->seinfo:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    .line 212
    :catch_0
    move-exception v4

    .line 213
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_b
    const-string v11, "PackageManagerQueue"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileNotFoundException caught in writeOp(): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 223
    if-eqz v2, :cond_0

    :try_start_c
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    .line 224
    :catch_1
    move-exception v4

    .line 226
    .local v4, "e":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 229
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw v11

    .line 184
    :pswitch_1
    :try_start_e
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 185
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_1

    .line 215
    :catch_2
    move-exception v4

    .line 216
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_f
    const-string v11, "PackageManagerQueue"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException caught in writeOp(): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 223
    if-eqz v2, :cond_0

    :try_start_10
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2

    .line 224
    :catch_3
    move-exception v4

    .line 226
    :try_start_11
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_2

    .line 188
    .end local v4    # "e":Ljava/io/IOException;
    :pswitch_2
    :try_start_12
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 189
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 190
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_1

    .line 218
    :catch_4
    move-exception v4

    .line 219
    .local v4, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_13
    const-string v11, "PackageManagerQueue"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception caught in writeOp(): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 223
    if-eqz v2, :cond_0

    :try_start_14
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_2

    .line 224
    :catch_5
    move-exception v4

    .line 226
    .local v4, "e":Ljava/io/IOException;
    :try_start_15
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_2

    .line 193
    .end local v4    # "e":Ljava/io/IOException;
    :pswitch_3
    :try_start_16
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 194
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto/16 :goto_1

    .line 222
    :catchall_1
    move-exception v11

    .line 223
    :goto_6
    if-eqz v2, :cond_2

    :try_start_17
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 227
    :cond_2
    :goto_7
    :try_start_18
    throw v11
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 197
    :pswitch_4
    :try_start_19
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 198
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_1

    .line 201
    :pswitch_5
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_1

    .line 204
    :pswitch_6
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 205
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_2
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto/16 :goto_1

    .line 224
    :catch_6
    move-exception v4

    .line 226
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 224
    .end local v4    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v4

    .line 226
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_7

    .line 222
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v11

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v11

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v11

    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 218
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v4

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v4

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v4

    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 215
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v4

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_c
    move-exception v4

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_d
    move-exception v4

    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 212
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_e
    move-exception v4

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_f
    move-exception v4

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_10
    move-exception v4

    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
