.class public Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;
.super Lcom/intel/settings/aa/ctr/AAController;
.source "AASwitchPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intel/settings/aa/ctr/AAController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onGetAAState(Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetAASwitched "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " then set checked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;->mUiCallBack:Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;->mUiCallBack:Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;->onButtonUpdate(Z)V

    :cond_0
    return-void
.end method

.method protected onGetSafeZones(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/widget/aa/safezone/SafeZone;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;->doTurnOnAA()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "aa not configured!!"

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "AA Not Configured"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Configure"

    new-instance v3, Lcom/intel/settings/aa/ctr/AASwitchPreferenceController$2;

    invoke-direct {v3, p0}, Lcom/intel/settings/aa/ctr/AASwitchPreferenceController$2;-><init>(Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancel"

    new-instance v3, Lcom/intel/settings/aa/ctr/AASwitchPreferenceController$1;

    invoke-direct {v3, p0}, Lcom/intel/settings/aa/ctr/AASwitchPreferenceController$1;-><init>(Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
