.class final Lcom/android/server/power/ButtonLightController$2;
.super Ljava/lang/Object;
.source "ButtonLightController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ButtonLightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Lcom/android/server/power/ButtonLightController;->sButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTurnOff:Z

    return-void
.end method
