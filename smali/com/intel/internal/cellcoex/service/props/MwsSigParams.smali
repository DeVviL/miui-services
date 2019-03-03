.class public Lcom/intel/internal/cellcoex/service/props/MwsSigParams;
.super Ljava/lang/Object;
.source "MwsSigParams.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;


# static fields
.field private static final DEFAULT_SIG_PARAM_INT_VALUE:I = 0x0

.field public static final INDEXOF_DL_FRAME_SYNC_ENC:I = 0xb

.field public static final INDEXOF_FRAME_SYNC_ASSERT_JITTER:I = 0x1

.field public static final INDEXOF_FRAME_SYNC_ASSERT_OFFSET:I = 0x0

.field public static final INDEXOF_FRAME_SYNC_DEASSERT_OFFSET:I = 0xe

.field public static final INDEXOF_FRAME_SYNC_DL_ASSERT_OFFSET:I = 0x1b

.field public static final INDEXOF_FRAME_SYNC_DL_DEASSERT_OFFSET:I = 0x1c

.field public static final INDEXOF_INACTIVITY_DURATION_ASSERT_OFFSET:I = 0x11

.field public static final INDEXOF_INACTIVITY_DURATION_DEASSERT_OFFSET:I = 0x12

.field public static final INDEXOF_PATTERN_ASSERT_OFFSET:I = 0xf

.field public static final INDEXOF_PATTERN_DEASSERT_OFFSET:I = 0x10

.field public static final INDEXOF_PIORITY_ASSERT_OFFSET_REQUEST:I = 0xa

.field public static final INDEXOF_PUCCH_INDEX_ASSERT_OFFSET:I = 0x1d

.field public static final INDEXOF_PUCCH_INDEX_DEASSERT_OFFSET:I = 0x1e

.field public static final INDEXOF_RX_ASSERT_JITTER:I = 0x3

.field public static final INDEXOF_RX_ASSERT_OFFSET:I = 0x2

.field public static final INDEXOF_RX_DEASSERT_JITTER:I = 0x5

.field public static final INDEXOF_RX_DEASSERT_OFFSET:I = 0x4

.field public static final INDEXOF_RX_PRI_RESEND_TIME:I = 0xc

.field public static final INDEXOF_RX_PRI_TMIN:I = 0xd

.field public static final INDEXOF_SCAN_FREQ_ASSERT_OFFSET:I = 0x13

.field public static final INDEXOF_SCAN_FREQ_DEASSERT_OFFSET:I = 0x14

.field public static final INDEXOF_TX_ALLOWED_ASSERT_OFFSET:I = 0x17

.field public static final INDEXOF_TX_ALLOWED_DEASSERT_OFFSET:I = 0x18

.field public static final INDEXOF_TX_ASSERT_JITTER:I = 0x7

.field public static final INDEXOF_TX_ASSERT_OFFSET:I = 0x6

.field public static final INDEXOF_TX_DEASSERT_JITTER:I = 0x9

.field public static final INDEXOF_TX_DEASSERT_OFFSET:I = 0x8

.field public static final INDEXOF_TX_OFF_ASSERT_OFFSET:I = 0x19

.field public static final INDEXOF_TX_OFF_DEASSERT_OFFSET:I = 0x1a

.field public static final INDEXOF_TX_SAFE_POWER_ASSERT_OFFSET:I = 0x15

.field public static final INDEXOF_TX_SAFE_POWER_DEASSERT_OFFSET:I = 0x16

.field public static final NB_SIG_PARAMS:I = 0x1f

.field public static final PROP_NAME:Ljava/lang/String; = "mws.sig_params"

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"

.field public static final UNKNOWN:I = -0x1


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final mSigParams:[I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/16 v5, -0x47e

    const/16 v4, -0x5dc

    const/4 v3, 0x0

    const/16 v2, -0x96

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mClassName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->resetAll()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsDlFrameSyncEnc(I)V

    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsRxPriTmin(I)V

    const/16 v0, 0xfa

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsRxPriResendTime(I)V

    invoke-virtual {p0, v4}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsFrameSyncAssertOffset(I)V

    invoke-virtual {p0, v4}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsFrameSyncDeassertOffset(I)V

    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsRxAssertOffset(I)V

    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsRxDeassertOffset(I)V

    invoke-virtual {p0, v4}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsTxAssertOffset(I)V

    invoke-virtual {p0, v4}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsTxDeassertOffset(I)V

    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsPatternAssertOffset(I)V

    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsPatternDeassertOffset(I)V

    invoke-virtual {p0, v3}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsInactivityDurationAssertOffset(I)V

    invoke-virtual {p0, v3}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsInactivityDurationDeassertOffset(I)V

    invoke-virtual {p0, v5}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsScanFreqAssertOffset(I)V

    invoke-virtual {p0, v5}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsScanFreqDeassertOffset(I)V

    invoke-virtual {p0, v3}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsTxSafePowerAssertOffset(I)V

    invoke-virtual {p0, v3}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsTxSafePowerDeassertOffset(I)V

    invoke-virtual {p0, v3}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsTxAllowedAssertOffset(I)V

    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsTxAllowedDeassertOffset(I)V

    invoke-virtual {p0, v3}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsTxOffAssert(I)V

    invoke-virtual {p0, v3}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsTxOffDeassert(I)V

    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsFrameSyncDlAssertOffset(I)V

    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsFrameSyncDlDeassertOffset(I)V

    invoke-virtual {p0, v4}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsPucchIndexAssertOffset(I)V

    invoke-virtual {p0, v4}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsPucchIndexDeassertOffset(I)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 6

    const/16 v5, 0x1f

    const/16 v4, 0xb

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v5, [I

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

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

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mClassName:Ljava/lang/String;

    const/4 v0, 0x0

    array-length v1, p1

    if-eq v1, v5, :cond_1

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MwsSigParams() - Error! Invalid array size."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->resetAll()V

    :cond_0
    return-void

    :cond_1
    aget v1, p1, v4

    if-eqz v1, :cond_2

    aget v1, p1, v4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MwsSigParams() - Error! Invalid DL_FRAME_SYNC_ENC value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(should be 0/1). Set it to 0."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    aput v1, p1, v4

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resetAll()V
    .locals 3

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-ne p1, p0, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    instance-of v4, p1, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;

    if-eqz v4, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    array-length v4, v4

    if-ge v0, v4, :cond_3

    iget-object v4, v1, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    aget v5, v5, v0

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public getMwsDlFrameSyncEnc()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xb

    aget v0, v0, v1

    return v0
.end method

.method public getMwsFrameSyncAssertJitter()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMwsFrameSyncAssertOffset()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMwsFrameSyncDeassertOffset()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xe

    aget v0, v0, v1

    return v0
.end method

.method public getMwsFrameSyncDlAssertOffset()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x1b

    aget v0, v0, v1

    return v0
.end method

.method public getMwsFrameSyncDlDeassertOffset()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x1c

    aget v0, v0, v1

    return v0
.end method

.method public getMwsInactivityDurationAssertOffset()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x11

    aget v0, v0, v1

    return v0
.end method

.method public getMwsInactivityDurationDeassertOffset()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x12

    aget v0, v0, v1

    return v0
.end method

.method public getMwsPatternAssertOffset()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xf

    aget v0, v0, v1

    return v0
.end method

.method public getMwsPatternDeassertOffset()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    return v0
.end method

.method public getMwsPiorityAssertOffsetRequest()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xa

    aget v0, v0, v1

    return v0
.end method

.method public getMwsPucchIndexAssertOffset()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x1d

    aget v0, v0, v1

    return v0
.end method

.method public getMwsPucchIndexDeassertOffset()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x1e

    aget v0, v0, v1

    return v0
.end method

.method public getMwsRxAssertJitter()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getMwsRxAssertOffset()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getMwsRxDeassertJitter()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getMwsRxDeassertOffset()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getMwsRxPriResendTime()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    return v0
.end method

.method public getMwsRxPriTmin()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xd

    aget v0, v0, v1

    return v0
.end method

.method public getMwsScanFreqAssertOffset()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x13

    aget v0, v0, v1

    return v0
.end method

.method public getMwsScanFreqDeassertOffset()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    return v0
.end method

.method public getMwsTxAllowedAssertOffset()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x17

    aget v0, v0, v1

    return v0
.end method

.method public getMwsTxAllowedDeassertOffset()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x18

    aget v0, v0, v1

    return v0
.end method

.method public getMwsTxAssertJitter()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    return v0
.end method

.method public getMwsTxAssertOffset()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public getMwsTxDeassertJitter()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    return v0
.end method

.method public getMwsTxDeassertOffset()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    return v0
.end method

.method public getMwsTxOffAssert()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x19

    aget v0, v0, v1

    return v0
.end method

.method public getMwsTxOffDeassert()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x1a

    aget v0, v0, v1

    return v0
.end method

.method public getMwsTxSafePowerAssertOffset()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x15

    aget v0, v0, v1

    return v0
.end method

.method public getMwsTxSafePowerDeassertOffset()I
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x16

    aget v0, v0, v1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "mws.sig_params"

    return-object v0
.end method

.method public isUnknown()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setMwsDlFrameSyncEnc(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setMwsDlFrameSyncEnc() - Error! Invalid value provided"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xb

    aput p1, v0, v1

    goto :goto_0
.end method

.method public setMwsFrameSyncAssertJitter(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public setMwsFrameSyncAssertOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public setMwsFrameSyncDeassertOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xe

    aput p1, v0, v1

    return-void
.end method

.method public setMwsFrameSyncDlAssertOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x1b

    aput p1, v0, v1

    return-void
.end method

.method public setMwsFrameSyncDlDeassertOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x1c

    aput p1, v0, v1

    return-void
.end method

.method public setMwsInactivityDurationAssertOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x11

    aput p1, v0, v1

    return-void
.end method

.method public setMwsInactivityDurationDeassertOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x12

    aput p1, v0, v1

    return-void
.end method

.method public setMwsPatternAssertOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xf

    aput p1, v0, v1

    return-void
.end method

.method public setMwsPatternDeassertOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x10

    aput p1, v0, v1

    return-void
.end method

.method public setMwsPiorityAssertOffsetRequest(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xa

    aput p1, v0, v1

    return-void
.end method

.method public setMwsPucchIndexAssertOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x1d

    aput p1, v0, v1

    return-void
.end method

.method public setMwsPucchIndexDeassertOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x1e

    aput p1, v0, v1

    return-void
.end method

.method public setMwsRxAssertJitter(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x3

    aput p1, v0, v1

    return-void
.end method

.method public setMwsRxAssertOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x2

    aput p1, v0, v1

    return-void
.end method

.method public setMwsRxDeassertJitter(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x5

    aput p1, v0, v1

    return-void
.end method

.method public setMwsRxDeassertOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x4

    aput p1, v0, v1

    return-void
.end method

.method public setMwsRxPriResendTime(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xc

    aput p1, v0, v1

    return-void
.end method

.method public setMwsRxPriTmin(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xd

    aput p1, v0, v1

    return-void
.end method

.method public setMwsScanFreqAssertOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x13

    aput p1, v0, v1

    return-void
.end method

.method public setMwsScanFreqDeassertOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x14

    aput p1, v0, v1

    return-void
.end method

.method public setMwsTxAllowedAssertOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x17

    aput p1, v0, v1

    return-void
.end method

.method public setMwsTxAllowedDeassertOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x18

    aput p1, v0, v1

    return-void
.end method

.method public setMwsTxAssertJitter(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x7

    aput p1, v0, v1

    return-void
.end method

.method public setMwsTxAssertOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x6

    aput p1, v0, v1

    return-void
.end method

.method public setMwsTxDeassertJitter(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x9

    aput p1, v0, v1

    return-void
.end method

.method public setMwsTxDeassertOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x8

    aput p1, v0, v1

    return-void
.end method

.method public setMwsTxOffAssert(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x19

    aput p1, v0, v1

    return-void
.end method

.method public setMwsTxOffDeassert(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x1a

    aput p1, v0, v1

    return-void
.end method

.method public setMwsTxSafePowerAssertOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x15

    aput p1, v0, v1

    return-void
.end method

.method public setMwsTxSafePowerDeassertOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x16

    aput p1, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(getMwsFrameSyncAssertOffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->getMwsFrameSyncAssertOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getMwsFrameSyncAssertJitter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->getMwsFrameSyncAssertJitter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getMwsRxAssertOffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->getMwsRxAssertOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getMwsRxAssertJitter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->getMwsRxAssertJitter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getMwsRxDeassertOffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->getMwsRxDeassertOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getMwsRxDeassertJitter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->getMwsRxDeassertJitter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getMwsTxAssertOffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->getMwsTxAssertOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getMwsTxAssertJitter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->getMwsTxAssertJitter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getMwsTxDeassertOffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->getMwsTxDeassertOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getMwsTxDeassertJitter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->getMwsTxDeassertJitter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getMwsPiorityAssertOffsetRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->getMwsPiorityAssertOffsetRequest()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getMwsDlFrameSyncEnc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->getMwsDlFrameSyncEnc()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getMwsRxPriResendTime: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->getMwsRxPriResendTime()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getMwsRxPriTmin: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->getMwsRxPriTmin()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
