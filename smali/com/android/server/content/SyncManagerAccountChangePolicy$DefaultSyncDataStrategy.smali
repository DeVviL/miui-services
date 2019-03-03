.class Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;
.super Ljava/lang/Object;
.source "SyncManagerAccountChangePolicy.java"

# interfaces
.implements Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManagerAccountChangePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultSyncDataStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/content/SyncManagerAccountChangePolicy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public isSyncForbidden(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 12

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "num_syncs"

    const/4 v8, -0x1

    invoke-virtual {p3, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v7, "com.miui.browser"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-ltz v4, :cond_2

    const/16 v7, 0x8

    if-ge v4, v7, :cond_2

    :cond_0
    :goto_0
    return v5

    :cond_1
    if-ltz v4, :cond_2

    const/4 v7, 0x3

    if-lt v4, v7, :cond_0

    :cond_2
    const-string v7, "interactive"

    invoke-virtual {p3, v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    const-string v7, "last_screen_off_time"

    const-wide/16 v8, 0x0

    invoke-virtual {p3, v7, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    const-wide/32 v10, 0x1d4c0

    cmp-long v7, v8, v10

    if-gez v7, :cond_4

    move v5, v6

    goto :goto_0

    :cond_4
    const-string v7, "battery_charging"

    invoke-virtual {p3, v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v5, v6

    goto :goto_0
.end method
