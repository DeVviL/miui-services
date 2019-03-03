.class public Lcom/intel/internal/widget/aa/deviceinfo/Bluetooth;
.super Ljava/lang/Object;
.source "Bluetooth.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnection(Landroid/bluetooth/BluetoothDevice;)Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    .locals 5

    new-instance v0, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method public getPairedDevices()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    new-instance v5, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
