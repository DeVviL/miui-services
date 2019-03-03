.class Lcom/android/server/wm/AppTransitionInjector$QuartEaseOutInterpolator;
.super Ljava/lang/Object;
.source "AppTransitionInjector.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransitionInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuartEaseOutInterpolator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/AppTransitionInjector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/AppTransitionInjector$1;

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/android/server/wm/AppTransitionInjector$QuartEaseOutInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "t"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 275
    sub-float/2addr p1, v1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    sub-float/2addr v0, v1

    neg-float v0, v0

    return v0
.end method
