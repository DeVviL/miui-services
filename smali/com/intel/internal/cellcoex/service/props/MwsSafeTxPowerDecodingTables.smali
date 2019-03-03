.class public Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;
.super Ljava/lang/Object;
.source "MwsSafeTxPowerDecodingTables.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;


# static fields
.field public static final BT_TABLE_SIZE:I = 0x10

.field public static final PROP_NAME:Ljava/lang/String; = "mws.safe_tx_power_decoding_tables"

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"

.field public static final UNKNOWN:I = 0x7fffffff

.field public static final WIFI_TABLE_SIZE:I = 0x20


# instance fields
.field private final mBtSafeTxPwrDecod:[I

.field private final mClassName:Ljava/lang/String;

.field private final mWlanSafeTxPwrDecod:[I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;->mClassName:Ljava/lang/String;

    .line 33
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;->mWlanSafeTxPwrDecod:[I

    .line 38
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;->mBtSafeTxPwrDecod:[I

    .line 44
    const/4 v0, 0x0

    .line 47
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 48
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;->mWlanSafeTxPwrDecod:[I

    aput v3, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 51
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;->mBtSafeTxPwrDecod:[I

    aput v3, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :cond_1
    return-void

    .line 33
    :array_0
    .array-data 4
        -0x80
        -0x5
        -0x4
        -0x3
        -0x2
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x7f
    .end array-data
.end method

.method public constructor <init>([I[I)V
    .locals 5
    .param p1, "wlanSafeTxPwr"    # [I
    .param p2, "btSafeTxPwr"    # [I

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0x10

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;->mClassName:Ljava/lang/String;

    .line 33
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;->mWlanSafeTxPwrDecod:[I

    .line 38
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;->mBtSafeTxPwrDecod:[I

    .line 55
    const/4 v0, 0x0

    .line 58
    .local v0, "i":I
    if-eqz p1, :cond_1

    array-length v1, p1

    if-ne v1, v4, :cond_1

    if-eqz p2, :cond_1

    array-length v1, p2

    if-ne v1, v3, :cond_1

    .line 60
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 61
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;->mWlanSafeTxPwrDecod:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    .line 63
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;->mBtSafeTxPwrDecod:[I

    aget v2, p2, v0

    aput v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    :cond_1
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MwsSafeTxPowerDecodingTables() - Error! Invalid array(s) detected."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_2
    return-void

    .line 33
    nop

    :array_0
    .array-data 4
        -0x80
        -0x5
        -0x4
        -0x3
        -0x2
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x7f
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "i":I
    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v2

    .line 90
    :cond_1
    if-ne p1, p0, :cond_2

    move v2, v3

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    instance-of v4, p1, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 95
    check-cast v1, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;

    .line 97
    .local v1, "otherMyClass":Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;
    const/4 v0, 0x0

    :goto_1
    const/16 v4, 0x20

    if-ge v0, v4, :cond_3

    .line 98
    iget-object v4, v1, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;->mWlanSafeTxPwrDecod:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;->mWlanSafeTxPwrDecod:[I

    aget v5, v5, v0

    if-ne v4, v5, :cond_0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_3
    const/4 v0, 0x0

    :goto_2
    const/16 v4, 0x10

    if-ge v0, v4, :cond_4

    .line 102
    iget-object v4, v1, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;->mBtSafeTxPwrDecod:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;->mBtSafeTxPwrDecod:[I

    aget v5, v5, v0

    if-ne v4, v5, :cond_0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v2, v3

    .line 105
    goto :goto_0
.end method

.method public getMwsBtSafeTxPwr()[I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;->mBtSafeTxPwrDecod:[I

    return-object v0
.end method

.method public getMwsWlanSafeTxPwr()[I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;->mWlanSafeTxPwrDecod:[I

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "mws.safe_tx_power_decoding_tables"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanSafeTxPwr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;->mWlanSafeTxPwrDecod:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BtSafeTxPwr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;->mBtSafeTxPwrDecod:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
