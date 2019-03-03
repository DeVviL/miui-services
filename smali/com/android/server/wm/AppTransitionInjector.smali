.class public Lcom/android/server/wm/AppTransitionInjector;
.super Ljava/lang/Object;
.source "AppTransitionInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;,
        Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;,
        Lcom/android/server/wm/AppTransitionInjector$QuintEaseOutInterpolator;,
        Lcom/android/server/wm/AppTransitionInjector$QuartEaseOutInterpolator;,
        Lcom/android/server/wm/AppTransitionInjector$CubicEaseOutInterpolator;
    }
.end annotation


# static fields
.field private static final CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_ALPHA_DURATION:I = 0xd2

.field private static final DEFAULT_ALPHA_OFFSET:I = 0x28

.field private static final DEFAULT_ANIMATION_DURATION:I = 0x12c

.field private static final DEFAULT_LAUNCH_FORM_HOME_DURATION:I = 0x12c

.field private static final DEFAULT_WALLPAPER_EXIT_SCALE_X:F = 0.4f

.field private static final DEFAULT_WALLPAPER_EXIT_SCALE_Y:F = 0.4f

.field static final DEFAULT_WALLPAPER_OPEN_DURATION:I = 0x12c

.field private static final LAUNCHER_DEFAULT_ALPHA:F = 1.0f

.field private static final LAUNCHER_DEFAULT_SCALE:F = 1.0f

.field private static final LAUNCHER_TRANSITION_ALPHA:F = 0.0f

.field private static final LAUNCHER_TRANSITION_SCALE:F = 2.0f

.field static final NEXT_TRANSIT_TYPE_BACK_HOME:I = 0x66

.field static final NEXT_TRANSIT_TYPE_LAUNCH_FROM_HOME:I = 0x65

.field private static final QUART_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final QUINT_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final WHITE_LIST_ALLOW_CUSTOM_ANIMATION:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMiuiAnimSupportInset:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    new-instance v0, Lcom/android/server/wm/AppTransitionInjector$CubicEaseOutInterpolator;

    invoke-direct {v0, v1}, Lcom/android/server/wm/AppTransitionInjector$CubicEaseOutInterpolator;-><init>(Lcom/android/server/wm/AppTransitionInjector$1;)V

    sput-object v0, Lcom/android/server/wm/AppTransitionInjector;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 41
    new-instance v0, Lcom/android/server/wm/AppTransitionInjector$QuartEaseOutInterpolator;

    invoke-direct {v0, v1}, Lcom/android/server/wm/AppTransitionInjector$QuartEaseOutInterpolator;-><init>(Lcom/android/server/wm/AppTransitionInjector$1;)V

    sput-object v0, Lcom/android/server/wm/AppTransitionInjector;->QUART_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 42
    new-instance v0, Lcom/android/server/wm/AppTransitionInjector$QuintEaseOutInterpolator;

    invoke-direct {v0, v1}, Lcom/android/server/wm/AppTransitionInjector$QuintEaseOutInterpolator;-><init>(Lcom/android/server/wm/AppTransitionInjector$1;)V

    sput-object v0, Lcom/android/server/wm/AppTransitionInjector;->QUINT_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Lcom/android/server/wm/AppTransitionInjector$1;

    invoke-direct {v0}, Lcom/android/server/wm/AppTransitionInjector$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/AppTransitionInjector;->WHITE_LIST_ALLOW_CUSTOM_ANIMATION:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    return-void
.end method

.method static allowCustomAnimation(Landroid/util/ArraySet;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v4, 0x0

    .line 244
    if-nez p0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v4

    .line 248
    :cond_1
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 249
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 250
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 251
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_2

    .line 252
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 253
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_2

    sget-object v5, Lcom/android/server/wm/AppTransitionInjector;->WHITE_LIST_ALLOW_CUSTOM_ANIMATION:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 255
    const/4 v4, 0x1

    goto :goto_0

    .line 249
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static calculateMiuiThumbnailSpec(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;FILandroid/view/SurfaceControl;)V
    .locals 13
    .param p0, "appRect"    # Landroid/graphics/Rect;
    .param p1, "thumbnailRect"    # Landroid/graphics/Rect;
    .param p2, "curSpec"    # Landroid/graphics/Matrix;
    .param p3, "alpha"    # F
    .param p4, "layer"    # I
    .param p5, "thumbnail"    # Landroid/view/SurfaceControl;

    .prologue
    .line 208
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p5, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const/16 v11, 0x9

    new-array v10, v11, [F

    .line 213
    .local v10, "tmp":[F
    invoke-virtual {p2, v10}, Landroid/graphics/Matrix;->getValues([F)V

    .line 215
    const/4 v11, 0x0

    aget v3, v10, v11

    .line 216
    .local v3, "curScaleX":F
    const/4 v11, 0x4

    aget v4, v10, v11

    .line 217
    .local v4, "curScaleY":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float v7, v11, v3

    .line 218
    .local v7, "curWidth":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    mul-float v2, v11, v4

    .line 219
    .local v2, "curHeight":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    sget-object v12, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    sget-object v12, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    div-float v8, v7, v11

    .line 221
    .local v8, "newScaleX":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    sget-object v12, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    sget-object v12, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    div-float v9, v2, v11

    .line 224
    .local v9, "newScaleY":F
    const/4 v11, 0x2

    aget v11, v10, v11

    sget-object v12, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    mul-float/2addr v12, v8

    sub-float v5, v11, v12

    .line 226
    .local v5, "curTranslateX":F
    const/4 v11, 0x5

    aget v11, v10, v11

    sget-object v12, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    mul-float/2addr v12, v9

    sub-float v6, v11, v12

    .line 229
    .local v6, "curTranslateY":F
    const/4 v11, 0x3

    aget v11, v10, v11

    const/4 v12, 0x1

    aget v12, v10, v12

    move-object/from16 v0, p5

    invoke-virtual {v0, v8, v11, v12, v9}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 230
    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 231
    move-object/from16 v0, p5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 232
    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    goto :goto_0
.end method

.method static createLaunchAppFromHomeAnimation(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 22
    .param p0, "transit"    # I
    .param p1, "enter"    # Z
    .param p2, "appFrame"    # Landroid/graphics/Rect;
    .param p3, "positionRect"    # Landroid/graphics/Rect;

    .prologue
    .line 55
    if-nez p3, :cond_0

    .line 56
    const/4 v14, 0x0

    .line 102
    :goto_0
    return-object v14

    .line 60
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 61
    .local v16, "appWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 62
    .local v15, "appHeight":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    .line 63
    .local v20, "startX":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .line 64
    .local v21, "startY":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v19

    .line 65
    .local v19, "startWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v18

    .line 67
    .local v18, "startHeight":I
    if-eqz p1, :cond_1

    .line 68
    move/from16 v0, v19

    int-to-float v4, v0

    move/from16 v0, v16

    int-to-float v6, v0

    div-float v3, v4, v6

    .line 69
    .local v3, "scaleX":F
    move/from16 v0, v18

    int-to-float v4, v0

    int-to-float v6, v15

    div-float v5, v4, v6

    .line 71
    .local v5, "scaleY":F
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, v20

    int-to-float v7, v0

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v3

    div-float/2addr v7, v8

    move/from16 v0, v21

    int-to-float v8, v0

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v5

    div-float/2addr v8, v9

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 73
    .local v2, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v6, 0x12c

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 74
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/animation/ScaleAnimation;->setZAdjustment(I)V

    .line 75
    sget-object v4, Lcom/android/server/wm/AppTransitionInjector;->QUINT_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 76
    move/from16 v0, v16

    move/from16 v1, v16

    invoke-virtual {v2, v0, v15, v1, v15}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 77
    move-object v14, v2

    .line 78
    .local v14, "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 79
    .end local v2    # "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    .end local v3    # "scaleX":F
    .end local v5    # "scaleY":F
    .end local v14    # "anim":Landroid/view/animation/Animation;
    :cond_1
    const/16 v4, 0xe

    move/from16 v0, p0

    if-eq v0, v4, :cond_2

    const/16 v4, 0xf

    move/from16 v0, p0

    if-ne v0, v4, :cond_3

    .line 81
    :cond_2
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v14, v4, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 82
    .restart local v14    # "anim":Landroid/view/animation/Animation;
    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 83
    const-wide/16 v6, 0x12c

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 100
    :goto_1
    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_0

    .line 85
    .end local v14    # "anim":Landroid/view/animation/Animation;
    :cond_3
    new-instance v17, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 86
    .local v17, "set":Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x40000000    # 2.0f

    div-int/lit8 v4, v19, 0x2

    add-int v4, v4, v20

    int-to-float v11, v4

    div-int/lit8 v4, v18, 0x2

    add-int v4, v4, v21

    int-to-float v12, v4

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 90
    .local v2, "scaleAnimation":Landroid/view/animation/Animation;
    const-wide/16 v6, 0x12c

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 91
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v13, v4, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 93
    .local v13, "alphaAnimation":Landroid/view/animation/Animation;
    const-wide/16 v6, 0x28

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 94
    const-wide/16 v6, 0xd2

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 95
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 96
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 97
    sget-object v4, Lcom/android/server/wm/AppTransitionInjector;->QUINT_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 98
    move-object/from16 v14, v17

    .restart local v14    # "anim":Landroid/view/animation/Animation;
    goto :goto_1
.end method

.method static createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "enter"    # Z
    .param p1, "appFrame"    # Landroid/graphics/Rect;
    .param p2, "positionRect"    # Landroid/graphics/Rect;

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/wm/AppTransitionInjector;->createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .locals 30
    .param p0, "enter"    # Z
    .param p1, "appFrame"    # Landroid/graphics/Rect;
    .param p2, "positionRect"    # Landroid/graphics/Rect;
    .param p3, "orientation"    # I

    .prologue
    .line 112
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_0

    const/16 v18, 0x1

    .line 113
    .local v18, "isPortrait":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 114
    .local v12, "appWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 116
    .local v11, "appHeight":I
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v13, 0x1

    .line 117
    .local v13, "canFindPosition":Z
    :goto_1
    sget-object v3, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v15, v3, Landroid/graphics/Rect;->left:I

    .line 118
    .local v15, "insetLeft":I
    sget-object v3, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    .line 119
    .local v17, "insetTop":I
    sget-object v3, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    .line 120
    .local v16, "insetRight":I
    sget-object v3, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    .line 122
    .local v14, "insetBottom":I
    if-eqz v13, :cond_2

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int v26, v3, v15

    .line 123
    .local v26, "startX":I
    :goto_2
    if-eqz v13, :cond_3

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int v27, v3, v17

    .line 124
    .local v27, "startY":I
    :goto_3
    if-eqz v13, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int v4, v15, v16

    sub-int v25, v3, v4

    .line 126
    .local v25, "startWidth":I
    :goto_4
    if-eqz v13, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int v4, v17, v14

    sub-int v24, v3, v4

    .line 128
    .local v24, "startHeight":I
    :goto_5
    move/from16 v0, v25

    int-to-float v3, v0

    int-to-float v4, v12

    div-float v19, v3, v4

    .line 129
    .local v19, "scaleX":F
    move/from16 v0, v24

    int-to-float v3, v0

    int-to-float v4, v11

    div-float v21, v3, v4

    .line 132
    .local v21, "scaleY":F
    if-eqz p0, :cond_6

    .line 133
    new-instance v23, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 134
    .local v23, "set":Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, v26

    int-to-float v7, v0

    move/from16 v0, v25

    int-to-float v8, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v8, v8, v28

    add-float/2addr v7, v8

    move/from16 v0, v27

    int-to-float v8, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    add-float v8, v8, v28

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 137
    .local v2, "scaleAnimation":Landroid/view/animation/Animation;
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 138
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 140
    .local v9, "alphaAnimation":Landroid/view/animation/Animation;
    const-wide/16 v4, 0x28

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 141
    const-wide/16 v4, 0xd2

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 143
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 144
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 145
    sget-object v3, Lcom/android/server/wm/AppTransitionInjector;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 146
    const/4 v3, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 147
    move-object/from16 v10, v23

    .line 183
    .end local v2    # "scaleAnimation":Landroid/view/animation/Animation;
    .local v10, "anim":Landroid/view/animation/Animation;
    :goto_6
    return-object v10

    .line 112
    .end local v9    # "alphaAnimation":Landroid/view/animation/Animation;
    .end local v10    # "anim":Landroid/view/animation/Animation;
    .end local v11    # "appHeight":I
    .end local v12    # "appWidth":I
    .end local v13    # "canFindPosition":Z
    .end local v14    # "insetBottom":I
    .end local v15    # "insetLeft":I
    .end local v16    # "insetRight":I
    .end local v17    # "insetTop":I
    .end local v18    # "isPortrait":Z
    .end local v19    # "scaleX":F
    .end local v21    # "scaleY":F
    .end local v23    # "set":Landroid/view/animation/AnimationSet;
    .end local v24    # "startHeight":I
    .end local v25    # "startWidth":I
    .end local v26    # "startX":I
    .end local v27    # "startY":I
    :cond_0
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 116
    .restart local v11    # "appHeight":I
    .restart local v12    # "appWidth":I
    .restart local v18    # "isPortrait":Z
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 122
    .restart local v13    # "canFindPosition":Z
    .restart local v14    # "insetBottom":I
    .restart local v15    # "insetLeft":I
    .restart local v16    # "insetRight":I
    .restart local v17    # "insetTop":I
    :cond_2
    div-int/lit8 v26, v12, 0x2

    goto/16 :goto_2

    .line 123
    .restart local v26    # "startX":I
    :cond_3
    div-int/lit8 v27, v11, 0x2

    goto/16 :goto_3

    .line 124
    .restart local v27    # "startY":I
    :cond_4
    const/16 v25, 0x0

    goto/16 :goto_4

    .line 126
    .restart local v25    # "startWidth":I
    :cond_5
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 148
    .restart local v19    # "scaleX":F
    .restart local v21    # "scaleY":F
    .restart local v24    # "startHeight":I
    :cond_6
    if-eqz v13, :cond_8

    .line 149
    new-instance v23, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 150
    .restart local v23    # "set":Landroid/view/animation/AnimationSet;
    new-instance v20, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v0, v26

    int-to-float v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, v5, v19

    div-float/2addr v4, v5

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;-><init>(FFF)V

    .line 152
    .local v20, "scaleXAnimation":Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;
    if-eqz v18, :cond_7

    sget-object v3, Lcom/android/server/wm/AppTransitionInjector;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_7
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 154
    const-wide/16 v4, 0x12c

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->setDuration(J)V

    .line 156
    new-instance v22, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v0, v27

    int-to-float v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, v5, v21

    div-float/2addr v4, v5

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;-><init>(FFF)V

    .line 158
    .local v22, "scaleYAnimation":Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;
    sget-object v3, Lcom/android/server/wm/AppTransitionInjector;->QUART_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 159
    const-wide/16 v4, 0x12c

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->setDuration(J)V

    .line 161
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 162
    .restart local v9    # "alphaAnimation":Landroid/view/animation/Animation;
    const-wide/16 v4, 0x28

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 163
    const-wide/16 v4, 0xd2

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 164
    sget-object v3, Lcom/android/server/wm/AppTransitionInjector;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 166
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 167
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 168
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 169
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 170
    move-object/from16 v10, v23

    .line 171
    .restart local v10    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_6

    .line 152
    .end local v9    # "alphaAnimation":Landroid/view/animation/Animation;
    .end local v10    # "anim":Landroid/view/animation/Animation;
    .end local v22    # "scaleYAnimation":Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;
    :cond_7
    sget-object v3, Lcom/android/server/wm/AppTransitionInjector;->QUINT_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_7

    .line 172
    .end local v20    # "scaleXAnimation":Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;
    .end local v23    # "set":Landroid/view/animation/AnimationSet;
    :cond_8
    new-instance v23, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 173
    .restart local v23    # "set":Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ecccccd    # 0.4f

    move/from16 v0, v26

    int-to-float v7, v0

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v8, v8, v19

    div-float/2addr v7, v8

    move/from16 v0, v27

    int-to-float v8, v0

    const/high16 v28, 0x3f800000    # 1.0f

    sub-float v28, v28, v21

    div-float v8, v8, v28

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 176
    .restart local v2    # "scaleAnimation":Landroid/view/animation/Animation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 177
    .restart local v9    # "alphaAnimation":Landroid/view/animation/Animation;
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 178
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 179
    const-wide/16 v4, 0x12c

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 180
    sget-object v3, Lcom/android/server/wm/AppTransitionInjector;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 181
    move-object/from16 v10, v23

    .restart local v10    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_6
.end method

.method static notifyMiuiAnimationEnd(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V
    .locals 1
    .param p0, "helper"    # Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    .prologue
    .line 197
    if-eqz p0, :cond_0

    .line 199
    :try_start_0
    invoke-interface {p0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->notifyMiuiAnimationEnd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static notifyMiuiAnimationStart(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V
    .locals 1
    .param p0, "helper"    # Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    .prologue
    .line 187
    if-eqz p0, :cond_0

    .line 189
    :try_start_0
    invoke-interface {p0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->notifyMiuiAnimationStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static recalculateClipRevealTranslateYDuration(J)J
    .locals 2
    .param p0, "duration"    # J

    .prologue
    .line 263
    const-wide/16 v0, 0x32

    sub-long v0, p0, v0

    return-wide v0
.end method

.method static setMiuiAnimSupportInset(Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "inset"    # Landroid/graphics/Rect;

    .prologue
    .line 236
    if-nez p0, :cond_0

    .line 237
    sget-object v0, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    sget-object v0, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
