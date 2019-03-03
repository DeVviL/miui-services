.class public Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;
.super Lcom/intel/settings/aa/ctr/AAController;
.source "AASwitchPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/intel/settings/aa/ctr/AAController;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onGetAAState(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 39
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

    .line 40
    iget-object v0, p0, Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;->mUiCallBack:Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;->mUiCallBack:Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;->onButtonUpdate(Z)V

    .line 43
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

    .prologue
    .line 47
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/widget/aa/safezone/SafeZone;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;->doTurnOnAA()V

    .line 71
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v1, "aa not configured!!"

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    .line 52
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
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

    .line 68
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 69
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
