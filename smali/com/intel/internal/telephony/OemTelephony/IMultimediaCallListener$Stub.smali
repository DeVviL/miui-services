.class public abstract Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener$Stub;
.super Landroid/os/Binder;
.source "IMultimediaCallListener.java"

# interfaces
.implements Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.intel.internal.telephony.OemTelephony.IMultimediaCallListener"

.field static final TRANSACTION_onCallStatusInd:I = 0x2

.field static final TRANSACTION_onDomainServiceType:I = 0x1

.field static final TRANSACTION_onMultimediaCallUpdateRsp:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.intel.internal.telephony.OemTelephony.IMultimediaCallListener"

    invoke-virtual {p0, p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.intel.internal.telephony.OemTelephony.IMultimediaCallListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v3, "com.intel.internal.telephony.OemTelephony.IMultimediaCallListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "com.intel.internal.telephony.OemTelephony.IMultimediaCallListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener$Stub;->onDomainServiceType(Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v3, "com.intel.internal.telephony.OemTelephony.IMultimediaCallListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener$Stub;->onCallStatusInd(Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :sswitch_3
    const-string v3, "com.intel.internal.telephony.OemTelephony.IMultimediaCallListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener$Stub;->onMultimediaCallUpdateRsp(II)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
