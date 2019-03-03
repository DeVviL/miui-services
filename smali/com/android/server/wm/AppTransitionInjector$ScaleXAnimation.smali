.class Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;
.super Landroid/view/animation/Animation;
.source "AppTransitionInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransitionInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleXAnimation"
.end annotation


# instance fields
.field private mFromX:F

.field private mPivotX:F

.field private mToX:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p1, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mFromX:F

    iput p2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mToX:F

    iput p3, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mPivotX:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->getScaleFactor()F

    move-result v0

    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mFromX:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mToX:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mFromX:F

    iget v3, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mToX:F

    iget v4, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mFromX:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    :cond_1
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mPivotX:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_2

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mPivotX:F

    mul-float/2addr v3, v0

    invoke-virtual {v2, v1, v5, v3, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0
.end method
