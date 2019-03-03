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

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/securespaces/PackageManagerQueue;->sInstance:Lcom/android/server/securespaces/PackageManagerQueue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/securespaces/PackageManagerQueue;->pmqLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    iput v1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uid:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/securespaces/PackageManagerQueue;->seinfo:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/securespaces/PackageManagerQueue;->nativeLibraryDir:Ljava/lang/String;

    return-void
.end method

.method private checkUserData(ILcom/android/server/pm/Installer;)V
    .locals 10

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

    const/16 v7, -0x2710

    if-ne p1, v7, :cond_1

    const-string v7, "PackageManagerQueue"

    const-string v8, "user id can\'t be -10000"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string v7, "package"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageManagerService;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, p1}, Lcom/android/server/pm/PackageManagerService;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "user"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

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

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

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

    const-class v1, Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/securespaces/PackageManagerQueue;->sInstance:Lcom/android/server/securespaces/PackageManagerQueue;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-direct {v0}, Lcom/android/server/securespaces/PackageManagerQueue;-><init>()V

    sput-object v0, Lcom/android/server/securespaces/PackageManagerQueue;->sInstance:Lcom/android/server/securespaces/PackageManagerQueue;

    :cond_0
    sget-object v0, Lcom/android/server/securespaces/PackageManagerQueue;->sInstance:Lcom/android/server/securespaces/PackageManagerQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public processQueue(Lcom/android/server/pm/Installer;Ljava/lang/Object;I)V
    .locals 23

    new-instance v15, Ljava/io/File;

    invoke-static/range {p3 .. p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v18

    const-string v19, ".Spaces"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v16, Ljava/io/File;

    const-string v18, "pmops"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    sget-object v19, Lcom/android/server/securespaces/PackageManagerQueue;->pmqLock:Ljava/lang/Object;

    monitor-enter v19

    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result v18

    if-nez v18, :cond_1

    if-eqz v7, :cond_0

    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v19

    :goto_1
    return-void

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v18

    :goto_2
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v18

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

    :try_start_5
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    const/16 v18, 0x10

    :try_start_6
    move/from16 v0, v18

    new-array v12, v0, [B

    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v13, v0, [B

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

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

    if-eqz v8, :cond_2

    :try_start_7
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_2
    :goto_3
    :try_start_8
    monitor-exit v19

    move-object v7, v8

    move-object v5, v6

    move-object v10, v11

    goto :goto_1

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v18

    move-object v7, v8

    move-object v5, v6

    move-object v10, v11

    goto :goto_2

    :cond_3
    :try_start_9
    invoke-virtual {v8, v12}, Ljava/io/DataInputStream;->readFully([B)V

    :goto_4
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->available()I

    move-result v18

    if-lez v18, :cond_a

    invoke-virtual {v8, v13}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

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

    :catch_2
    move-exception v9

    move-object v7, v8

    move-object v5, v6

    move-object v10, v11

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

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v7, :cond_4

    :try_start_b
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_4
    :goto_6
    :try_start_c
    monitor-exit v19
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/securespaces/PackageManagerQueue;->checkUserData(ILcom/android/server/pm/Installer;)V

    goto/16 :goto_1

    :pswitch_0
    :try_start_d
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->uid:I

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->seinfo:Ljava/lang/String;

    :goto_7
    if-nez p1, :cond_7

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

    if-eqz v8, :cond_5

    :try_start_e
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_5
    :goto_8
    :try_start_f
    monitor-exit v19
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object v7, v8

    move-object v5, v6

    move-object v10, v11

    goto/16 :goto_1

    :pswitch_1
    :try_start_10
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

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

    :catch_3
    move-exception v9

    move-object v7, v8

    move-object v5, v6

    move-object v10, v11

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

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    if-eqz v7, :cond_4

    :try_start_12
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_6

    :catch_4
    move-exception v9

    :try_start_13
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_6

    :pswitch_2
    :try_start_14
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->nativeLibraryDir:Ljava/lang/String;

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

    :catch_5
    move-exception v9

    move-object v7, v8

    move-object v5, v6

    move-object v10, v11

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

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    if-eqz v7, :cond_4

    :try_start_16
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_6

    :catch_6
    move-exception v9

    :try_start_17
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_6

    :pswitch_3
    :try_start_18
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

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

    :catchall_2
    move-exception v18

    move-object v7, v8

    move-object v5, v6

    move-object v10, v11

    :goto_b
    if-eqz v7, :cond_6

    :try_start_19
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :cond_6
    :goto_c
    :try_start_1a
    throw v18
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :pswitch_4
    :try_start_1b
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    goto/16 :goto_7

    :pswitch_5
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    goto/16 :goto_7

    :pswitch_6
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

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

    :catch_7
    move-exception v9

    :try_start_1c
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    goto/16 :goto_8

    :cond_7
    :try_start_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-eq v0, v1, :cond_8

    const-string v18, "PackageManagerQueue"

    const-string v20, "Invalid user id in PackagerManager queue."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_8
    const/4 v14, 0x0

    monitor-enter p2
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_2
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_5
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    :try_start_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_1

    const-string v18, "PackageManagerQueue"

    const-string v20, "Unknown opcode in queueOperation."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p2

    goto/16 :goto_4

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

    if-gez v14, :cond_9

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

    :cond_9
    :goto_d
    monitor-exit p2

    goto/16 :goto_4

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

    if-gez v14, :cond_9

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

    if-gez v14, :cond_9

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

    if-gez v14, :cond_9

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

    if-gez v14, :cond_9

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

    :pswitch_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer;->createUserConfig(I)I

    move-result v14

    if-gez v14, :cond_9

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

    if-gez v14, :cond_9

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

    :cond_a
    if-eqz v8, :cond_b

    :try_start_21
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_8
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    :cond_b
    move-object v7, v8

    move-object v5, v6

    move-object v10, v11

    goto/16 :goto_6

    :catch_8
    move-exception v9

    :try_start_22
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    move-object v7, v8

    move-object v5, v6

    move-object v10, v11

    goto/16 :goto_6

    :catch_9
    move-exception v9

    :try_start_23
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    :catch_a
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto/16 :goto_c

    :catchall_4
    move-exception v18

    goto/16 :goto_b

    :catchall_5
    move-exception v18

    move-object v10, v11

    goto/16 :goto_b

    :catchall_6
    move-exception v18

    move-object v5, v6

    move-object v10, v11

    goto/16 :goto_b

    :catch_b
    move-exception v9

    goto/16 :goto_a

    :catch_c
    move-exception v9

    move-object v10, v11

    goto/16 :goto_a

    :catch_d
    move-exception v9

    move-object v5, v6

    move-object v10, v11

    goto/16 :goto_a

    :catch_e
    move-exception v9

    goto/16 :goto_9

    :catch_f
    move-exception v9

    move-object v10, v11

    goto/16 :goto_9

    :catch_10
    move-exception v9

    move-object v5, v6

    move-object v10, v11

    goto/16 :goto_9

    :catch_11
    move-exception v9

    goto/16 :goto_5

    :catch_12
    move-exception v9

    move-object v10, v11

    goto/16 :goto_5

    :catch_13
    move-exception v9

    move-object v5, v6

    move-object v10, v11

    goto/16 :goto_5

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

    iput p1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    iput p2, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    return-void
.end method

.method public setOp(ILjava/lang/String;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    iput-object p2, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    return-void
.end method

.method public setOp(ILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    iput-object p2, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    iput p4, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uid:I

    iput-object p5, p0, Lcom/android/server/securespaces/PackageManagerQueue;->seinfo:Ljava/lang/String;

    return-void
.end method

.method public setOp(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    iput-object p2, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/securespaces/PackageManagerQueue;->nativeLibraryDir:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    return-void
.end method

.method public writeOp()V
    .locals 15

    new-instance v9, Ljava/io/File;

    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-static {v11}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v11

    const-string v12, ".Spaces"

    invoke-direct {v9, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    const-string v11, "pmops"

    invoke-direct {v10, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v11, 0x10

    new-array v7, v11, [B

    new-instance v8, Ljava/security/SecureRandom;

    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    sget-object v12, Lcom/android/server/securespaces/PackageManagerQueue;->pmqLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

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

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v11, 0x800

    invoke-direct {v1, v6, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v8, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object v2, v3

    move-object v0, v1

    move-object v5, v6

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

    invoke-virtual {v8, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->write([B)V

    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    packed-switch v11, :pswitch_data_0

    const-string v11, "PackageManagerQueue"

    const-string v13, "Unknown opcode in queueOperation."

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_0
    :goto_2
    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

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

    :try_start_8
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v11, 0x800

    invoke-direct {v1, v6, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object v2, v3

    move-object v0, v1

    move-object v5, v6

    goto :goto_0

    :pswitch_0
    :try_start_a
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uid:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->seinfo:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v4

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

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v2, :cond_0

    :try_start_c
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_d
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw v11

    :pswitch_1
    :try_start_e
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v4

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

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v2, :cond_0

    :try_start_10
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2

    :catch_3
    move-exception v4

    :try_start_11
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_2

    :pswitch_2
    :try_start_12
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_1

    :catch_4
    move-exception v4

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

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-eqz v2, :cond_0

    :try_start_14
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_2

    :catch_5
    move-exception v4

    :try_start_15
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_2

    :pswitch_3
    :try_start_16
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v11

    :goto_6
    if-eqz v2, :cond_2

    :try_start_17
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :cond_2
    :goto_7
    :try_start_18
    throw v11
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :pswitch_4
    :try_start_19
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_5
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_2
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto/16 :goto_1

    :catch_6
    move-exception v4

    :try_start_1a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_7
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_7

    :catchall_2
    move-exception v11

    move-object v5, v6

    goto :goto_6

    :catchall_3
    move-exception v11

    move-object v0, v1

    move-object v5, v6

    goto :goto_6

    :catchall_4
    move-exception v11

    move-object v2, v3

    move-object v0, v1

    move-object v5, v6

    goto :goto_6

    :catch_8
    move-exception v4

    move-object v5, v6

    goto :goto_5

    :catch_9
    move-exception v4

    move-object v0, v1

    move-object v5, v6

    goto :goto_5

    :catch_a
    move-exception v4

    move-object v2, v3

    move-object v0, v1

    move-object v5, v6

    goto :goto_5

    :catch_b
    move-exception v4

    move-object v5, v6

    goto/16 :goto_4

    :catch_c
    move-exception v4

    move-object v0, v1

    move-object v5, v6

    goto/16 :goto_4

    :catch_d
    move-exception v4

    move-object v2, v3

    move-object v0, v1

    move-object v5, v6

    goto/16 :goto_4

    :catch_e
    move-exception v4

    move-object v5, v6

    goto/16 :goto_3

    :catch_f
    move-exception v4

    move-object v0, v1

    move-object v5, v6

    goto/16 :goto_3

    :catch_10
    move-exception v4

    move-object v2, v3

    move-object v0, v1

    move-object v5, v6

    goto/16 :goto_3

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
