.class Lcom/intel/settings/aa/ctr/AASwitchPreferenceController$2;
.super Ljava/lang/Object;
.source "AASwitchPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;->onGetSafeZones(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;


# direct methods
.method constructor <init>(Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/intel/settings/aa/ctr/AASwitchPreferenceController$2;->this$0:Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/intel/settings/aa/ctr/AASwitchPreferenceController$2;->this$0:Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;->launchAdaptiveAuthActivity(I)V

    .line 58
    return-void
.end method