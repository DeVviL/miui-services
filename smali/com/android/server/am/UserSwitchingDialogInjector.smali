.class public Lcom/android/server/am/UserSwitchingDialogInjector;
.super Ljava/lang/Object;
.source "UserSwitchingDialogInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishSwitchUser(Landroid/app/Dialog;)V
    .locals 0
    .param p0, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 17
    return-void
.end method

.method public static startUserInForeground(Lcom/android/server/am/ActivityManagerService;ILandroid/app/Dialog;)V
    .locals 0
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "userId"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->startUserInForeground(ILandroid/app/Dialog;)Z

    .line 21
    return-void
.end method

.method public static switchUser(Landroid/os/Handler;Lcom/android/server/am/BaseUserSwitchingDialog;)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "dialog"    # Lcom/android/server/am/BaseUserSwitchingDialog;

    .prologue
    .line 12
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 13
    return-void
.end method
