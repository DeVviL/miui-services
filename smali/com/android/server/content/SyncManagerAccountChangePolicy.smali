.class public Lcom/android/server/content/SyncManagerAccountChangePolicy;
.super Ljava/lang/Object;
.source "SyncManagerAccountChangePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManagerAccountChangePolicy$1;,
        Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;,
        Lcom/android/server/content/SyncManagerAccountChangePolicy$RealTimeStrategy;,
        Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;
    }
.end annotation


# static fields
.field private static final ALLOW_FIRST_NUM_SYNCS:I = 0x3

.field private static final ALLOW_FIRST_NUM_SYNCS_FOR_BROWSER:I = 0x8

.field private static final AUTHORITY_BROWSER:Ljava/lang/String; = "com.miui.browser"

.field private static final AUTHORITY_CALENDAR:Ljava/lang/String; = "com.android.calendar"

.field private static final AUTHORITY_CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field protected static final AUTHORITY_GALLERY:Ljava/lang/String; = "com.miui.gallery.cloud.provider"

.field private static final AUTHORITY_NOTES:Ljava/lang/String; = "notes"

.field private static final DEFAULT_SCREEN_OFF_PENDING_TIME:J = 0x1d4c0L

.field static final EXTRA_KEY_BATTERY_CHARGING:Ljava/lang/String; = "battery_charging"

.field static final EXTRA_KEY_BATTERY_LOW:Ljava/lang/String; = "battery_low"

.field static final EXTRA_KEY_INTERACTIVE:Ljava/lang/String; = "interactive"

.field static final EXTRA_KEY_LAST_SCREEN_OFF_TIME:Ljava/lang/String; = "last_screen_off_time"

.field static final EXTRA_KEY_NUM_SYNCS:Ljava/lang/String; = "num_syncs"

.field private static final LOW_BATTERY_LEVEL_LIMIT:I = 0x14

.field protected static final PACKAGE_NAME_GALLERY:Ljava/lang/String; = "com.miui.gallery"

.field private static final REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    .line 139
    sget-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    const-string v1, "com.android.calendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    const-string v1, "notes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    const-string v1, "com.android.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    return-void
.end method

.method private static getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    sget-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 122
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 125
    :cond_0
    sget-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getScreenOffPendingTime()J
    .locals 2

    .prologue
    .line 155
    const-wide/32 v0, 0x1d4c0

    return-wide v0
.end method

.method public static getSyncForbiddenStrategy(Ljava/lang/String;)Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 159
    sget-object v0, Lcom/android/server/content/SyncManagerAccountChangePolicy;->REAL_TIME_STRATEGY_AUTHORITY_SET:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Lcom/android/server/content/SyncManagerAccountChangePolicy$RealTimeStrategy;

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManagerAccountChangePolicy$RealTimeStrategy;-><init>(Lcom/android/server/content/SyncManagerAccountChangePolicy$1;)V

    .line 162
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManagerAccountChangePolicy$DefaultSyncDataStrategy;-><init>(Lcom/android/server/content/SyncManagerAccountChangePolicy$1;)V

    goto :goto_0
.end method

.method public static isBatteryCharging(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 90
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBatteryCharging(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "ifilter":Landroid/content/IntentFilter;
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, "batteryStatus":Landroid/content/Intent;
    const-string v3, "status"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 98
    .local v2, "status":I
    invoke-static {v2}, Lcom/android/server/content/SyncManagerAccountChangePolicy;->isBatteryCharging(I)Z

    move-result v3

    return v3
.end method

.method public static isBatteryLow(II)Z
    .locals 1
    .param p0, "status"    # I
    .param p1, "level"    # I

    .prologue
    .line 102
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x14

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBatteryLow(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "ifilter":Landroid/content/IntentFilter;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 109
    .local v0, "batteryStatus":Landroid/content/Intent;
    const-string v4, "status"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 110
    .local v3, "status":I
    const-string v4, "level"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 111
    .local v2, "level":I
    invoke-static {v3, v2}, Lcom/android/server/content/SyncManagerAccountChangePolicy;->isBatteryLow(II)Z

    move-result v4

    return v4
.end method

.method public static isNetworkNotMetered(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-static {p0}, Lcom/android/server/content/SyncManagerAccountChangePolicy;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isPackageNameForeground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 75
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 76
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 77
    .local v1, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    .line 84
    :goto_0
    return v3

    .line 80
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 81
    .local v2, "topActivity":Landroid/content/ComponentName;
    if-nez v2, :cond_2

    move v3, v4

    .line 82
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method private static maskAccounts([Landroid/accounts/Account;)[Landroid/accounts/Account;
    .locals 9
    .param p0, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 58
    if-nez p0, :cond_1

    .line 59
    const/4 v2, 0x0

    .line 71
    :cond_0
    return-object v2

    .line 61
    :cond_1
    array-length v5, p0

    new-array v2, v5, [Landroid/accounts/Account;

    .line 62
    .local v2, "masked":[Landroid/accounts/Account;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_0

    .line 63
    aget-object v5, p0, v0

    iget-object v3, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 64
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 65
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 66
    .local v1, "m":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v4, v5, v1

    .line 67
    .local v4, "r":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    new-array v7, v4, [C

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    const-string v7, "\u0000"

    const-string v8, "*"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .end local v1    # "m":I
    .end local v4    # "r":I
    :cond_2
    new-instance v5, Landroid/accounts/Account;

    aget-object v6, p0, v0

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v5, v3, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static scheduleSyncForChangedAccounts(Lcom/android/server/content/SyncManager;Landroid/content/Intent;I)V
    .locals 19
    .param p0, "syncManager"    # Lcom/android/server/content/SyncManager;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "sendingUserId"    # I

    .prologue
    .line 31
    const-string v2, "account_changed_action"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 32
    .local v14, "action":Ljava/lang/String;
    const/4 v13, 0x0

    .line 34
    .local v13, "accounts":[Landroid/accounts/Account;
    :try_start_0
    const-string v2, "accounts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, [Landroid/accounts/Account;

    move-object v0, v2

    check-cast v0, [Landroid/accounts/Account;

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    const-string v4, "SyncManager"

    const-string v5, "Account changed. Action: %s, Accounts: %s. "

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v14, v6, v2

    const/4 v7, 0x1

    if-nez v13, :cond_2

    const-string v2, "NULL"

    :goto_1
    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v2, "altered"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "added"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    :cond_0
    if-eqz v13, :cond_3

    .line 45
    move-object v15, v13

    .local v15, "arr$":[Landroid/accounts/Account;
    array-length v0, v15

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v3, v15, v17

    .line 46
    .local v3, "account":Landroid/accounts/Account;
    if-eqz v3, :cond_1

    .line 47
    const/4 v5, -0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V

    .line 45
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 35
    .end local v3    # "account":Landroid/accounts/Account;
    .end local v15    # "arr$":[Landroid/accounts/Account;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    :catch_0
    move-exception v16

    .line 36
    .local v16, "e":Ljava/lang/ClassCastException;
    const-string v2, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad account extra: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 38
    .end local v16    # "e":Ljava/lang/ClassCastException;
    :cond_2
    invoke-static {v13}, Lcom/android/server/content/SyncManagerAccountChangePolicy;->maskAccounts([Landroid/accounts/Account;)[Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 55
    :cond_3
    return-void
.end method
