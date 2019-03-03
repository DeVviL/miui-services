.class Lcom/android/server/display/AutomaticBrightnessController$2;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$300(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v6, v5

    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$400(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_1

    move v1, v4

    :goto_0
    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v5, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;I)I

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$600(Lcom/android/server/display/AutomaticBrightnessController;J)V

    :cond_0
    return-void

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$502(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto :goto_1
.end method
