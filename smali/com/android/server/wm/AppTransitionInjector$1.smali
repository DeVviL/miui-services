.class final Lcom/android/server/wm/AppTransitionInjector$1;
.super Ljava/util/ArrayList;
.source "AppTransitionInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransitionInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    const-string v0, "com.android.quicksearchbox"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransitionInjector$1;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method
