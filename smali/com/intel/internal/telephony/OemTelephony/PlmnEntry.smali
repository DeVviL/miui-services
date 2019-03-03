.class public Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;
.super Ljava/lang/Object;
.source "PlmnEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mChannelBw:I

.field public mMcc:I

.field public mMnc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry$1;

    invoke-direct {v0}, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry$1;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mMcc:I

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mMnc:I

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mChannelBw:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mBands:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(IIILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mMcc:I

    iput p2, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mMnc:I

    iput p3, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mChannelBw:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mBands:Ljava/util/List;

    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mBands:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mMcc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mMnc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mChannelBw:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mBands:Ljava/util/List;

    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mBands:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

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

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mMcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mMnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mChannelBw:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/PlmnEntry;->mBands:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
