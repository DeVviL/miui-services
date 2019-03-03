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
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    iput-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mWiFi:Lcom/intel/internal/widget/aa/deviceinfo/Wifi;

    .line 62
    iput-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mBluetooth:Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;

    .line 63
    iput-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    .line 64
    iput-boolean v2, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeStatusInNotification:Z

    .line 65
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeStatus:Ljava/util/Hashtable;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mCurrentUserId:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeZones:Ljava/util/List;

    .line 68
    iput-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 69
    iput-boolean v2, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mIsKeyguardUnlockedForTheFirstTime:Z

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    .line 74
    iput-object p2, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Lcom/intel/internal/widget/aa/deviceinfo/Wifi;

    invoke-direct {v0, p2}, Lcom/intel/internal/widget/aa/deviceinfo/Wifi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mWiFi:Lcom/intel/internal/widget/aa/deviceinfo/Wifi;

    .line 76
    new-instance v0, Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;

    invoke-direct {v0}, Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;-><init>()V

    iput-object v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mBluetooth:Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;

    .line 78
    return-void
.end method

.method public static GetInstance(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;)Lcom/intel/server/aa/AdaptiveAuthenticationHandler;
    .locals 5
    .param p0, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    new-instance v0, Landroid/os/HandlerThread;

    const-string v4, "aa"

    invoke-direct {v0, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "AAhandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 84
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 85
    .local v3, "looper":Landroid/os/Looper;
    const/4 v1, 0x0

    .line 86
    .local v1, "aaHandler":Lcom/intel/server/aa/AdaptiveAuthenticationHandler;
    if-eqz v3, :cond_0

    .line 87
    new-instance v1, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;

    .end local v1    # "aaHandler":Lcom/intel/server/aa/AdaptiveAuthenticationHandler;
    invoke-direct {v1, v3, p1}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 88
    .restart local v1    # "aaHandler":Lcom/intel/server/aa/AdaptiveAuthenticationHandler;
    sput-object p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 90
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    new-instance v4, Lcom/intel/server/aa/AdaptiveAuthenticationBroadcastReceiver;

    invoke-direct {v4, v1}, Lcom/intel/server/aa/AdaptiveAuthenticationBroadcastReceiver;-><init>(Lcom/intel/server/aa/IBroadcastHandler;)V

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-object v1
.end method

.method private WifiConnected(Landroid/net/wifi/WifiInfo;)V
    .locals 5
    .param p1, "nf"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 187
    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mWiFi:Lcom/intel/internal/widget/aa/deviceinfo/Wifi;

    invoke-virtual {v3, p1}, Lcom/intel/internal/widget/aa/deviceinfo/Wifi;->convertToDeviceInfo(Landroid/net/wifi/WifiInfo;)Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    move-result-object v0

    .line 189
    .local v0, "deviceInfo":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    .line 191
    .local v1, "info":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    invoke-virtual {v1}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getConnectionType()I

    move-result v3

    if-nez v3, :cond_0

    .line 192
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 193
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

    .line 197
    .end local v1    # "info":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    :cond_1
    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mCurrentUserId:I

    invoke-direct {p0, v3}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->doSafeZoneCalculation(I)V

    .line 200
    return-void
.end method

.method private WifiDisConnected()V
    .locals 4

    .prologue
    .line 204
    iget-object v2, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    .line 206
    .local v0, "info":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    invoke-virtual {v0}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getConnectionType()I

    move-result v2

    if-nez v2, :cond_0

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 208
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

    .line 213
    .end local v0    # "info":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    :cond_1
    iget v2, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mCurrentUserId:I

    invoke-direct {p0, v2}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->doSafeZoneCalculation(I)V

    .line 214
    return-void
.end method

.method private doBTConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 217
    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mBluetooth:Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;

    invoke-virtual {v3, p1}, Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;->getConnection(Landroid/bluetooth/BluetoothDevice;)Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    move-result-object v0

    .line 218
    .local v0, "deviceInfo":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    .line 219
    .local v2, "info":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    invoke-virtual {v2}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getMacAddressOrHardwareAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getMacAddressOrHardwareAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    const-string v3, "no need to add two same BT connections"

    invoke-static {v3}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    .line 222
    invoke-direct {p0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->dumpCurrentConnections()V

    .line 230
    .end local v2    # "info":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    iget-object v4, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mBluetooth:Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;

    invoke-virtual {v4, p1}, Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;->getConnection(Landroid/bluetooth/BluetoothDevice;)Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-direct {p0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->dumpCurrentConnections()V

    .line 229
    iget v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mCurrentUserId:I

    invoke-direct {p0, v3}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->doSafeZoneCalculation(I)V

    goto :goto_0
.end method

.method private doBTDisConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    .line 234
    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mBluetooth:Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;

    invoke-virtual {v3, p1}, Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;->getConnection(Landroid/bluetooth/BluetoothDevice;)Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    move-result-object v0

    .line 235
    .local v0, "deviceInfo":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    .line 237
    .local v1, "info":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    invoke-virtual {v1}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getMacAddressOrHardwareAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getMacAddressOrHardwareAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 240
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

    .line 243
    iget v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mCurrentUserId:I

    invoke-direct {p0, v3}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->doSafeZoneCalculation(I)V

    .line 247
    .end local v1    # "info":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    :cond_1
    invoke-direct {p0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->dumpCurrentConnections()V

    .line 248
    return-void
.end method

.method private doSafeZoneCalculation(I)V
    .locals 14
    .param p1, "userId"    # I

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 314
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

    .line 315
    sget-object v9, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getAAState()Z

    move-result v0

    .line 316
    .local v0, "aaOn":Z
    sget-object v9, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getSafeZone()Ljava/lang/String;

    move-result-object v8

    .line 317
    .local v8, "safeZonesStr":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 318
    const-string v9, "parameter miss"

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    .line 376
    :goto_0
    return-void

    .line 321
    :cond_0
    if-nez v0, :cond_1

    .line 322
    const-string v9, "aa not on, no need do calculation"

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    .line 323
    invoke-direct {p0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->maybeRemoveNotification()V

    goto :goto_0

    .line 326
    :cond_1
    invoke-static {v8}, Lcom/intel/internal/widget/aa/utils/JsonHelper;->JsonStrToSZList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeZones:Ljava/util/List;

    .line 327
    iget-object v9, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeZones:Ljava/util/List;

    if-nez v9, :cond_2

    .line 328
    const-string v9, "null pointer"

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 332
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

    .line 333
    .local v7, "safeZone":Lcom/intel/internal/widget/aa/safezone/SafeZone;
    invoke-virtual {v7}, Lcom/intel/internal/widget/aa/safezone/SafeZone;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 334
    .local v3, "devicesInSZ":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;>;"
    invoke-virtual {v7}, Lcom/intel/internal/widget/aa/safezone/SafeZone;->getIsEnabled()I

    move-result v9

    if-nez v9, :cond_4

    .line 336
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

    .line 339
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

    .line 341
    .local v2, "deviceInfo":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    iget-object v9, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    .line 342
    .local v1, "connectedDeviceInfo":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    invoke-virtual {v2}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getConnectionType()I

    move-result v9

    if-nez v9, :cond_7

    .line 344
    invoke-virtual {v2}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getSsidOrFriendlyName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getSsidOrFriendlyName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 347
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

    .line 349
    iget-object v9, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeStatus:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-direct {p0, v12}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->maybeSendNotification(Z)V

    goto/16 :goto_0

    .line 354
    :cond_7
    invoke-virtual {v2}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getConnectionType()I

    move-result v9

    if-ne v9, v12, :cond_6

    .line 356
    invoke-virtual {v2}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getMacAddressOrHardwareAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getMacAddressOrHardwareAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 359
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

    .line 361
    iget-object v9, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeStatus:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-direct {p0, v12}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->maybeSendNotification(Z)V

    goto/16 :goto_0

    .line 370
    .end local v1    # "connectedDeviceInfo":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    .end local v2    # "deviceInfo":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    .end local v3    # "devicesInSZ":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "safeZone":Lcom/intel/internal/widget/aa/safezone/SafeZone;
    :cond_8
    const-string v9, "we are not safe"

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    .line 373
    iput-boolean v13, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mIsKeyguardUnlockedForTheFirstTime:Z

    .line 374
    iget-object v9, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeStatus:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-direct {p0, v13}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->maybeSendNotification(Z)V

    goto/16 :goto_0
.end method

.method private doWifiStatusChanged()V
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mWiFi:Lcom/intel/internal/widget/aa/deviceinfo/Wifi;

    invoke-virtual {v1}, Lcom/intel/internal/widget/aa/deviceinfo/Wifi;->getCurrentConnection()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 171
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    .line 174
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

    .line 176
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    invoke-direct {p0, v0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->WifiConnected(Landroid/net/wifi/WifiInfo;)V

    .line 183
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->dumpCurrentConnections()V

    .line 184
    return-void

    .line 179
    :cond_1
    const-string v1, "BSSID = null || 0x"

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    .line 180
    invoke-direct {p0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->WifiDisConnected()V

    goto :goto_0
.end method

.method private dumpCurrentConnections()V
    .locals 4

    .prologue
    .line 413
    iget-object v2, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 414
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

    .line 415
    iget-object v2, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    .line 416
    .local v0, "deviceInfo":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    invoke-virtual {v0}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->printDevice()V

    goto :goto_0

    .line 419
    .end local v0    # "deviceInfo":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private maybeRemoveNotification()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 410
    return-void
.end method

.method private maybeSendNotification(Z)V
    .locals 7
    .param p1, "isSafe"    # Z

    .prologue
    const/4 v6, 0x0

    .line 380
    iget-boolean v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeStatusInNotification:Z

    if-ne v1, p1, :cond_0

    .line 402
    :goto_0
    return-void

    .line 384
    :cond_0
    iput-boolean p1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeStatusInNotification:Z

    .line 385
    iget-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 389
    :cond_1
    new-instance v0, Landroid/app/Notification;

    const v1, 0x108001f

    const-string v2, "Adaptive Authentication"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 393
    .local v0, "notification":Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 394
    if-eqz p1, :cond_2

    .line 395
    iget-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mContext:Landroid/content/Context;

    const-string v2, "Adaptive Authentication"

    const-string v3, "In The SZ"

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 401
    :goto_1
    iget-object v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 398
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
    .param p1, "userId"    # I

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    const-string v2, "aa update"

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    .line 254
    iput p1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mCurrentUserId:I

    .line 256
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 257
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 258
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 259
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "szCalculation"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 261
    invoke-virtual {p0, v1}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 252
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized checkSafe(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 279
    monitor-enter p0

    :try_start_0
    const-string v3, "check safe"

    invoke-static {v3}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    .line 281
    iput p1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mCurrentUserId:I

    .line 283
    sget-object v3, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getAAState()Z

    move-result v0

    .line 284
    .local v0, "aaOn":Z
    if-nez v0, :cond_0

    .line 285
    const-string v3, "aa not on, return false"

    invoke-static {v3}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :goto_0
    monitor-exit p0

    return v2

    .line 290
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mIsKeyguardUnlockedForTheFirstTime:Z

    if-nez v3, :cond_1

    .line 291
    const-string v3, "keyguard is not unlocked by user for the first time, return false"

    invoke-static {v3}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 279
    .end local v0    # "aaOn":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 295
    .restart local v0    # "aaOn":Z
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeStatus:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 296
    .local v1, "safe":Ljava/lang/Boolean;
    if-eqz v1, :cond_2

    .line 297
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

    .line 298
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 301
    :cond_2
    invoke-direct {p0, p1}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->doSafeZoneCalculation(I)V

    .line 303
    iget-object v3, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mSafeStatus:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "safe":Ljava/lang/Boolean;
    check-cast v1, Ljava/lang/Boolean;

    .line 304
    .restart local v1    # "safe":Ljava/lang/Boolean;
    if-eqz v1, :cond_3

    .line 305
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

    .line 306
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 308
    :cond_3
    const-string v3, "cant get safe status!!"

    invoke-static {v3}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 102
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

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 105
    .local v0, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 107
    :pswitch_0
    const-string v2, "wifi status changed"

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    .line 108
    invoke-direct {p0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->doWifiStatusChanged()V

    goto :goto_0

    .line 111
    :pswitch_1
    const-string v2, "bt connected"

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_0

    .line 116
    const-string v2, "ConnectedBT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 117
    .restart local v0    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0, v0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->doBTConnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 123
    :pswitch_2
    const-string v2, "bt disconnected"

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_0

    .line 128
    const-string v2, "DisconnectedBT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 129
    .restart local v0    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0, v0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->doBTDisConnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 135
    :pswitch_3
    const-string v2, "safe zone calculation"

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "szCalculation"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->doSafeZoneCalculation(I)V

    goto :goto_0

    .line 105
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

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    const-string v1, "keyguardUnlocked"

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
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

    .line 269
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->mIsKeyguardUnlockedForTheFirstTime:Z

    .line 270
    const-string v1, "mIsKeyguardUnlockedForTheFirstTime is true"

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v1, "NullPointerException"

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 265
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onBTConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 151
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 152
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 153
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 154
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ConnectedBT"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 155
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0, v1}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    return-void
.end method

.method public onBTDisConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 161
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 162
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "DisconnectedBT"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 165
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0, v1}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    return-void
.end method

.method public onWiFiStatusChanged()V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 145
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 146
    invoke-virtual {p0, v0}, Lcom/intel/server/aa/AdaptiveAuthenticationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 147
    return-void
.end method
