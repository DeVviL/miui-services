.class public Lcom/intel/settings/aa/ctr/ZoneAAController;
.super Lcom/intel/settings/aa/ctr/AAController;
.source "ZoneAAController.java"


# instance fields
.field private mSafeZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/widget/aa/safezone/SafeZone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/widget/aa/safezone/SafeZone;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/intel/settings/aa/ctr/AAController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mSafeZones:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public doSetSZ()V
    .locals 4

    const-string v1, "doSetSZ"

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    new-instance v0, Lcom/intel/settings/aa/ctr/AAController$SetSafeZones;

    iget-object v1, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0, v1}, Lcom/intel/settings/aa/ctr/AAController$SetSafeZones;-><init>(Lcom/intel/settings/aa/ctr/AAController;Lcom/android/internal/widget/LockPatternUtils;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mSafeZones:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/intel/settings/aa/ctr/AAController$SetSafeZones;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

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

    iget-object v0, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mUiCallBack:Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mUiCallBack:Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;->onButtonUpdate(Z)V

    iget-object v0, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mUiCallBack:Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;

    invoke-interface {v0}, Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;->onListUpdate()V

    :cond_0
    return-void
.end method

.method protected onGetSafeZones(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/widget/aa/safezone/SafeZone;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mUiCallBack:Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mUiCallBack:Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;

    invoke-interface {v2}, Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;->isButtonChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/intel/settings/aa/ctr/ZoneAAController;->doTurnOnAA()V

    :cond_0
    iget-object v2, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mSafeZones:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/internal/widget/aa/safezone/SafeZone;

    iget-object v2, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mSafeZones:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mUiCallBack:Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;

    invoke-interface {v2}, Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;->onListUpdate()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/intel/settings/aa/ctr/ZoneAAController;->doTurnOffAA()V

    goto :goto_1
.end method
