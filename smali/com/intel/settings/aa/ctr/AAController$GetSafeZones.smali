.class public Lcom/intel/settings/aa/ctr/AAController$GetSafeZones;
.super Lcom/intel/settings/aa/ctr/AsyncTasks$TaskGetSafeZones;
.source "AAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/settings/aa/ctr/AAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GetSafeZones"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/settings/aa/ctr/AAController;


# direct methods
.method public constructor <init>(Lcom/intel/settings/aa/ctr/AAController;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/intel/settings/aa/ctr/AAController$GetSafeZones;->this$0:Lcom/intel/settings/aa/ctr/AAController;

    .line 173
    invoke-direct {p0, p2}, Lcom/intel/settings/aa/ctr/AsyncTasks$TaskGetSafeZones;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 174
    return-void
.end method


# virtual methods
.method protected postExecute(Ljava/util/List;)V
    .locals 1
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
    .line 178
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/widget/aa/safezone/SafeZone;>;"
    iget-object v0, p0, Lcom/intel/settings/aa/ctr/AAController$GetSafeZones;->this$0:Lcom/intel/settings/aa/ctr/AAController;

    invoke-virtual {v0, p1}, Lcom/intel/settings/aa/ctr/AAController;->onGetSafeZones(Ljava/util/List;)V

    .line 179
    return-void
.end method
