.class public Lcom/intel/server/aa/AdaptiveAuthenticationHandler;
.super Landroid/os/Handler;
.source "AdaptiveAuthenticationHandler.java"

# interfaces
.implements Lcom/intel/server/aa/IBroadcastHandler;


# static fields
.field private static final BT_CONNECTED:I = 0x2

.field private static final BT_DISCONNECTED:I = 0x3

.field private static final CONNECTED_BT_PARSTR:Ljava/lang/String; = "ConnectedBT"

.field private static final DISCONNECTED_BT_PARSTR:Ljava/lang/String; = "DisconnectedBT"

.field private static final DO_SZ_CALCULATION_PARSTR:Ljava/lang/String; = "szCalculation"

.field private static final SAFE_ZONE_CALCULATION:I = 0x4

.field private static final SZ_NOTIFICATION_IN:Ljava/lang/String; = "In The SZ"

.field private static final SZ_NOTIFICATION_OUT:Ljava/lang/String; = "Out Of SZ"

.field private static final SZ_NOTIFICATION_TITLE:Ljava/lang/String; = "Adaptive Authentication"

.field private static final WIFI_STATUS_CHANGED:I = 0x1

.field private static mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# instance fields
.field private mBluetooth:Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;

.field private mConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mIsKeyguardUnlockedForTheFirstTime:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mSafeStatus:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeStatusInNotification:Z

.field private mSafeZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/widget/aa/safezone/SafeZone;",
            ">;"
        }
    .end annotation
.end field

.field private mWiFi:Lcom/intel/internal/widget/aa/deviceinfo/Wifi;


# direct methods
.method private constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mWiFi:Lcom/intel/internal/widget/aa/deviceinfo/Wifi;

    iput-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mBluetooth:Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;

    iput-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    iput-boolean v2, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeStatusInNotification:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeStatus:Ljava/util/Hashtable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mCurrentUserId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeZones:Ljava/util/List;

    iput-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    iput-boolean v2, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mIsKeyguardUnlockedForTheFirstTime:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    iput-object p2, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/intel/internal/widget/aa/deviceinfo/Wifi;

    invoke-direct {v0, p2}, Lcom/intel/internal/widget/aa/deviceinfo/Wifi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mWiFi:Lcom/intel/internal/widget/aa/deviceinfo/Wifi;

    new-instance v0, Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;

    invoke-direct {v0}, Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;-><init>()V

    iput-object v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mBluetooth:Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;

    return-void
.end method

.method public static GetInstance(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;)Lcom/intel/server/aa/AdaptiveAuthenticationHandler;
    .locals 5

    new-instance v0, Landroid/os/HandlerThread;

    const-string v4, "aa"

    invoke-direct {v0, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    new-instance v1, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;

    invoke-direct {v1, v3, p1}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    sput-object p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v4, Lcom/intel/server/aa/AdaptiveAuthenticationBroadcastReceiver;

    invoke-direct {v4, v1}, Lcom/intel/server/aa/AdaptiveAuthenticationBroadcastReceiver;-><init>(Lcom/intel/server/aa/IBroadcastHandler;)V

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-object v1
.end method

.method private WifiConnected(Landroid/net/wifi/WifiInfo;)V
    .locals 5

    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mWiFi:Lcom/intel/internal/widget/aa/deviceinfo/Wifi;

    invoke-virtual {v3, p1}, Lcom/intel/internal/widget/aa/deviceinfo/Wifi;->convertToDeviceInfo(Landroid/net/wifi/WifiInfo;)Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    invoke-virtual {v1}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getConnectionType()I

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getSsidOrFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mConnection length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mCurrentUserId:I

    invoke-direct {p0, v3}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->doSafeZoneCalculation(I)V

    return-void
.end method

.method private WifiDisConnected()V
    .locals 4

    iget-object v2, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    invoke-virtual {v0}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getConnectionType()I

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getSsidOrFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mConnection length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mCurrentUserId:I

    invoke-direct {p0, v2}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->doSafeZoneCalculation(I)V

    return-void
.end method

.method private doBTConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mBluetooth:Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;

    invoke-virtual {v3, p1}, Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;->getConnection(Landroid/bluetooth/BluetoothDevice;)Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    invoke-virtual {v2}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getMacAddressOrHardwareAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getMacAddressOrHardwareAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "no need to add two same BT connections"

    invoke-static {v3}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->dumpCurrentConnections()V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    iget-object v4, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mBluetooth:Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;

    invoke-virtual {v4, p1}, Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;->getConnection(Landroid/bluetooth/BluetoothDevice;)Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->dumpCurrentConnections()V

    iget v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mCurrentUserId:I

    invoke-direct {p0, v3}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->doSafeZoneCalculation(I)V

    goto :goto_0
.end method

.method private doBTDisConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mBluetooth:Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;

    invoke-virtual {v3, p1}, Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;->getConnection(Landroid/bluetooth/BluetoothDevice;)Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    invoke-virtual {v1}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getMacAddressOrHardwareAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getMacAddressOrHardwareAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getSsidOrFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mConnection length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    iget v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mCurrentUserId:I

    invoke-direct {p0, v3}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->doSafeZoneCalculation(I)V

    :cond_1
    invoke-direct {p0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->dumpCurrentConnections()V

    return-void
.end method

.method private doSafeZoneCalculation(I)V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doSafeZoneCalculation userId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    sget-object v9, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getAAState()Z

    move-result v0

    sget-object v9, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getSafeZone()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v9, "parameter miss"

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez v0, :cond_1

    const-string v9, "aa not on, no need do calculation"

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->maybeRemoveNotification()V

    goto :goto_0

    :cond_1
    invoke-static {v8}, Lcom/intel/internal/widget/aa/utils/JsonHelper;->JsonStrToSZList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeZones:Ljava/util/List;

    iget-object v9, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeZones:Ljava/util/List;

    if-nez v9, :cond_2

    const-string v9, "null pointer"

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeZones:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/intel/internal/widget/aa/safezone/SafeZone;

    invoke-virtual {v7}, Lcom/intel/internal/widget/aa/safezone/SafeZone;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v7}, Lcom/intel/internal/widget/aa/safezone/SafeZone;->getIsEnabled()I

    move-result v9

    if-nez v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "safe zone "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/intel/internal/widget/aa/safezone/SafeZone;->getNickname()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not enabled, skip it"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    iget-object v9, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    invoke-virtual {v2}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getConnectionType()I

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v2}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getSsidOrFriendlyName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getSsidOrFriendlyName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "yes, we are safe, based on "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getSsidOrFriendlyName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeStatus:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v12}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->maybeSendNotification(Z)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v2}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getConnectionType()I

    move-result v9

    if-ne v9, v12, :cond_6

    invoke-virtual {v2}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getMacAddressOrHardwareAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getMacAddressOrHardwareAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "yes, we are safe, based on "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getMacAddressOrHardwareAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeStatus:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v12}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->maybeSendNotification(Z)V

    goto/16 :goto_0

    :cond_8
    const-string v9, "we are not safe"

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    iput-boolean v13, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mIsKeyguardUnlockedForTheFirstTime:Z

    iget-object v9, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeStatus:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v13}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->maybeSendNotification(Z)V

    goto/16 :goto_0
.end method

.method private doWifiStatusChanged()V
    .locals 3

    iget-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mWiFi:Lcom/intel/internal/widget/aa/deviceinfo/Wifi;

    invoke-virtual {v1}, Lcom/intel/internal/widget/aa/deviceinfo/Wifi;->getCurrentConnection()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->WifiConnected(Landroid/net/wifi/WifiInfo;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->dumpCurrentConnections()V

    return-void

    :cond_1
    const-string v1, "BSSID = null || 0x"

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->WifiDisConnected()V

    goto :goto_0
.end method

.method private dumpCurrentConnections()V
    .locals 4

    iget-object v2, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConnections size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    invoke-virtual {v0}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->printDevice()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private maybeRemoveNotification()V
    .locals 2

    iget-object v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    iget-object v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private maybeSendNotification(Z)V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeStatusInNotification:Z

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeStatusInNotification:Z

    iget-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_1
    new-instance v0, Landroid/app/Notification;

    const v1, 0x108001f

    const-string v2, "Adaptive Authentication"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mContext:Landroid/content/Context;

    const-string v2, "Adaptive Authentication"

    const-string v3, "In The SZ"

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :goto_1
    iget-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mContext:Landroid/content/Context;

    const-string v2, "Adaptive Authentication"

    const-string v3, "Out Of SZ"

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized aaUpdate(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v2, "aa update"

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    iput p1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mCurrentUserId:I

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "szCalculation"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized checkSafe(I)Z
    .locals 5

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    const-string v3, "check safe"

    invoke-static {v3}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    iput p1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mCurrentUserId:I

    sget-object v3, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getAAState()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v3, "aa not on, return false"

    invoke-static {v3}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mIsKeyguardUnlockedForTheFirstTime:Z

    if-nez v3, :cond_1

    const-string v3, "keyguard is not unlocked by user for the first time, return false"

    invoke-static {v3}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeStatus:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get safe from catch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->doSafeZoneCalculation(I)V

    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeStatus:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after calculation, get safe from catch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_3
    const-string v3, "cant get safe status!!"

    invoke-static {v3}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg what "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v2, "wifi status changed"

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->doWifiStatusChanged()V

    goto :goto_0

    :pswitch_1
    const-string v2, "bt connected"

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "ConnectedBT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->doBTConnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :pswitch_2
    const-string v2, "bt disconnected"

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "DisconnectedBT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->doBTDisConnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :pswitch_3
    const-string v2, "safe zone calculation"

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "szCalculation"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->doSafeZoneCalculation(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized keyguardUnlocked()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v1, "keyguardUnlocked"

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeStatus:Ljava/util/Hashtable;

    iget v2, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mCurrentUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeStatus:Ljava/util/Hashtable;

    iget v2, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mCurrentUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mIsKeyguardUnlockedForTheFirstTime:Z

    const-string v1, "mIsKeyguardUnlockedForTheFirstTime is true"

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "NullPointerException"

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onBTConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ConnectedBT"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onBTDisConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DisconnectedBT"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onWiFiStatusChanged()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
