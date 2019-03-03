.class public Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;
.super Ljava/lang/Object;
.source "MwsWlanCoexParams.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;


# static fields
.field public static final PROP_NAME:Ljava/lang/String; = "mws.wlan.coexparams"

.field public static final UNKNOWN:I = -0x1


# instance fields
.field private mSafeRxMaxFreq:I

.field private mSafeRxMinFreq:I

.field private mSafeTxMaxFreq:I

.field private mSafeTxMinFreq:I

.field private mSafeTxPowerNum:I

.field private mSafeTxPowerTable:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    .line 28
    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    .line 29
    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    .line 30
    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    .line 31
    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    .line 68
    return-void
.end method

.method public constructor <init>(IIIII[I)V
    .locals 3
    .param p1, "aWlanSafeRxMin"    # I
    .param p2, "aWlanSafeRxMax"    # I
    .param p3, "aWlanSafeTxMin"    # I
    .param p4, "aWlanSafeTxMax"    # I
    .param p5, "aWlanSafeTxPowerNum"    # I
    .param p6, "aWlanSafeTxPowerTable"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    .line 28
    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    .line 29
    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    .line 30
    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    .line 31
    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    .line 32
    iput-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    .line 36
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    .line 37
    iput p2, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    .line 38
    iput p3, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    .line 39
    iput p4, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    .line 40
    iput p5, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    .line 41
    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    if-lez v1, :cond_0

    if-eqz p6, :cond_0

    .line 42
    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    .line 43
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    if-ge v0, v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    aget v2, p6, v0

    aput v2, v1, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "idx":I
    :cond_0
    iput-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    .line 49
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;)V
    .locals 3
    .param p1, "anotherMwsWlanCoexParams"    # Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    .line 28
    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    .line 29
    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    .line 30
    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    .line 31
    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    .line 32
    iput-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    .line 52
    iget v1, p1, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    .line 53
    iget v1, p1, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    .line 54
    iget v1, p1, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    .line 55
    iget v1, p1, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    .line 56
    iget v1, p1, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    .line 57
    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    if-lez v1, :cond_0

    iget-object v1, p1, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    if-eqz v1, :cond_0

    .line 58
    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    .line 59
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    if-ge v0, v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    iget-object v2, p1, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "idx":I
    :cond_0
    iput-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    .line 65
    :cond_1
    return-void
.end method

.method private static final isSafe(IIII)Z
    .locals 2
    .param p0, "aMin"    # I
    .param p1, "aMax"    # I
    .param p2, "aFreq"    # I
    .param p3, "aBandWidth"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 202
    if-eq v1, p0, :cond_0

    if-ne v1, p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    :cond_1
    div-int/lit8 v1, p3, 0x2

    sub-int v1, p2, v1

    if-lt v1, p0, :cond_2

    div-int/lit8 v1, p3, 0x2

    add-int/2addr v1, p2

    if-le v1, p1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 174
    if-nez p1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v1

    .line 176
    :cond_1
    if-ne p0, p1, :cond_2

    .line 177
    const/4 v1, 0x1

    goto :goto_0

    .line 178
    :cond_2
    instance-of v2, p1, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 181
    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    .line 182
    .local v0, "otherMyClass":Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;
    iget v2, v0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    iget v3, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    iget v3, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    iget v3, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    iget v3, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    iget v3, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    if-ne v2, v3, :cond_0

    .line 187
    iget-object v1, v0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "mws.wlan.coexparams"

    return-object v0
.end method

.method public getSafeRxMaxFreq()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    return v0
.end method

.method public getSafeRxMinFreq()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    return v0
.end method

.method public getSafeTxMaxFreq()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    return v0
.end method

.method public getSafeTxMinFreq()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    return v0
.end method

.method public getSafeTxPowerNum()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    return v0
.end method

.method public getSafeTxPowerTable()[I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    return-object v0
.end method

.method public final isRxSafe(II)Z
    .locals 2
    .param p1, "aFreq"    # I
    .param p2, "aBandWidth"    # I

    .prologue
    .line 209
    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    invoke-static {v0, v1, p1, p2}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->isSafe(IIII)Z

    move-result v0

    return v0
.end method

.method public final isTxSafe(II)Z
    .locals 2
    .param p1, "aFreq"    # I
    .param p2, "aBandWidth"    # I

    .prologue
    .line 213
    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    invoke-static {v0, v1, p1, p2}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->isSafe(IIII)Z

    move-result v0

    return v0
.end method

.method public setMwsWlanAllSafeFreq()V
    .locals 2

    .prologue
    const/16 v1, 0x9c3

    const/16 v0, 0x960

    .line 96
    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    .line 97
    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    .line 98
    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    .line 99
    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    .line 100
    return-void
.end method

.method public setMwsWlanSafeFreq(II)V
    .locals 0
    .param p1, "aMin"    # I
    .param p2, "aMax"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    .line 90
    iput p2, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    .line 91
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    .line 92
    iput p2, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    .line 93
    return-void
.end method

.method public setMwsWlanSafeFreq(IIII)V
    .locals 0
    .param p1, "aRxMin"    # I
    .param p2, "aRxMax"    # I
    .param p3, "aTxMin"    # I
    .param p4, "aTxMax"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    .line 83
    iput p2, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    .line 84
    iput p3, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    .line 85
    iput p4, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    .line 86
    return-void
.end method

.method public setSafeRxMaxFreq(I)V
    .locals 0
    .param p1, "safeRxMaxFreq"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    .line 108
    return-void
.end method

.method public setSafeRxMinFreq(I)V
    .locals 0
    .param p1, "safeRxMinFreq"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    .line 104
    return-void
.end method

.method public setSafeTxMaxFreq(I)V
    .locals 0
    .param p1, "safeTxMaxFreq"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    .line 116
    return-void
.end method

.method public setSafeTxMinFreq(I)V
    .locals 0
    .param p1, "safeTxMinFreq"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    .line 112
    return-void
.end method

.method public setSafeTxPowerNum(I)V
    .locals 0
    .param p1, "safeTxPowerNum"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    .line 120
    return-void
.end method

.method public setSafeTxPowerTable([I)V
    .locals 0
    .param p1, "safeTxPowerTable"    # [I

    .prologue
    .line 123
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    .line 124
    return-void
.end method

.method public setUnknown()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    .line 75
    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    .line 76
    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    .line 77
    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 155
    const-string v4, "(MwsWlanCoexParams:"

    .line 156
    .local v4, "outString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSafeRxMinFreq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSafeRxMaxFreq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSafeTxMinFreq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSafeTxMaxFreq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSafeTxPowerNum="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSafeTxPowerTable={"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    if-eqz v5, :cond_0

    .line 163
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 164
    .local v1, "element":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "arr$":[I
    .end local v1    # "element":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 168
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 169
    return-object v4
.end method
