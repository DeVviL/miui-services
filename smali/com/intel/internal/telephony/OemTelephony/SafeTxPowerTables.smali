.class public Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;
.super Ljava/lang/Object;
.source "SafeTxPowerTables.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;",
            ">;"
        }
    .end annotation
.end field

.field private static final SAFE_BT_TX_POWER_DECODING_TABLE_SIZE:I = 0x10

.field private static final SAFE_WLAN_TX_POWER_DECODING_TABLE_SIZE:I = 0x20

.field static final TAG:Ljava/lang/String; = "SafeTxPowerTables"


# instance fields
.field public mResult:I

.field public mSafeBtTxPowerDecodingTable:[I

.field public mSafeWlanTxPowerDecodingTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables$1;

    invoke-direct {v0}, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables$1;-><init>()V

    sput-object v0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mResult:I

    .line 40
    iput-object v1, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeWlanTxPowerDecodingTable:[I

    .line 41
    iput-object v1, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeBtTxPowerDecodingTable:[I

    .line 42
    return-void
.end method

.method public constructor <init>(I[I[I)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "safeWlanTxPowerDecodingTable"    # [I
    .param p3, "safeBtTxPowerDecodingTable"    # [I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mResult:I

    .line 66
    iput-object p2, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeWlanTxPowerDecodingTable:[I

    .line 67
    iput-object p3, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeBtTxPowerDecodingTable:[I

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mResult:I

    .line 47
    const/16 v1, 0x20

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeWlanTxPowerDecodingTable:[I

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeWlanTxPowerDecodingTable:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeBtTxPowerDecodingTable:[I

    .line 56
    :try_start_1
    iget-object v1, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeBtTxPowerDecodingTable:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    :goto_1
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "SafeTxPowerTables"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read SafeWlanTxPower Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 58
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    const-string v1, "SafeTxPowerTables"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read SafeBtTxPower Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 77
    iget v0, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeWlanTxPowerDecodingTable:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 79
    iget-object v0, p0, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeBtTxPowerDecodingTable:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 80
    return-void
.end method
