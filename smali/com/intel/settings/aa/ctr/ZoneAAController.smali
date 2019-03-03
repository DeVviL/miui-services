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
    .param p1, "context"    # Landroid/content/Context;
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

    .prologue
    .line 33
    .local p2, "sz":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/widget/aa/safezone/SafeZone;>;"
    invoke-direct {p0, p1}, Lcom/intel/settings/aa/ctr/AAController;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mSafeZones:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public doSetSZ()V
    .locals 4

    .prologue
    .line 67
    const-string v1, "doSetSZ"

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    .line 68
    new-instance v0, Lcom/intel/settings/aa/ctr/AAController$SetSafeZones;

    iget-object v1, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0, v1}, Lcom/intel/settings/aa/ctr/AAController$SetSafeZones;-><init>(Lcom/intel/settings/aa/ctr/AAController;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 69
    .local v0, "setSZ":Lcom/intel/settings/aa/ctr/AAController$SetSafeZones;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mSafeZones:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/intel/settings/aa/ctr/AAController$SetSafeZones;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    return-void
.end method

.method protected onGetAAState(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 58
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

    .line 59
    iget-object v0, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mUiCallBack:Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mUiCallBack:Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;->onButtonUpdate(Z)V

    .line 61
    iget-object v0, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mUiCallBack:Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;

    invoke-interface {v0}, Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;->onListUpdate()V

    .line 63
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

    .prologue
    .line 39
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/widget/aa/safezone/SafeZone;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 40
    iget-object v2, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mUiCallBack:Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;

    if-eqz v2, :cond_2

    .line 41
    iget-object v2, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mUiCallBack:Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;

    invoke-interface {v2}, Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;->isButtonChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/intel/settings/aa/ctr/ZoneAAController;->doTurnOnAA()V

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mSafeZones:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/internal/widget/aa/safezone/SafeZone;

    .line 46
    .local v1, "sz":Lcom/intel/internal/widget/aa/safezone/SafeZone;
    iget-object v2, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mSafeZones:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    .end local v1    # "sz":Lcom/intel/internal/widget/aa/safezone/SafeZone;
    :cond_1
    iget-object v2, p0, Lcom/intel/settings/aa/ctr/ZoneAAController;->mUiCallBack:Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;

    invoke-interface {v2}, Lcom/intel/settings/aa/ctr/IUiUpdateCallBack;->onListUpdate()V

    .line 53
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 51
    :cond_3
    invoke-virtual {p0}, Lcom/intel/settings/aa/ctr/ZoneAAController;->doTurnOffAA()V

    goto :goto_1
.end method
