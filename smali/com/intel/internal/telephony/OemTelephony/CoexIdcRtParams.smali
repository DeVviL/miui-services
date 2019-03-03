.class public Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;
.super Ljava/lang/Object;
.source "CoexIdcRtParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDlFrameSyncEn:B

.field public mResult:I

.field public mRxPriResendTime:I

.field public mRxPriTmin:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams$1;

    invoke-direct {v0}, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams$1;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mResult:I

    iput-byte v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mDlFrameSyncEn:B

    iput-byte v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mRxPriTmin:B

    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mRxPriResendTime:I

    return-void
.end method

.method public constructor <init>(IBBI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mResult:I

    iput-byte p2, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mDlFrameSyncEn:B

    iput-byte p3, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mRxPriTmin:B

    iput p4, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mRxPriResendTime:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mResult:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mDlFrameSyncEn:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mRxPriTmin:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mRxPriResendTime:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mDlFrameSyncEn:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mRxPriTmin:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mRxPriResendTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
