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

    .prologue
    .line 146
    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus$1;

    invoke-direct {v0}, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus$1;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mCallId:I

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mCallStatus:I

    .line 90
    iput-boolean v2, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mNegStatusPresent:Z

    .line 91
    iput v2, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mNegStatus:I

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mProfile:Ljava/lang/String;

    .line 93
    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mDir:I

    .line 94
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 6
    .param p1, "callId"    # I
    .param p2, "callStatus"    # I
    .param p3, "profile"    # Ljava/lang/String;
    .param p4, "dir"    # I

    .prologue
    const/4 v5, 0x0

    .line 109
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;-><init>(IILjava/lang/String;II)V

    .line 111
    iput-boolean v5, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mNegStatusPresent:Z

    .line 112
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;II)V
    .locals 1
    .param p1, "callId"    # I
    .param p2, "callStatus"    # I
    .param p3, "profile"    # Ljava/lang/String;
    .param p4, "dir"    # I
    .param p5, "negStatus"    # I

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p1, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mCallId:I

    .line 120
    iput p2, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mCallStatus:I

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mNegStatusPresent:Z

    .line 122
    iput p5, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mNegStatus:I

    .line 123
    iput-object p3, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mProfile:Ljava/lang/String;

    .line 124
    iput p4, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mDir:I

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mCallId:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mCallStatus:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mNegStatusPresent:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mNegStatus:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mProfile:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mDir:I

    .line 103
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 135
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mCallId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mCallStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-boolean v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mNegStatusPresent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mNegStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mProfile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;->mDir:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
