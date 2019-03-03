.class public Lcom/android/server/pm/PackageManagerService$UsageInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UsageInfo"
.end annotation


# instance fields
.field public dexOptFlag:Ljava/lang/String;

.field public dexOptTime:J

.field public lastPackageUsageTimeInMills:J

.field public packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 4
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dexOptFlag"    # Ljava/lang/String;
    .param p4, "timeInMillis"    # J
    .param p6, "dexOptTime"    # J

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$UsageInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$UsageInfo;->packageName:Ljava/lang/String;

    .line 505
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$UsageInfo;->dexOptFlag:Ljava/lang/String;

    .line 506
    iput-wide p4, p0, Lcom/android/server/pm/PackageManagerService$UsageInfo;->lastPackageUsageTimeInMills:J

    .line 507
    iput-wide p6, p0, Lcom/android/server/pm/PackageManagerService$UsageInfo;->dexOptTime:J

    .line 508
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SELECTIVE:Z

    if-eqz v0, :cond_0

    .line 509
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsageInfo create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lrt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ucount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    return-void
.end method


# virtual methods
.method public updateUsage(Landroid/content/pm/PackageParser$Package;)V
    .locals 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 516
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$UsageInfo;->packageName:Ljava/lang/String;

    .line 517
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mDexOptFlag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$UsageInfo;->dexOptFlag:Ljava/lang/String;

    .line 518
    iget-wide v0, p1, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageManagerService$UsageInfo;->lastPackageUsageTimeInMills:J

    .line 519
    iget-wide v0, p1, Landroid/content/pm/PackageParser$Package;->mDexOptTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageManagerService$UsageInfo;->dexOptTime:J

    .line 520
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SELECTIVE:Z

    if-eqz v0, :cond_0

    .line 521
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsageInfo updateInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$UsageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$UsageInfo;->dexOptFlag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lrt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/pm/PackageManagerService$UsageInfo;->lastPackageUsageTimeInMills:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dexOptday: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/pm/PackageManagerService$UsageInfo;->dexOptTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    return-void
.end method
