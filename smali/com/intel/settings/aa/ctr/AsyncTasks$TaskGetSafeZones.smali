.class public Lcom/intel/settings/aa/ctr/AsyncTasks$TaskGetSafeZones;
.super Landroid/os/AsyncTask;
.source "AsyncTasks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/settings/aa/ctr/AsyncTasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskGetSafeZones"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/intel/internal/widget/aa/safezone/SafeZone;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mLu:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/intel/settings/aa/ctr/AsyncTasks$TaskGetSafeZones;->mLu:Lcom/android/internal/widget/LockPatternUtils;

    .line 38
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/intel/settings/aa/ctr/AsyncTasks$TaskGetSafeZones;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/widget/aa/safezone/SafeZone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/intel/settings/aa/ctr/AsyncTasks$TaskGetSafeZones;->mLu:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getSafeZone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intel/internal/widget/aa/utils/JsonHelper;->JsonStrToSZList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/intel/settings/aa/ctr/AsyncTasks$TaskGetSafeZones;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/widget/aa/safezone/SafeZone;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/widget/aa/safezone/SafeZone;>;"
    invoke-virtual {p0, p1}, Lcom/intel/settings/aa/ctr/AsyncTasks$TaskGetSafeZones;->postExecute(Ljava/util/List;)V

    .line 48
    return-void
.end method

.method protected postExecute(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/widget/aa/safezone/SafeZone;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/widget/aa/safezone/SafeZone;>;"
    return-void
.end method
