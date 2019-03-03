.class public Lcom/miui/server/MiuiPointerEventListener;
.super Ljava/lang/Object;
.source "MiuiPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# static fields
.field private static final GESTURE_FINGER_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MiuiPointerEventListener"

.field private static final THREE_GESTURE_STATE_DETECTED_FALSE:I = 0x2

.field private static final THREE_GESTURE_STATE_DETECTED_TRUE:I = 0x3

.field private static final THREE_GESTURE_STATE_DETECTING:I = 0x1

.field private static final THREE_GESTURE_STATE_NONE:I = 0x0

.field private static final THREE_GESTURE_STATE_NO_DETECT:I = 0x4


# instance fields
.field private mBootCompleted:Z

.field private mContext:Landroid/content/Context;

.field private mInitMotionY:[F

.field private mPointerIds:[I

.field private mThreeGestureState:I

.field private mThreeGestureThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mPointerIds:[I

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mInitMotionY:[F

    iput-object p1, p0, Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;

    const/high16 v0, 0x43160000    # 150.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureThreshold:I

    return-void
.end method

.method private changeThreeGestureState(I)V
    .locals 3

    iput p1, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I

    :try_start_0
    iget v1, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "sys.miui.screenshot"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiuiPointerEventListener"

    const-string v2, "RuntimeException when setprop"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    :try_start_1
    const-string v1, "sys.miui.screenshot"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkIsStartThreeGesture(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v1, 0x1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sub-float v4, v1, v2

    iget-object v5, p0, Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x43160000    # 150.0f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private processMotionEventForThreeGestureDetect(Landroid/view/MotionEvent;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    iget-boolean v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mBootCompleted:Z

    if-nez v3, :cond_1

    const-string v3, "sys.boot_completed"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mBootCompleted:Z

    iget-boolean v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mBootCompleted:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, v4}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    :cond_2
    :goto_1
    iget v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I

    if-eq v3, v8, :cond_0

    iget v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I

    if-ne v3, v6, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-eq v3, v5, :cond_5

    invoke-direct {p0, v7}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v5, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiPointerEventListener;->checkIsStartThreeGesture(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, v8}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v6}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_2

    iget-object v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mPointerIds:[I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    aput v4, v3, v1

    iget-object v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mInitMotionY:[F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v5, :cond_8

    iget-object v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mPointerIds:[I

    aget v3, v3, v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ltz v2, :cond_6

    if-lt v2, v5, :cond_7

    :cond_6
    invoke-direct {p0, v7}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget-object v4, p0, Lcom/miui/server/MiuiPointerEventListener;->mInitMotionY:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    add-float/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    iget v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureThreshold:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    invoke-direct {p0, v5}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    invoke-direct {p0}, Lcom/miui/server/MiuiPointerEventListener;->takeScreenshot()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v5, "count_event"

    const-string v4, "com.miui.gallery"

    const-string v0, "com.miui.gallery.intent.action.SEND_STAT"

    const-string v3, "stat_type"

    const-string v1, "category"

    const-string v2, "event"

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.miui.gallery.intent.action.SEND_STAT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.miui.gallery"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "stat_type"

    const-string v8, "count_event"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "category"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "event"

    invoke-virtual {v6, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private takeScreenshot()V
    .locals 3

    iget-object v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;

    const-string v1, "screenshot"

    const-string v2, "threefingers"

    invoke-static {v0, v1, v2}, Lcom/miui/server/MiuiPointerEventListener;->sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/server/MiuiPointerEventListener;->processMotionEventForThreeGestureDetect(Landroid/view/MotionEvent;)V

    return-void
.end method
