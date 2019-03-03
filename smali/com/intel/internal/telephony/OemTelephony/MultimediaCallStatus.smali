.class public Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;
.super Ljava/lang/Object;
.source "MultimediaCallStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCallId:I

.field public mCallStatus:I

.field public mDir:I

.field public mNegStatus:I

.field public mNegStatusPresent:Z

.field public mProfile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus$1;

    invoke-direct {v0}, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus$1;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mCallId:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mCallStatus:I

    iput-boolean v2, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mNegStatusPresent:Z

    iput v2, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mNegStatus:I

    const-string v0, ""

    iput-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mProfile:Ljava/lang/String;

    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mDir:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;-><init>(IILjava/lang/String;II)V

    iput-boolean v5, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mNegStatusPresent:Z

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mCallId:I

    iput p2, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mCallStatus:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mNegStatusPresent:Z

    iput p5, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mNegStatus:I

    iput-object p3, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mProfile:Ljava/lang/String;

    iput p4, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mDir:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mCallId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mCallStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mNegStatusPresent:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mNegStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mProfile:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mDir:I

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

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mCallId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mCallStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mNegStatusPresent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mNegStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mProfile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mDir:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
