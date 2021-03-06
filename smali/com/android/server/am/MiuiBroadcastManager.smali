.class public Lcom/android/server/am/MiuiBroadcastManager;
.super Lcom/android/server/am/BaseMiuiBroadcastManager;
.source "MiuiBroadcastManager.java"


# static fields
.field private static volatile sInstance:Lcom/android/server/am/MiuiBroadcastManager;

.field static final sInstanceSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/MiuiBroadcastManager;->sInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/BaseMiuiBroadcastManager;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/am/MiuiBroadcastManager;->init(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method

.method static getExtraQueueSize()I
    .locals 1

    sget v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->EXTRA_QUEUE_SIZE:I

    return v0
.end method

.method static getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;
    .locals 2

    sget-object v0, Lcom/android/server/am/MiuiBroadcastManager;->sInstance:Lcom/android/server/am/MiuiBroadcastManager;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/server/am/MiuiBroadcastManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/am/MiuiBroadcastManager;->sInstance:Lcom/android/server/am/MiuiBroadcastManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/MiuiBroadcastManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/MiuiBroadcastManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/MiuiBroadcastManager;->sInstance:Lcom/android/server/am/MiuiBroadcastManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/android/server/am/MiuiBroadcastManager;->sInstance:Lcom/android/server/am/MiuiBroadcastManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static isExtraQueueEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    return v0
.end method


# virtual methods
.method createBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;JZ)Lcom/android/server/am/BroadcastQueue;
    .locals 7

    new-instance v0, Lcom/android/server/am/BroadcastQueue;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;JZ)V

    return-object v0
.end method

.method createBroadcastRecord(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;
    .locals 20

    new-instance v1, Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermission:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v16, v0

    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v17, v0

    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v18, v0

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    move/from16 v19, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v11, p3

    invoke-direct/range {v1 .. v19}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZI)V

    return-object v1
.end method
