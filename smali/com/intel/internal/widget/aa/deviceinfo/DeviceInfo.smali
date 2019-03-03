.class public Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field public static final TYPE_CONNECTION_BT:I = 0x1

.field public static final TYPE_CONNECTION_WIFI:I = 0x0

.field public static final TYPE_JSON_CONNECTION_TYPE:Ljava/lang/String; = "json-connection-type"

.field public static final TYPE_JSON_MAC:Ljava/lang/String; = "json-mac"

.field public static final TYPE_JSON_SSID:Ljava/lang/String; = "json-ssid-friendname"


# instance fields
.field private mConnectionType:I

.field private mMacAddressOrHardwareAddress:Ljava/lang/String;

.field private mSecurityType:I

.field private mSsidOrFriendlyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "ssidOrFriendlyName"    # Ljava/lang/String;
    .param p2, "macAddressOrHardwareAddress"    # Ljava/lang/String;
    .param p3, "securityType"    # I
    .param p4, "connectionType"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->mSsidOrFriendlyName:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->mMacAddressOrHardwareAddress:Ljava/lang/String;

    .line 45
    iput p3, p0, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->mSecurityType:I

    .line 46
    iput p4, p0, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->mConnectionType:I

    .line 47
    return-void
.end method


# virtual methods
.method public getConnectionType()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->mConnectionType:I

    return v0
.end method

.method public getMacAddressOrHardwareAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->mMacAddressOrHardwareAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityType()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->mSecurityType:I

    return v0
.end method

.method public getSsidOrFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->mSsidOrFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public printDevice()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->mSsidOrFriendlyName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->mSsidOrFriendlyName:Ljava/lang/String;

    invoke-static {v0}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->mMacAddressOrHardwareAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->mMacAddressOrHardwareAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    .line 70
    :cond_1
    iget v0, p0, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->mConnectionType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/intel/internal/widget/aa/utils/L;->d(Ljava/lang/Object;)V

    .line 71
    return-void
.end method
