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

    iput-object p1, p0, Lcom/intel/settings/aa/ctr/AAController$GetSafeZones;->this$0:Lcom/intel/settings/aa/ctr/AAController;

    invoke-direct {p0, p2}, Lcom/intel/settings/aa/ctr/AsyncTasks$TaskGetSafeZones;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

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

    iget-object v0, p0, Lcom/intel/settings/aa/ctr/AAController$GetSafeZones;->this$0:Lcom/intel/settings/aa/ctr/AAController;

    invoke-virtual {v0, p1}, Lcom/intel/settings/aa/ctr/AAController;->onGetSafeZones(Ljava/util/List;)V

    return-void
.end method
