.class final Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiInitServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiInitServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/MiuiInitServer;


# direct methods
.method private constructor <init>(Lcom/miui/server/MiuiInitServer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;->this$0:Lcom/miui/server/MiuiInitServer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/MiuiInitServer;Lcom/miui/server/MiuiInitServer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;-><init>(Lcom/miui/server/MiuiInitServer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Lcom/miui/server/MiuiInitServer$BootCompletedReceiver$1;

    invoke-direct {v0, p0}, Lcom/miui/server/MiuiInitServer$BootCompletedReceiver$1;-><init>(Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;)V

    invoke-virtual {v0}, Lcom/miui/server/MiuiInitServer$BootCompletedReceiver$1;->start()V

    return-void
.end method
