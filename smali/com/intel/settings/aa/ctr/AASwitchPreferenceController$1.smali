.class Lcom/intel/settings/aa/ctr/AASwitchPreferenceController$1;
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

    iput-object p1, p0, Lcom/intel/settings/aa/ctr/AASwitchPreferenceController$1;->this$0:Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/intel/settings/aa/ctr/AASwitchPreferenceController$1;->this$0:Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;

    invoke-virtual {v0}, Lcom/intel/settings/aa/ctr/AASwitchPreferenceController;->doTurnOffAA()V

    return-void
.end method
