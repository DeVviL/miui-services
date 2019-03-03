.class public Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;
.super Ljava/lang/Object;
.source "OemSrvccSyncParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAuxState:I

.field public mCallId:I

.field public mCallState:I

.field public mIsEmergencyCall:Z

.field public mMptyAuxState:I

.field public mPhoneNo:Ljava/lang/String;

.field public mPiSi:I

.field public mTid:I

.field public mTidFlag:I

.field public mTonNpi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam$1;

    invoke-direct {v0}, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam$1;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mCallId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mTid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mTidFlag:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mIsEmergencyCall:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mCallState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mAuxState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mMptyAuxState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mPhoneNo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mTonNpi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mPiSi:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mCallId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mTid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mTidFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mIsEmergencyCall:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mAuxState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mMptyAuxState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mPhoneNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mTonNpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/OemSrvccSyncParam;->mPiSi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
