.class final Lcom/android/server/power/ButtonLightAutoController$2;
.super Ljava/lang/Object;
.source "ButtonLightAutoController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ButtonLightAutoController;
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
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v0, v2, v3

    sget v1, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorButtonBrightness:I

    sget-boolean v2, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTurnOff:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/android/server/power/ButtonLightAutoController;->access$100(F)I

    move-result v2

    sput v2, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorButtonBrightness:I

    sget v2, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorButtonBrightness:I

    if-eq v1, v2, :cond_0

    sget v2, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorButtonBrightness:I

    const/16 v3, 0xa0

    invoke-static {v1, v2, v3}, Lcom/android/server/power/ButtonLightAutoController;->access$200(III)V

    goto :goto_0
.end method
