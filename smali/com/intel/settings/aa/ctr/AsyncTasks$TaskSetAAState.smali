.class public Lcom/intel/settings/aa/ctr/AsyncTasks$TaskSetAAState;
.super Landroid/os/AsyncTask;
.source "AsyncTasks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/settings/aa/ctr/AsyncTasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskSetAAState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mLu:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/intel/settings/aa/ctr/AsyncTasks$TaskSetAAState;->mLu:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/intel/settings/aa/ctr/AsyncTasks$TaskSetAAState;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/intel/settings/aa/ctr/AsyncTasks$TaskSetAAState;->mLu:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setAAState(Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/intel/settings/aa/ctr/AsyncTasks$TaskSetAAState;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/settings/aa/ctr/AsyncTasks$TaskSetAAState;->postExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecute(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
