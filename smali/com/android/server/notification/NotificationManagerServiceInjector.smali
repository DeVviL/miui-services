.class public Lcom/android/server/notification/NotificationManagerServiceInjector;
.super Ljava/lang/Object;
.source "NotificationManagerServiceInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isAllowLight(Lcom/android/server/notification/ZenModeHelper;Z)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    :cond_0
    return p1
.end method

.method static isMiuiSilentMode(Lcom/android/server/notification/ZenModeHelper;)Z
    .locals 2

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
