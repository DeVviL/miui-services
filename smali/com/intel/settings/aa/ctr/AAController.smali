.class public abstract Lcom/intel/settings/aa/ctr/AAController;
.super Ljava/lang/Object;
.source "AAController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/settings/aa/ctr/AAController$ConfirmationResultReceiver;,
        Lcom/intel/settings/aa/ctr/AAController$GetSafeZones;,
        Lcom/intel/settings/aa/ctr/AAController$SetSafeZones;,
        Lcom/intel/settings/aa/ctr/AAController$GetAAState;,
        Lcom/intel/settings/aa/ctr/AAController$SetAAState;
    }
.end annotation


# static fields
.field public static final FOR_EDIT_ONLY:Ljava/lang/String; = "for-edit-only"

.field public static final FOR_PW_CONFIRMATION:Ljava/lang/String; = "just-for-pw-confirmation"

.field public static final FOR_PW_CONFIRMATION_AND_EDIT:Ljava/lang/String; = "for-pw-confirmation-and-edit"

.field public static final LAUNCH_FOR_AUTHENTICATION:I = 0x0

.field public static final LAUNCH_FOR_AUTHENTICATION_AND_EDIT:I = 0x2

.field public static final LAUNCH_NONEED_AUTHENTICATION:I = 0x1


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mUiCallBack:Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/intel/settings/aa/ctr/AAController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 53
    iput-object v0, p0, Lcom/intel/settings/aa/ctr/AAController;->mUiCallBack:Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;

    .line 59
    iput-object p1, p0, Lcom/intel/settings/aa/ctr/AAController;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/intel/settings/aa/ctr/AAController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intel/settings/aa/ctr/AAController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 61
    return-void
.end method


# virtual methods
.method public CallbackRegister(Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/intel/settings/aa/ctr/AAController;->mUiCallBack:Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;

    .line 65
    return-void
.end method

.method public CallbackUnRegister()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/settings/aa/ctr/AAController;->mUiCallBack:Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;

    .line 69
    return-void
.end method

.method public doGetSZ()V
    .locals 2

    .prologue
    .line 75
    const-string v1, "doGetSZ"

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    .line 76
    new-instance v0, Lcom/intel/settings/aa/ctr/AAController$GetSafeZones;

    iget-object v1, p0, Lcom/intel/settings/aa/ctr/AAController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0, v1}, Lcom/intel/settings/aa/ctr/AAController$GetSafeZones;-><init>(Lcom/intel/settings/aa/ctr/AAController;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 77
    .local v0, "getSZ":Lcom/intel/settings/aa/ctr/AAController$GetSafeZones;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/intel/settings/aa/ctr/AAController$GetSafeZones;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    return-void
.end method

.method public doSetSZ()V
    .locals 1

    .prologue
    .line 131
    const-string v0, "doSetSZ"

    invoke-static {v0}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public doTurnOffAA()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    const-string v1, "doTurnOffAA"

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    .line 108
    new-instance v0, Lcom/intel/settings/aa/ctr/AAController$SetAAState;

    iget-object v1, p0, Lcom/intel/settings/aa/ctr/AAController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0, v1}, Lcom/intel/settings/aa/ctr/AAController$SetAAState;-><init>(Lcom/intel/settings/aa/ctr/AAController;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 109
    .local v0, "switchAAOff":Lcom/intel/settings/aa/ctr/AAController$SetAAState;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/intel/settings/aa/ctr/AAController$SetAAState;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    return-void
.end method

.method public doTurnOnAA()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 81
    const-string v2, "doTurnOnAA"

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "security":Z
    iget-object v2, p0, Lcom/intel/settings/aa/ctr/AAController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 95
    :goto_0
    if-nez v0, :cond_0

    .line 96
    iget-object v2, p0, Lcom/intel/settings/aa/ctr/AAController;->mContext:Landroid/content/Context;

    const-string v3, "Please enhance your unlock mode"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 99
    invoke-virtual {p0}, Lcom/intel/settings/aa/ctr/AAController;->doTurnOffAA()V

    .line 104
    :goto_1
    return-void

    .line 86
    :sswitch_0
    const/4 v0, 0x1

    .line 87
    goto :goto_0

    .line 92
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    new-instance v1, Lcom/intel/settings/aa/ctr/AAController$SetAAState;

    iget-object v2, p0, Lcom/intel/settings/aa/ctr/AAController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0, v2}, Lcom/intel/settings/aa/ctr/AAController$SetAAState;-><init>(Lcom/intel/settings/aa/ctr/AAController;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 103
    .local v1, "switchAAOn":Lcom/intel/settings/aa/ctr/AAController$SetAAState;
    new-array v2, v3, [Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/intel/settings/aa/ctr/AAController$SetAAState;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method public doUpdateUI()V
    .locals 2

    .prologue
    .line 113
    const-string v1, "doUpdateUI"

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    .line 114
    new-instance v0, Lcom/intel/settings/aa/ctr/AAController$GetAAState;

    iget-object v1, p0, Lcom/intel/settings/aa/ctr/AAController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0, v1}, Lcom/intel/settings/aa/ctr/AAController$GetAAState;-><init>(Lcom/intel/settings/aa/ctr/AAController;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 115
    .local v0, "getAASwitched":Lcom/intel/settings/aa/ctr/AAController$GetAAState;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/intel/settings/aa/ctr/AAController$GetAAState;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    return-void
.end method

.method public launchAdaptiveAuthActivity(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 186
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.intel.aa"

    const-string v3, "com.intel.aa.view.ZoneActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/intel/settings/aa/ctr/AAController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 203
    return-void

    .line 190
    :pswitch_0
    const-string v1, "just-for-pw-confirmation"

    new-instance v2, Lcom/intel/settings/aa/ctr/AAController$ConfirmationResultReceiver;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/intel/settings/aa/ctr/AAController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/intel/settings/aa/ctr/AAController$ConfirmationResultReceiver;-><init>(Lcom/intel/settings/aa/ctr/AAController;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 194
    :pswitch_1
    const-string v1, "for-edit-only"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 197
    :pswitch_2
    const-string v1, "for-pw-confirmation-and-edit"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract onGetAAState(Ljava/lang/Boolean;)V
.end method

.method protected abstract onGetSafeZones(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/widget/aa/safezone/SafeZone;",
            ">;)V"
        }
    .end annotation
.end method

.method protected onSetAAState(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 119
    const-string v0, "onSwitchAA "

    invoke-static {v0}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0}, Lcom/intel/settings/aa/ctr/AAController;->doUpdateUI()V

    .line 121
    return-void
.end method

.method protected onSetSafeZones(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/intel/settings/aa/ctr/AAController;->doUpdateUI()V

    .line 128
    return-void
.end method
