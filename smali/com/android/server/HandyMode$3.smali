.class final Lcom/android/server/HandyMode$3;
.super Landroid/database/ContentObserver;
.source "HandyMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HandyMode;->initialize(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string v2, "handy_mode_size"

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/server/HandyMode;->access$100()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "handy_mode_state"

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v2}, Lmiui/util/HandyModeUtils;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/android/server/HandyMode;->sInputManager:Lcom/android/server/input/InputManagerService;

    sget-object v2, Lcom/android/server/HandyMode;->sHandyModeInputFilter:Lcom/android/server/MiuiInputFilter;

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    :goto_2
    invoke-static {}, Lcom/android/server/HandyMode;->access$100()V

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/android/server/HandyMode;->sInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    goto :goto_2
.end method
