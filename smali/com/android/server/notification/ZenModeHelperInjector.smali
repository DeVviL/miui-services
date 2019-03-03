.class public Lcom/android/server/notification/ZenModeHelperInjector;
.super Ljava/lang/Object;
.source "ZenModeHelperInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyMiuiRestriction(Landroid/app/AppOpsManager;ZI)V
    .locals 5
    .param p0, "mAppOps"    # Landroid/app/AppOpsManager;
    .param p1, "isRestricted"    # Z
    .param p2, "usage"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    const/4 v3, 0x3

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, p2, v0, v4}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 71
    const/16 v0, 0x1c

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {p0, v0, p2, v1, v4}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 74
    return-void

    :cond_0
    move v0, v2

    .line 68
    goto :goto_0

    :cond_1
    move v1, v2

    .line 71
    goto :goto_1
.end method

.method private static applyMiuiRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;Landroid/app/AppOpsManager;I)V
    .locals 8
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mAppOps"    # Landroid/app/AppOpsManager;
    .param p3, "usage"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v3, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v1

    .line 38
    .local v1, "zenMode":I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const/4 v4, 0x4

    if-ne p3, v4, :cond_0

    .line 39
    invoke-virtual {p2, v5, p3, v3, v6}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 40
    const/16 v4, 0x1c

    invoke-virtual {p2, v4, p3, v3, v6}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 43
    :cond_0
    if-eqz v1, :cond_2

    move v0, v2

    .line 44
    .local v0, "isRestricted":Z
    :goto_0
    invoke-static {p2, v0, v3}, Lcom/android/server/notification/ZenModeHelperInjector;->applyMiuiRestriction(Landroid/app/AppOpsManager;ZI)V

    .line 45
    const/16 v4, 0xd

    invoke-static {p2, v0, v4}, Lcom/android/server/notification/ZenModeHelperInjector;->applyMiuiRestriction(Landroid/app/AppOpsManager;ZI)V

    .line 47
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v4, :cond_3

    move v0, v2

    .line 48
    :goto_1
    invoke-static {p2, v0, v7}, Lcom/android/server/notification/ZenModeHelperInjector;->applyMiuiRestriction(Landroid/app/AppOpsManager;ZI)V

    .line 50
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v4, :cond_4

    invoke-static {p1}, Landroid/provider/MiuiSettings$SilenceMode;->isVIPModeEnable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v2

    .line 52
    :goto_2
    const/4 v2, 0x6

    invoke-static {p2, v0, v2}, Lcom/android/server/notification/ZenModeHelperInjector;->applyMiuiRestriction(Landroid/app/AppOpsManager;ZI)V

    .line 55
    if-eq v1, v5, :cond_1

    .line 56
    invoke-virtual {p2, v5, v7, v3, v6}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 58
    const/4 v2, 0x6

    invoke-virtual {p2, v5, v2, v3, v6}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2, v5, v3, v3, v6}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 62
    const/16 v2, 0xd

    invoke-virtual {p2, v5, v2, v3, v6}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 65
    :cond_1
    return-void

    .end local v0    # "isRestricted":Z
    :cond_2
    move v0, v3

    .line 43
    goto :goto_0

    .restart local v0    # "isRestricted":Z
    :cond_3
    move v0, v3

    .line 47
    goto :goto_1

    :cond_4
    move v0, v3

    .line 50
    goto :goto_2
.end method

.method static applyRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/app/AppOpsManager;Landroid/content/Context;I)V
    .locals 4
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "mAppOps"    # Landroid/app/AppOpsManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "usage"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 26
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    .line 27
    .local v0, "zenMode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 28
    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    .line 29
    const/4 v1, 0x3

    invoke-virtual {p1, v1, p3, v2, v3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 30
    const/16 v1, 0x1c

    invoke-virtual {p1, v1, p3, v2, v3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method

.method static applyRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;Landroid/app/AppOpsManager;)V
    .locals 1
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mAppOps"    # Landroid/app/AppOpsManager;

    .prologue
    .line 19
    const/4 v0, 0x5

    invoke-static {p0, p2, p1, v0}, Lcom/android/server/notification/ZenModeHelperInjector;->applyRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/app/AppOpsManager;Landroid/content/Context;I)V

    .line 20
    const/4 v0, 0x6

    invoke-static {p0, p2, p1, v0}, Lcom/android/server/notification/ZenModeHelperInjector;->applyRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/app/AppOpsManager;Landroid/content/Context;I)V

    .line 21
    const/4 v0, 0x4

    invoke-static {p0, p2, p1, v0}, Lcom/android/server/notification/ZenModeHelperInjector;->applyRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/app/AppOpsManager;Landroid/content/Context;I)V

    .line 22
    return-void
.end method

.method static applyRingerModeToZen(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;I)I
    .locals 4
    .param p0, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringerMode"    # I

    .prologue
    const/4 v2, 0x1

    .line 77
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v1

    .line 78
    .local v1, "zenMode":I
    const/4 v0, -0x1

    .line 80
    .local v0, "newZen":I
    packed-switch p2, :pswitch_data_0

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 82
    :pswitch_0
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 83
    const/4 v0, 0x2

    goto :goto_0

    .line 88
    :pswitch_1
    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    .line 89
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
