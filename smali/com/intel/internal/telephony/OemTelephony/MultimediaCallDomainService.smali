.class public Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;
.super Ljava/lang/Object;
.source "MultimediaCallDomainService.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCallId:I

.field public mDir:I

.field public mDomain:I

.field public mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService$1;

    invoke-direct {v0}, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService$1;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mCallId:I

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mDir:I

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mDomain:I

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mType:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mCallId:I

    iput p2, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mDir:I

    iput p3, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mDomain:I

    iput p4, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mCallId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mDir:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mDomain:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mType:I

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

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mCallId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mDir:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mDomain:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
