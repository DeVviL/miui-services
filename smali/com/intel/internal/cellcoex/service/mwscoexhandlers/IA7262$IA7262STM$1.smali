.class Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$1;
.super Landroid/content/BroadcastReceiver;
.source "IA7262.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;


# direct methods
.method constructor <init>(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$1;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receivedIntent"    # Landroid/content/Intent;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$1;->this$1:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    const v1, 0x90002

    invoke-virtual {v0, v1, p2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->sendMessage(ILjava/lang/Object;)V

    .line 563
    return-void
.end method
