.class public Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;
.super Ljava/lang/Object;
.source "CoexIdcBtParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBtNoiseFigure:I

.field public mResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams$1;

    invoke-direct {v0}, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams$1;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->mResult:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->mBtNoiseFigure:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->mResult:I

    iput p2, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->mBtNoiseFigure:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->mResult:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->mBtNoiseFigure:I

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

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->mBtNoiseFigure:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
