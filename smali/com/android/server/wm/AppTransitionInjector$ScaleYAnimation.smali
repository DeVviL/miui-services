.class Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;
.super Landroid/view/animation/Animation;
.source "AppTransitionInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransitionInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleYAnimation"
.end annotation


# instance fields
.field private mFromY:F

.field private mPivotY:F

.field private mToY:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "fromY"    # F
    .param p2, "toY"    # F
    .param p3, "pivotY"    # F

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 320
    iput p1, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mFromY:F

    .line 321
    iput p2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mToY:F

    .line 322
    iput p3, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mPivotY:F

    .line 323
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 327
    const/high16 v1, 0x3f800000    # 1.0f

    .line 328
    .local v1, "sy":F
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->getScaleFactor()F

    move-result v0

    .line 330
    .local v0, "scale":F
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mFromY:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mToY:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_1

    .line 331
    :cond_0
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mFromY:F

    iget v3, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mToY:F

    iget v4, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mFromY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    .line 334
    :cond_1
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mPivotY:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_2

    .line 335
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 339
    :goto_0
    return-void

    .line 337
    :cond_2
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mPivotY:F

    mul-float/2addr v3, v0

    invoke-virtual {v2, v5, v1, v6, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0
.end method
