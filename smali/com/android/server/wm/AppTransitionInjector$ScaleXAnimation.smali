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
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "pivotX"    # F

    .prologue
    .line 291
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 292
    iput p1, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mFromX:F

    .line 293
    iput p2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mToX:F

    .line 294
    iput p3, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mPivotX:F

    .line 295
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

    .line 299
    const/high16 v1, 0x3f800000    # 1.0f

    .line 300
    .local v1, "sx":F
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->getScaleFactor()F

    move-result v0

    .line 302
    .local v0, "scale":F
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mFromX:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mToX:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_1

    .line 303
    :cond_0
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mFromX:F

    iget v3, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mToX:F

    iget v4, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mFromX:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    .line 306
    :cond_1
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mPivotX:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_2

    .line 307
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_2
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mPivotX:F

    mul-float/2addr v3, v0

    invoke-virtual {v2, v1, v5, v3, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0
.end method
