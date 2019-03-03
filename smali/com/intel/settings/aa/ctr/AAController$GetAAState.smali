.class public Lcom/intel/settings/aa/ctr/AAController$GetAAState;
.super Lcom/intel/settings/aa/ctr/AsyncTasks$TaskGetAAState;
.source "AAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/settings/aa/ctr/AAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GetAAState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/settings/aa/ctr/AAController;


# direct methods
.method public constructor <init>(Lcom/intel/settings/aa/ctr/AAController;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/intel/settings/aa/ctr/AAController$GetAAState;->this$0:Lcom/intel/settings/aa/ctr/AAController;

    .line 149
    invoke-direct {p0, p2}, Lcom/intel/settings/aa/ctr/AsyncTasks$TaskGetAAState;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 150
    return-void
.end method


# virtual methods
.method protected postExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/intel/settings/aa/ctr/AAController$GetAAState;->this$0:Lcom/intel/settings/aa/ctr/AAController;

    invoke-virtual {v0, p1}, Lcom/intel/settings/aa/ctr/AAController;->onGetAAState(Ljava/lang/Boolean;)V

    .line 155
    return-void
.end method
