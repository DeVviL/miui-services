.class public Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;
.super Ljava/lang/Object;
.source "MwsBtCoexParams.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;


# static fields
.field public static final BT_HI_FREQ:I = 0x9b0

.field public static final BT_LO_FREQ:I = 0x962

.field public static final PROP_NAME:Ljava/lang/String; = "mws.bt.coexparams"

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"

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

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMinFreq:I

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMaxFreq:I

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMinFreq:I

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMaxFreq:I

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerNum:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerTable:[I

    return-void
.end method

.method public constructor <init>(IIIII[I)V
    .locals 4

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMinFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMaxFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMinFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMaxFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerNum:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerTable:[I

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMinFreq:I

    iput p2, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMaxFreq:I

    iput p3, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMinFreq:I

    iput p4, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMaxFreq:I

    iput p5, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerNum:I

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerNum:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerNum:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerTable:[I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerNum:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerTable:[I

    aget v2, p6, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MwsBtCoexParams: mSafeTxPowerNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;)V
    .locals 4

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMinFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMaxFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMinFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMaxFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerNum:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerTable:[I

    invoke-virtual {p1}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->getSafeRxMinFreq()I

    move-result v1

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMinFreq:I

    invoke-virtual {p1}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->getSafeRxMaxFreq()I

    move-result v1

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMaxFreq:I

    invoke-virtual {p1}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->getSafeTxMinFreq()I

    move-result v1

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMinFreq:I

    invoke-virtual {p1}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->getSafeTxMaxFreq()I

    move-result v1

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMaxFreq:I

    iget v1, p1, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerNum:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerNum:I

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerNum:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerNum:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerTable:[I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerNum:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerTable:[I

    iget-object v2, p1, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerTable:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MwsBtCoexParams: mSafeTxPowerNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
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
    if-ne p1, p0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    iget v2, v0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMinFreq:I

    iget v3, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMinFreq:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMaxFreq:I

    iget v3, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMaxFreq:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMinFreq:I

    iget v3, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMinFreq:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMaxFreq:I

    iget v3, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMaxFreq:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerNum:I

    iget v3, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerNum:I

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerTable:[I

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerTable:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "mws.bt.coexparams"

    return-object v0
.end method

.method public getSafeRxMaxFreq()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMaxFreq:I

    return v0
.end method

.method public getSafeRxMinFreq()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMinFreq:I

    return v0
.end method

.method public getSafeTxMaxFreq()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMaxFreq:I

    return v0
.end method

.method public getSafeTxMinFreq()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMinFreq:I

    return v0
.end method

.method public getSafeTxPowerNum()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerNum:I

    return v0
.end method

.method public getSafeTxPowerTable()[I
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerTable:[I

    return-object v0
.end method

.method public setMwsBtAllSafeFreq()V
    .locals 2

    const/16 v1, 0x9b0

    const/16 v0, 0x962

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMinFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMaxFreq:I

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMinFreq:I

    iput v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMaxFreq:I

    return-void
.end method

.method public setMwsBtSafeFreq(II)V
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMinFreq:I

    iput p2, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMaxFreq:I

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMinFreq:I

    iput p2, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMaxFreq:I

    return-void
.end method

.method public setMwsBtSafeFreq(IIII)V
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMinFreq:I

    iput p2, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMaxFreq:I

    iput p3, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMinFreq:I

    iput p4, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMaxFreq:I

    return-void
.end method

.method public setSafeRxMaxFreq(I)V
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMaxFreq:I

    return-void
.end method

.method public setSafeRxMinFreq(I)V
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMinFreq:I

    return-void
.end method

.method public setSafeTxMaxFreq(I)V
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMaxFreq:I

    return-void
.end method

.method public setSafeTxMinFreq(I)V
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMinFreq:I

    return-void
.end method

.method public setSafeTxPowerNum(I)V
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerNum:I

    return-void
.end method

.method public setSafeTxPowerTable([I)V
    .locals 0

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxPowerTable:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RX["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMinFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeRxMaxFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] TX["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMinFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;->mSafeTxMaxFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
