.class public Lcom/android/server/notification/NotificationLightController;
.super Ljava/lang/Object;
.source "NotificationLightController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static customizeNotificationLight(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v5, -0x2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1106000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p2, p4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p1, Landroid/app/Notification;->ledARGB:I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p3, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/android/server/notification/NotificationLightController;->getLedPwmOffOn(I)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v2, v3

    iput v3, p1, Landroid/app/Notification;->ledOnMS:I

    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, p1, Landroid/app/Notification;->ledOffMS:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static customizeNotificationLight(Lcom/android/server/notification/NotificationManagerService;Landroid/app/Notification;I)V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "com.android.phone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.android.server.telecom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "call_breathing_light_color"

    const-string v7, "call_breathing_light_freq"

    invoke-static {v5, p1, v6, v7, p2}, Lcom/android/server/notification/NotificationLightController;->customizeNotificationLight(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v5, "com.android.mms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "mms_breathing_light_color"

    const-string v7, "mms_breathing_light_freq"

    invoke-static {v5, p1, v6, v7, p2}, Lcom/android/server/notification/NotificationLightController;->customizeNotificationLight(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_2

    iget v5, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "breathing_light_color"

    const-string v7, "breathing_light_freq"

    invoke-static {v5, p1, v6, v7, p2}, Lcom/android/server/notification/NotificationLightController;->customizeNotificationLight(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1
.end method

.method public static getBestNotificationLight(Landroid/util/ArrayMap;Ljava/util/ArrayList;)Lcom/android/server/notification/NotificationRecord;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/notification/NotificationRecord;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    iget-object v5, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.phone"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.android.server.telecom"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    move-object v0, v3

    :cond_2
    return-object v0

    :cond_3
    const-string v5, "com.android.mms"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v3

    goto :goto_0
.end method

.method public static getLedPwmOffOn(I)[I
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    div-int/lit8 v1, p0, 0x4

    mul-int/lit8 v1, v1, 0x3

    aput v1, v0, v2

    const/4 v1, 0x1

    aget v2, v0, v2

    sub-int v2, p0, v2

    aput v2, v0, v1

    return-object v0
.end method

.method public static updateNotificationLight(Landroid/content/Context;Landroid/app/Notification;I)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, -0x2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "breathing_light_color"

    invoke-static {v6, v7, p2, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1106000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "breathing_light_freq"

    invoke-static {v6, v7, v1, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-gez v2, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/android/server/notification/NotificationLightController;->getLedPwmOffOn(I)[I

    move-result-object v3

    iput v0, p1, Landroid/app/Notification;->ledARGB:I

    const/4 v6, 0x1

    aget v6, v3, v6

    iput v6, p1, Landroid/app/Notification;->ledOnMS:I

    const/4 v6, 0x0

    aget v6, v3, v6

    iput v6, p1, Landroid/app/Notification;->ledOffMS:I

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method
