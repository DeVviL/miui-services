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

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    return-void
.end method

.method public constructor <init>(IIIII[I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    iput-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    iput p2, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    iput p3, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    iput p4, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    iput p5, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    if-lez v1, :cond_0

    if-eqz p6, :cond_0

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    aget v2, p6, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    iput-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    iget v1, p1, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    iget v1, p1, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    iget v1, p1, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    iget v1, p1, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    iget v1, p1, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    if-lez v1, :cond_0

    iget-object v1, p1, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    iget-object v2, p1, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    :cond_1
    return-void
.end method

.method private static final isSafe(IIII)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq v1, p0, :cond_0

    if-ne v1, p1, :cond_1

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

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

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

    iget-object v1, v0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "mws.wlan.coexparams"

    return-object v0
.end method

.method public getSafeRxMaxFreq()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    return v0
.end method

.method public getSafeRxMinFreq()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    return v0
.end method

.method public getSafeTxMaxFreq()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    return v0
.end method

.method public getSafeTxMinFreq()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    return v0
.end method

.method public getSafeTxPowerNum()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    return v0
.end method

.method public getSafeTxPowerTable()[I
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    return-object v0
.end method

.method public final isRxSafe(II)Z
    .locals 2

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    invoke-static {v0, v1, p1, p2}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->isSafe(IIII)Z

    move-result v0

    return v0
.end method

.method public final isTxSafe(II)Z
    .locals 2

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    invoke-static {v0, v1, p1, p2}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->isSafe(IIII)Z

    move-result v0

    return v0
.end method

.method public setMwsWlanAllSafeFreq()V
    .locals 2

    const/16 v1, 0x9c3

    const/16 v0, 0x960

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    return-void
.end method

.method public setMwsWlanSafeFreq(II)V
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    iput p2, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    iput p2, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    return-void
.end method

.method public setMwsWlanSafeFreq(IIII)V
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    iput p2, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    iput p3, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    iput p4, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    return-void
.end method

.method public setSafeRxMaxFreq(I)V
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    return-void
.end method

.method public setSafeRxMinFreq(I)V
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    return-void
.end method

.method public setSafeTxMaxFreq(I)V
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    return-void
.end method

.method public setSafeTxMinFreq(I)V
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    return-void
.end method

.method public setSafeTxPowerNum(I)V
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerNum:I

    return-void
.end method

.method public setSafeTxPowerTable([I)V
    .locals 0

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    return-void
.end method

.method public setUnknown()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMinFreq:I

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeRxMaxFreq:I

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMinFreq:I

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxMaxFreq:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const-string v4, "(MwsWlanCoexParams:"

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

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSafeTxPowerTable={"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;->mSafeTxPowerTable:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

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

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

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

    return-object v4
.end method
