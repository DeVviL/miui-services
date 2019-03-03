.class public Lcom/android/server/notification/NotificationManagerServiceInjector;
.super Ljava/lang/Object;
.source "NotificationManagerServiceInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isAllowLight(Lcom/android/server/notification/ZenModeHelper;Z)Z
    .locals 3
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "aboveThreshold"    # Z

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v1

    .line 10
    .local v1, "zenMode":I
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 11
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 12
    iget-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    .line 14
    .end local p1    # "aboveThreshold":Z
    :cond_0
    return p1
.end method

.method static isMiuiSilentMode(Lcom/android/server/notification/ZenModeHelper;)Z
    .locals 2
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
