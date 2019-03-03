.class public Lcom/intel/settings/aa/ctr/AsyncTasks$TaskGetAAState;
.super Landroid/os/AsyncTask;
.source "AsyncTasks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/settings/aa/ctr/AsyncTasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskGetAAState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mLu:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/intel/settings/aa/ctr/AsyncTasks$TaskGetAAState;->mLu:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/intel/settings/aa/ctr/AsyncTasks$TaskGetAAState;->mLu:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getAAState()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/intel/settings/aa/ctr/AsyncTasks$TaskGetAAState;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/settings/aa/ctr/AsyncTasks$TaskGetAAState;->postExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/intel/settings/aa/ctr/AsyncTasks$TaskGetAAState;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected postExecute(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method
