.class final Lcom/intel/settings/aa/ctr/AAController$ConfirmationResultReceiver;
.super Landroid/os/ResultReceiver;
.source "AAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/settings/aa/ctr/AAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfirmationResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/settings/aa/ctr/AAController;


# direct methods
.method public constructor <init>(Lcom/intel/settings/aa/ctr/AAController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/intel/settings/aa/ctr/AAController$ConfirmationResultReceiver;->this$0:Lcom/intel/settings/aa/ctr/AAController;

    .line 211
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 212
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 216
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    .line 218
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/intel/settings/aa/ctr/AAController$ConfirmationResultReceiver;->this$0:Lcom/intel/settings/aa/ctr/AAController;

    invoke-virtual {v0}, Lcom/intel/settings/aa/ctr/AAController;->doGetSZ()V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/intel/settings/aa/ctr/AAController$ConfirmationResultReceiver;->this$0:Lcom/intel/settings/aa/ctr/AAController;

    invoke-virtual {v0}, Lcom/intel/settings/aa/ctr/AAController;->doTurnOffAA()V

    goto :goto_0
.end method
