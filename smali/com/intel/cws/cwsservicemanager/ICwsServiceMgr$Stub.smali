.class public abstract Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;
.super Landroid/os/Binder;
.source "ICwsServiceMgr.java"

# interfaces
.implements Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

.field static final TRANSACTION_atSendCmd:I = 0xc

.field static final TRANSACTION_csmRegisterCallback:I = 0x1

.field static final TRANSACTION_csmStart:I = 0x3

.field static final TRANSACTION_csmStop:I = 0x4

.field static final TRANSACTION_csmUnregisterCallback:I = 0x2

.field static final TRANSACTION_getLastError:I = 0xd

.field static final TRANSACTION_uiccBeginTransaction:I = 0x6

.field static final TRANSACTION_uiccEndTransaction:I = 0x7

.field static final TRANSACTION_uiccIsUsim:I = 0x5

.field static final TRANSACTION_uiccReadBinary:I = 0x9

.field static final TRANSACTION_uiccSelectAid:I = 0xb

.field static final TRANSACTION_uiccSelectEf:I = 0xa

.field static final TRANSACTION_uiccTransmitAPDU:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p0, p0, v0}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    :sswitch_0
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->csmRegisterCallback(ILandroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->csmUnregisterCallback(ILandroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->csmStart(B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->csmStop(B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v9, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->uiccIsUsim()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_0

    move v0, v8

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_6
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->uiccBeginTransaction(B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_7
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->uiccEndTransaction(B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->uiccTransmitAPDU(BIIII[B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->uiccReadBinary(B)[B

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :sswitch_a
    const-string v9, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->uiccSelectEf(B[B)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1

    move v0, v8

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_b
    const-string v9, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->uiccSelectAid(B[B)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_2

    move v0, v8

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->atSendCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "com.intel.cws.cwsservicemanager.ICwsServiceMgr"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr$Stub;->getLastError()I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
