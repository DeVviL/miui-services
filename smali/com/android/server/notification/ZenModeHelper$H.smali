.class Lcom/android/server/notification/ZenModeHelper$H;
.super Landroid/os/Handler;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final MSG_DISPATCH:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/notification/ZenModeHelper$H;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$H;->postDispatchOnZenModeChanged()V

    return-void
.end method

.method private postDispatchOnZenModeChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->access$300(Lcom/android/server/notification/ZenModeHelper;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
