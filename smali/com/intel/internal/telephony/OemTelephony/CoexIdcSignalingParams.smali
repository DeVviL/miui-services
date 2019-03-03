.class public Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;
.super Ljava/lang/Object;
.source "CoexIdcSignalingParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mMwsFrameSyncAssertJitter:I

.field public mMwsFrameSyncAssertOffset:I

.field public mMwsPiorityAssertOffsetRequest:I

.field public mMwsRxAssertJitter:I

.field public mMwsRxAssertOffset:I

.field public mMwsRxDeassertJitter:I

.field public mMwsRxDeassertOffset:I

.field public mMwsTxAssertJitter:I

.field public mMwsTxAssertOffset:I

.field public mMwsTxDeassertJitter:I

.field public mMwsTxDeassertOffset:I

.field public mResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams$1;

    invoke-direct {v0}, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams$1;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mResult:I

    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsFrameSyncAssertOffset:I

    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsFrameSyncAssertJitter:I

    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxAssertOffset:I

    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxAssertJitter:I

    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxDeassertOffset:I

    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxDeassertJitter:I

    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxAssertOffset:I

    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxAssertJitter:I

    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxDeassertOffset:I

    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxDeassertJitter:I

    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsPiorityAssertOffsetRequest:I

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mResult:I

    iput p2, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsFrameSyncAssertOffset:I

    iput p3, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsFrameSyncAssertJitter:I

    iput p4, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxAssertOffset:I

    iput p5, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxAssertJitter:I

    iput p6, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxDeassertOffset:I

    iput p7, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxDeassertJitter:I

    iput p8, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxAssertOffset:I

    iput p9, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxAssertJitter:I

    iput p10, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxDeassertOffset:I

    iput p11, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxDeassertJitter:I

    iput p12, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsPiorityAssertOffsetRequest:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mResult:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsFrameSyncAssertOffset:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsFrameSyncAssertJitter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxAssertOffset:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxAssertJitter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxDeassertOffset:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxDeassertJitter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxAssertOffset:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxAssertJitter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxDeassertOffset:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxDeassertJitter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsPiorityAssertOffsetRequest:I

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

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsFrameSyncAssertOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsFrameSyncAssertJitter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxAssertOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxAssertJitter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxDeassertOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsRxDeassertJitter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxAssertOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxAssertJitter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxDeassertOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsTxDeassertJitter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcSignalingParams;->mMwsPiorityAssertOffsetRequest:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
