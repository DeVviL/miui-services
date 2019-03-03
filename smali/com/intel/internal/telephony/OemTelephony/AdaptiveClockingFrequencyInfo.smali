.class public Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;
.super Ljava/lang/Object;
.source "AdaptiveClockingFrequencyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCenterFrequency:J

.field public mFrequencySpread:I

.field public mNoisePower:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo$1;

    invoke-direct {v0}, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo$1;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;->mCenterFrequency:J

    iput p3, p0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;->mFrequencySpread:I

    iput p4, p0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;->mNoisePower:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;->mCenterFrequency:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;->mFrequencySpread:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;->mNoisePower:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;->mCenterFrequency:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;->mFrequencySpread:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/AdaptiveClockingFrequencyInfo;->mNoisePower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
