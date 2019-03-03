.class public Lcom/intel/server/aa/AdaptiveAuthenticationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdaptiveAuthenticationBroadcastReceiver.java"


# static fields
.field public static final ACL_CONNECT:Ljava/lang/String; = "android.bluetooth.device.action.ACL_CONNECTED"

.field public static final ACL_DISCONNECT:Ljava/lang/String; = "android.bluetooth.device.action.ACL_DISCONNECTED"

.field public static final CONNECTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"


# instance fields
.field private mHandler:Lcom/intel/server/aa/IBroadcastHandler;


# direct methods
.method public constructor <init>(Lcom/intel/server/aa/IBroadcastHandler;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/server/aa/AdaptiveAuthenticationBroadcastReceiver;->mHandler:Lcom/intel/server/aa/IBroadcastHandler;

    iput-object p1, p0, Lcom/intel/server/aa/AdaptiveAuthenticationBroadcastReceiver;->mHandler:Lcom/intel/server/aa/IBroadcastHandler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adaptive Caught action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACL CONNECTED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/intel/server/aa/AdaptiveAuthenticationBroadcastReceiver;->mHandler:Lcom/intel/server/aa/IBroadcastHandler;

    invoke-interface {v2, v1}, Lcom/intel/server/aa/IBroadcastHandler;->onBTConnected(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACL CONNECTED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/intel/server/aa/AdaptiveAuthenticationBroadcastReceiver;->mHandler:Lcom/intel/server/aa/IBroadcastHandler;

    invoke-interface {v2, v1}, Lcom/intel/server/aa/IBroadcastHandler;->onBTDisConnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_2
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CONNECTIVITY_CHANGE"

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/intel/server/aa/AdaptiveAuthenticationBroadcastReceiver;->mHandler:Lcom/intel/server/aa/IBroadcastHandler;

    invoke-interface {v2}, Lcom/intel/server/aa/IBroadcastHandler;->onWiFiStatusChanged()V

    goto :goto_0
.end method
