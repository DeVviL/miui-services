.class public Lcom/intel/settings/aa/ctr/AAController$SetSafeZones;
.super Lcom/intel/settings/aa/ctr/AsyncTasks$TaskSetSafeZones;
.source "AAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/settings/aa/ctr/AAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SetSafeZones"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/settings/aa/ctr/AAController;


# direct methods
.method public constructor <init>(Lcom/intel/settings/aa/ctr/AAController;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/intel/settings/aa/ctr/AAController$SetSafeZones;->this$0:Lcom/intel/settings/aa/ctr/AAController;

    invoke-direct {p0, p2}, Lcom/intel/settings/aa/ctr/AsyncTasks$TaskSetSafeZones;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method


# virtual methods
.method protected postExecute(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/intel/settings/aa/ctr/AAController$SetSafeZones;->this$0:Lcom/intel/settings/aa/ctr/AAController;

    invoke-virtual {v0, p1}, Lcom/intel/settings/aa/ctr/AAController;->onSetSafeZones(Ljava/lang/Void;)V

    return-void
.end method
