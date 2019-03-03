.class public abstract Lcom/android/server/am/MiuiActivityHelper;
.super Ljava/lang/Object;
.source "MiuiActivityHelper.java"


# static fields
.field static sAms:Lcom/android/server/am/ActivityManagerService;

.field private static sTotalMem:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/MiuiActivityHelper;->sTotalMem:J

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MiuiActivityHelper;->sAms:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "miui_security"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private static getCachePss()J
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    sget-object v6, Lcom/android/server/am/MiuiActivityHelper;->sAms:Lcom/android/server/am/ActivityManagerService;

    if-nez v6, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    instance-of v6, v0, Lcom/android/server/am/ActivityManagerService;

    if-eqz v6, :cond_0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    sput-object v0, Lcom/android/server/am/MiuiActivityHelper;->sAms:Lcom/android/server/am/ActivityManagerService;

    :cond_0
    const-wide/16 v2, 0x0

    sget-object v6, Lcom/android/server/am/MiuiActivityHelper;->sAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/am/MiuiActivityHelper;->sAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v8, v7, v7, v8}, Lcom/android/server/am/ActivityManagerService;->collectProcesses(Ljava/io/PrintWriter;IZ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v7, 0x9

    if-lt v6, v7, :cond_1

    iget-wide v6, v4, Lcom/android/server/am/ProcessRecord;->lastPss:J

    add-long/2addr v2, v6

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method public static getFreeMemory()J
    .locals 8

    invoke-static {}, Lcom/android/server/am/MiuiActivityHelper;->getNativeFreeMemory()J

    move-result-wide v2

    invoke-static {}, Lcom/android/server/am/MiuiActivityHelper;->getNativeFreeMemory()J

    move-result-wide v4

    invoke-static {}, Lcom/android/server/am/MiuiActivityHelper;->getCachePss()J

    move-result-wide v6

    add-long v0, v4, v6

    sget-wide v4, Lcom/android/server/am/MiuiActivityHelper;->sTotalMem:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method private static native getNativeFreeMemory()J
.end method
