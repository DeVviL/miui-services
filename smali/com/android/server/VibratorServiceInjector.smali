.class public Lcom/android/server/VibratorServiceInjector;
.super Ljava/lang/Object;
.source "VibratorServiceInjector.java"


# static fields
.field private static VIBRATION_THRESHOLD_IN_CALL:J

.field private static sIncall:Z

.field private static sListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-wide/16 v0, 0x1e

    sput-wide v0, Lcom/android/server/VibratorServiceInjector;->VIBRATION_THRESHOLD_IN_CALL:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 9
    sput-boolean p0, Lcom/android/server/VibratorServiceInjector;->sIncall:Z

    return p0
.end method

.method public static listenForCallState(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    new-instance v0, Lcom/android/server/VibratorServiceInjector$1;

    invoke-direct {v0}, Lcom/android/server/VibratorServiceInjector$1;-><init>()V

    sput-object v0, Lcom/android/server/VibratorServiceInjector;->sListener:Landroid/telephony/PhoneStateListener;

    .line 25
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    sget-object v1, Lcom/android/server/VibratorServiceInjector;->sListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 26
    return-void
.end method

.method public static shouldVibrateForMiui(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "usageHint"    # I

    .prologue
    .line 29
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static weakenVibrationIfNecessary(JI)J
    .locals 2
    .param p0, "time"    # J
    .param p2, "uid"    # I

    .prologue
    .line 36
    sget-boolean v0, Lcom/android/server/VibratorServiceInjector;->sIncall:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/android/server/VibratorServiceInjector;->VIBRATION_THRESHOLD_IN_CALL:J

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 37
    sget-wide p0, Lcom/android/server/VibratorServiceInjector;->VIBRATION_THRESHOLD_IN_CALL:J

    .line 39
    :cond_0
    return-wide p0
.end method
