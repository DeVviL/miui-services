.class final Lcom/android/server/VibratorServiceInjector$1;
.super Landroid/telephony/PhoneStateListener;
.source "VibratorServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/VibratorServiceInjector;->listenForCallState(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/server/VibratorServiceInjector;->access$002(Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
