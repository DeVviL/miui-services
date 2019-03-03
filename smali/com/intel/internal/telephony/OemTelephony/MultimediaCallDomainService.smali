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

    .prologue
    .line 98
    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService$1;

    invoke-direct {v0}, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService$1;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mCallId:I

    .line 60
    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mDir:I

    .line 61
    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mDomain:I

    .line 62
    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mType:I

    .line 63
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "callId"    # I
    .param p2, "dir"    # I
    .param p3, "domain"    # I
    .param p4, "type"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mCallId:I

    .line 77
    iput p2, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mDir:I

    .line 78
    iput p3, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mDomain:I

    .line 79
    iput p4, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mType:I

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mCallId:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mDir:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mDomain:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mType:I

    .line 70
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 89
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mCallId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mDir:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mDomain:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return-void
.end method
