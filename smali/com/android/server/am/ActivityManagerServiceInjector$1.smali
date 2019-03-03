.class final Lcom/android/server/am/ActivityManagerServiceInjector$1;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;->showSwitchingDialog(Lcom/android/server/am/ActivityManagerService;ILandroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ams:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$mTargetUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$mTargetUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "second_user_id"

    const/16 v3, -0x2710

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$mTargetUserId:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    if-ne v1, v0, :cond_2

    iget v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$mTargetUserId:I

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Lcom/android/server/am/SecondSpaceSwitchingDialog;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$mTargetUserId:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/am/SecondSpaceSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;I)V

    invoke-virtual {v1}, Lcom/android/server/am/SecondSpaceSwitchingDialog;->show()V

    :goto_0
    return-void

    :cond_2
    new-instance v1, Lcom/android/server/am/MiuiUserSwitchingDialog;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$mTargetUserId:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/am/MiuiUserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;I)V

    invoke-virtual {v1}, Lcom/android/server/am/MiuiUserSwitchingDialog;->show()V

    goto :goto_0
.end method
