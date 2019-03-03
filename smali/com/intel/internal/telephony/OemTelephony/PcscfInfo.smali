.class public Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;
.super Ljava/lang/Object;
.source "PcscfInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCid:I

.field public mPcscfAddresses:[Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/PcscfInfo$1;

    invoke-direct {v0}, Lcom/intel/internal/telephony/OemTelephony/PcscfInfo$1;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;->mCid:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;->mPcscfAddresses:[Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;->mCid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v2, v0, [Ljava/net/InetAddress;

    iput-object v2, p0, Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;->mPcscfAddresses:[Ljava/net/InetAddress;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;->mPcscfAddresses:[Ljava/net/InetAddress;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "mCid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;->mCid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;->mPcscfAddresses:[Ljava/net/InetAddress;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v1, p0, Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;->mCid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;->mPcscfAddresses:[Ljava/net/InetAddress;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;->mPcscfAddresses:[Ljava/net/InetAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephony/PcscfInfo;->mPcscfAddresses:[Ljava/net/InetAddress;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
