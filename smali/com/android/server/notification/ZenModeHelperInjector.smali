.class public Lcom/android/server/notification/ZenModeHelperInjector;
.super Ljava/lang/Object;
.source "ZenModeHelperInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyMiuiRestriction(Landroid/app/AppOpsManager;ZI)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, p2, v0, v4}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    const/16 v0, 0x1c

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {p0, v0, p2, v1, v4}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static applyMiuiRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;Landroid/app/AppOpsManager;I)V
    .locals 8

    const/4 v7, 0x5

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const/4 v4, 0x4

    if-ne p3, v4, :cond_0

    invoke-virtual {p2, v5, p3, v3, v6}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    const/16 v4, 0x1c

    invoke-virtual {p2, v4, p3, v3, v6}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_2

    move v0, v2

    :goto_0
    invoke-static {p2, v0, v3}, Lcom/android/server/notification/ZenModeHelperInjector;->applyMiuiRestriction(Landroid/app/AppOpsManager;ZI)V

    const/16 v4, 0xd

    invoke-static {p2, v0, v4}, Lcom/android/server/notification/ZenModeHelperInjector;->applyMiuiRestriction(Landroid/app/AppOpsManager;ZI)V

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v4, :cond_3

    move v0, v2

    :goto_1
    invoke-static {p2, v0, v7}, Lcom/android/server/notification/ZenModeHelperInjector;->applyMiuiRestriction(Landroid/app/AppOpsManager;ZI)V

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v4, :cond_4

    invoke-static {p1}, Landroid/provider/MiuiSettings$SilenceMode;->isVIPModeEnable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v2

    :goto_2
    const/4 v2, 0x6

    invoke-static {p2, v0, v2}, Lcom/android/server/notification/ZenModeHelperInjector;->applyMiuiRestriction(Landroid/app/AppOpsManager;ZI)V

    if-eq v1, v5, :cond_1

    invoke-virtual {p2, v5, v7, v3, v6}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-virtual {p2, v5, v2, v3, v6}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    invoke-virtual {p2, v5, v3, v3, v6}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    const/16 v2, 0xd

    invoke-virtual {p2, v5, v2, v3, v6}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method static applyRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/app/AppOpsManager;Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p3, v2, v3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    const/16 v1, 0x1c

    invoke-virtual {p1, v1, p3, v2, v3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static applyRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;Landroid/app/AppOpsManager;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, p2, p1, v0}, Lcom/android/server/notification/ZenModeHelperInjector;->applyRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/app/AppOpsManager;Landroid/content/Context;I)V

    const/4 v0, 0x6

    invoke-static {p0, p2, p1, v0}, Lcom/android/server/notification/ZenModeHelperInjector;->applyRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/app/AppOpsManager;Landroid/content/Context;I)V

    const/4 v0, 0x4

    invoke-static {p0, p2, p1, v0}, Lcom/android/server/notification/ZenModeHelperInjector;->applyRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/app/AppOpsManager;Landroid/content/Context;I)V

    return-void
.end method

.method static applyRingerModeToZen(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;I)I
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v1

    const/4 v0, -0x1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
