.class public abstract Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;
.super Landroid/os/Binder;
.source "IOemTelephony.java"

# interfaces
.implements Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.intel.internal.telephony.OemTelephony.IOemTelephony"

.field static final TRANSACTION_activateThermalSensorNotification:I = 0x7

.field static final TRANSACTION_activateThermalSensorNotificationV2:I = 0x8

.field static final TRANSACTION_enableAdaptiveClocking:I = 0x15

.field static final TRANSACTION_getATR:I = 0x1

.field static final TRANSACTION_getAdaptiveClockingFrequencyInfo:I = 0x16

.field static final TRANSACTION_getCSGState:I = 0x11

.field static final TRANSACTION_getCoexIdcBtParams:I = 0x22

.field static final TRANSACTION_getCoexIdcRtParams:I = 0x24

.field static final TRANSACTION_getCoexIdcSignalingParams:I = 0x23

.field static final TRANSACTION_getDumpScreen:I = 0x6

.field static final TRANSACTION_getGprsCell:I = 0x5

.field static final TRANSACTION_getImsConfig:I = 0x26

.field static final TRANSACTION_getImsNwSupport:I = 0x27

.field static final TRANSACTION_getImsRegistrationState:I = 0x28

.field static final TRANSACTION_getOemVersion:I = 0x2

.field static final TRANSACTION_getPcscf:I = 0x12

.field static final TRANSACTION_getPlmnHistory:I = 0x20

.field static final TRANSACTION_getRFPowerCutbackTable:I = 0xb

.field static final TRANSACTION_getSMSTransportMode:I = 0x9

.field static final TRANSACTION_getSafeTxPowerDecodingTable:I = 0x21

.field static final TRANSACTION_getThermalSensorValue:I = 0x3

.field static final TRANSACTION_getThermalSensorValueV2:I = 0x4

.field static final TRANSACTION_multimediaCallRemoteUpdateRsp:I = 0x2d

.field static final TRANSACTION_multimediaCallSetup:I = 0x2b

.field static final TRANSACTION_multimediaCallUpdateReq:I = 0x2c

.field static final TRANSACTION_registerDedicatedBearerListener:I = 0x19

.field static final TRANSACTION_registerIms:I = 0x2e

.field static final TRANSACTION_registerMultimediaCallListener:I = 0x29

.field static final TRANSACTION_registerSrvccListener:I = 0x17

.field static final TRANSACTION_sendAtCommand:I = 0xf

.field static final TRANSACTION_setBtParams:I = 0x1e

.field static final TRANSACTION_setCSGAutoSelection:I = 0x10

.field static final TRANSACTION_setCoexReporting:I = 0x1c

.field static final TRANSACTION_setImsCallAvailable:I = 0xd

.field static final TRANSACTION_setImsConfig:I = 0x25

.field static final TRANSACTION_setImsSmsAvailable:I = 0xe

.field static final TRANSACTION_setLteFreqReporting:I = 0x1f

.field static final TRANSACTION_setRFPowerCutbackTable:I = 0xc

.field static final TRANSACTION_setRegistrationStatusAndBandInd:I = 0x14

.field static final TRANSACTION_setRegistrationStatusAndBandReporting:I = 0x1b

.field static final TRANSACTION_setSMSTransportMode:I = 0xa

.field static final TRANSACTION_setSrvccSyncParams:I = 0x13

.field static final TRANSACTION_setWlanParams:I = 0x1d

.field static final TRANSACTION_unregisterDedicatedBearerListener:I = 0x1a

.field static final TRANSACTION_unregisterMultimediaCallListener:I = 0x2a

.field static final TRANSACTION_unregisterSrvccListener:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getATR()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getOemVersion()I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getThermalSensorValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getThermalSensorValueV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getGprsCell()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getDumpScreen(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->activateThermalSensorNotification(ZIII)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_8
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->activateThermalSensorNotificationV2(Ljava/lang/String;III)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getSMSTransportMode()I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setSMSTransportMode(I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getRFPowerCutbackTable()I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setRFPowerCutbackTable(I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setImsCallAvailable(Z)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :sswitch_e
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setImsSmsAvailable(Z)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :sswitch_f
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->sendAtCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setCSGAutoSelection()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    :sswitch_11
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getCSGState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/internal/telephony/OemTelephony/IPcscfListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IPcscfListener;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getPcscf(Ljava/lang/String;Lcom/intel/internal/telephony/OemTelephony/IPcscfListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    :goto_5
    invoke-virtual {p0, v0, v4}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setSrvccSyncParams(Ljava/util/List;Landroid/os/Message;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    :sswitch_14
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setRegistrationStatusAndBandInd(Z)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    :sswitch_15
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    :goto_7
    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->enableAdaptiveClocking(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_7

    const/4 v1, 0x1

    :goto_8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    :sswitch_16
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getAdaptiveClockingFrequencyInfo()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/internal/telephony/OemTelephony/ISrvccListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->registerSrvccListener(Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/internal/telephony/OemTelephony/ISrvccListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->unregisterSrvccListener(Lcom/intel/internal/telephony/OemTelephony/ISrvccListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->registerDedicatedBearerListener(Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->unregisterDedicatedBearerListener(Lcom/intel/internal/telephony/OemTelephony/IDedicatedBearerListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v4, 0x1

    :goto_9
    invoke-virtual {p0, v2, v3, v4}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setRegistrationStatusAndBandReporting(JZ)I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    goto :goto_9

    :sswitch_1c
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v4, 0x1

    :goto_a
    invoke-virtual {p0, v2, v3, v4}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setCoexReporting(JZ)I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x0

    goto :goto_a

    :sswitch_1d
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v4, 0x1

    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setWlanParams(JZII)I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x0

    goto :goto_b

    :sswitch_1e
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v4, 0x1

    :goto_c
    invoke-virtual {p0, v2, v3, v4}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setBtParams(JZ)I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    :sswitch_1f
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v4, 0x1

    :goto_d
    invoke-virtual {p0, v2, v3, v4}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setLteFreqReporting(JZ)I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v4, 0x0

    goto :goto_d

    :sswitch_20
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getPlmnHistory(JI)Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_21
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getSafeTxPowerDecodingTable(J)Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_d

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    invoke-virtual {v7, p3, v1}, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_e
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    :sswitch_22
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getCoexIdcBtParams(J)Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_e

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    invoke-virtual {v7, p3, v1}, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_f
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    :sswitch_23
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getCoexIdcSignalingParams(J)Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_f

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    invoke-virtual {v7, p3, v1}, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_10
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    :sswitch_24
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getCoexIdcRtParams(J)Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_10

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    invoke-virtual {v7, p3, v1}, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_11
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    :sswitch_25
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->setImsConfig(Ljava/util/Map;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_26
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getImsConfig()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_27
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getImsNwSupport()I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_28
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->getImsRegistrationState()I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_29
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->registerMultimediaCallListener(Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_2a
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->unregisterMultimediaCallListener(Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_2b
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->multimediaCallSetup(ILjava/lang/String;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_2c
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v2, v4, v5}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->multimediaCallUpdateReq(III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_2d
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v2, v4, v5}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->multimediaCallRemoteUpdateRsp(III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_2e
    const-string v1, "com.intel.internal.telephony.OemTelephony.IOemTelephony"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v4, 0x1

    :goto_12
    invoke-virtual {p0, v2, v4}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->registerIms(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v4, 0x0

    goto :goto_12

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
