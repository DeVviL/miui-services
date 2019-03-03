.class public Lcom/android/server/am/JobServiceContextInjector;
.super Ljava/lang/Object;
.source "JobServiceContextInjector.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "JobServiceContext"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindService(Lcom/android/server/job/JobServiceContext;Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5

    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v2

    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-static {p1, p2, v2, v3}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    new-instance v3, Landroid/os/UserHandle;

    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, p2, p0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    invoke-static {v2, v0}, Lcom/android/server/am/JobServiceContextInjectorCompat;->cancelJob(II)V

    const-string v2, "JobServiceContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIUILOG- Reject Start Job, cancelJob uid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " jobId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
