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

    .prologue
    const/16 v5, -0x47e

    const/16 v4, -0x5dc

    const/4 v3, 0x0

    const/16 v2, -0x96

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0x1f

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    .line 65
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

    .line 72
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->resetAll()V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsDlFrameSyncEnc(I)V

    .line 76
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsRxPriTmin(I)V

    .line 77
    const/16 v0, 0xfa

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsRxPriResendTime(I)V

    .line 78
    invoke-virtual {p0, v4}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsFrameSyncAssertOffset(I)V

    .line 79
    invoke-virtual {p0, v4}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsFrameSyncDeassertOffset(I)V

    .line 80
    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsRxAssertOffset(I)V

    .line 81
    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsRxDeassertOffset(I)V

    .line 82
    invoke-virtual {p0, v4}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsTxAssertOffset(I)V

    .line 83
    invoke-virtual {p0, v4}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsTxDeassertOffset(I)V

    .line 84
    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsPatternAssertOffset(I)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsPatternDeassertOffset(I)V

    .line 86
    invoke-virtual {p0, v3}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsInactivityDurationAssertOffset(I)V

    .line 87
    invoke-virtual {p0, v3}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsInactivityDurationDeassertOffset(I)V

    .line 88
    invoke-virtual {p0, v5}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsScanFreqAssertOffset(I)V

    .line 89
    invoke-virtual {p0, v5}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsScanFreqDeassertOffset(I)V

    .line 90
    invoke-virtual {p0, v3}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsTxSafePowerAssertOffset(I)V

    .line 91
    invoke-virtual {p0, v3}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsTxSafePowerDeassertOffset(I)V

    .line 92
    invoke-virtual {p0, v3}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsTxAllowedAssertOffset(I)V

    .line 93
    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsTxAllowedDeassertOffset(I)V

    .line 94
    invoke-virtual {p0, v3}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsTxOffAssert(I)V

    .line 95
    invoke-virtual {p0, v3}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsTxOffDeassert(I)V

    .line 96
    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsFrameSyncDlAssertOffset(I)V

    .line 97
    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsFrameSyncDlDeassertOffset(I)V

    .line 98
    invoke-virtual {p0, v4}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsPucchIndexAssertOffset(I)V

    .line 99
    invoke-virtual {p0, v4}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->setMwsPucchIndexDeassertOffset(I)V

    .line 100
    return-void
.end method

.method public constructor <init>([I)V
    .locals 6
    .param p1, "params"    # [I

    .prologue
    const/16 v5, 0x1f

    const/16 v4, 0xb

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    .line 65
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

    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "i":I
    array-length v1, p1

    if-eq v1, v5, :cond_1

    .line 106
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

    .line 107
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->resetAll()V

    .line 120
    :cond_0
    return-void

    .line 111
    :cond_1
    aget v1, p1, v4

    if-eqz v1, :cond_2

    aget v1, p1, v4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 112
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

    .line 115
    const/4 v1, 0x0

    aput v1, p1, v4

    .line 118
    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 119
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resetAll()V
    .locals 3

    .prologue
    .line 442
    const/4 v0, 0x0

    .line 444
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 415
    const/4 v0, 0x0

    .line 417
    .local v0, "i":I
    if-nez p1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v2

    .line 419
    :cond_1
    if-ne p1, p0, :cond_2

    move v2, v3

    .line 420
    goto :goto_0

    .line 421
    :cond_2
    instance-of v4, p1, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 424
    check-cast v1, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;

    .line 425
    .local v1, "otherMyClass":Lcom/intel/internal/cellcoex/service/props/MwsSigParams;
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 426
    iget-object v4, v1, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    aget v5, v5, v0

    if-ne v4, v5, :cond_0

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 430
    goto :goto_0
.end method

.method public getMwsDlFrameSyncEnc()I
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xb

    aget v0, v0, v1

    return v0
.end method

.method public getMwsFrameSyncAssertJitter()I
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMwsFrameSyncAssertOffset()I
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMwsFrameSyncDeassertOffset()I
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xe

    aget v0, v0, v1

    return v0
.end method

.method public getMwsFrameSyncDlAssertOffset()I
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x1b

    aget v0, v0, v1

    return v0
.end method

.method public getMwsFrameSyncDlDeassertOffset()I
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x1c

    aget v0, v0, v1

    return v0
.end method

.method public getMwsInactivityDurationAssertOffset()I
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x11

    aget v0, v0, v1

    return v0
.end method

.method public getMwsInactivityDurationDeassertOffset()I
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x12

    aget v0, v0, v1

    return v0
.end method

.method public getMwsPatternAssertOffset()I
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xf

    aget v0, v0, v1

    return v0
.end method

.method public getMwsPatternDeassertOffset()I
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    return v0
.end method

.method public getMwsPiorityAssertOffsetRequest()I
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xa

    aget v0, v0, v1

    return v0
.end method

.method public getMwsPucchIndexAssertOffset()I
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x1d

    aget v0, v0, v1

    return v0
.end method

.method public getMwsPucchIndexDeassertOffset()I
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x1e

    aget v0, v0, v1

    return v0
.end method

.method public getMwsRxAssertJitter()I
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getMwsRxAssertOffset()I
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getMwsRxDeassertJitter()I
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getMwsRxDeassertOffset()I
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getMwsRxPriResendTime()I
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    return v0
.end method

.method public getMwsRxPriTmin()I
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xd

    aget v0, v0, v1

    return v0
.end method

.method public getMwsScanFreqAssertOffset()I
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x13

    aget v0, v0, v1

    return v0
.end method

.method public getMwsScanFreqDeassertOffset()I
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    return v0
.end method

.method public getMwsTxAllowedAssertOffset()I
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x17

    aget v0, v0, v1

    return v0
.end method

.method public getMwsTxAllowedDeassertOffset()I
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x18

    aget v0, v0, v1

    return v0
.end method

.method public getMwsTxAssertJitter()I
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    return v0
.end method

.method public getMwsTxAssertOffset()I
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public getMwsTxDeassertJitter()I
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    return v0
.end method

.method public getMwsTxDeassertOffset()I
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    return v0
.end method

.method public getMwsTxOffAssert()I
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x19

    aget v0, v0, v1

    return v0
.end method

.method public getMwsTxOffDeassert()I
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x1a

    aget v0, v0, v1

    return v0
.end method

.method public getMwsTxSafePowerAssertOffset()I
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x15

    aget v0, v0, v1

    return v0
.end method

.method public getMwsTxSafePowerDeassertOffset()I
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x16

    aget v0, v0, v1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    const-string v0, "mws.sig_params"

    return-object v0
.end method

.method public isUnknown()Z
    .locals 3

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 126
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 127
    const/4 v1, 0x1

    .line 130
    :goto_1
    return v1

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setMwsDlFrameSyncEnc(I)V
    .locals 3
    .param p1, "aInt"    # I

    .prologue
    .line 181
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 182
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

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xb

    aput p1, v0, v1

    goto :goto_0
.end method

.method public setMwsFrameSyncAssertJitter(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 142
    return-void
.end method

.method public setMwsFrameSyncAssertOffset(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 138
    return-void
.end method

.method public setMwsFrameSyncDeassertOffset(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xe

    aput p1, v0, v1

    .line 198
    return-void
.end method

.method public setMwsFrameSyncDlAssertOffset(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x1b

    aput p1, v0, v1

    .line 250
    return-void
.end method

.method public setMwsFrameSyncDlDeassertOffset(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x1c

    aput p1, v0, v1

    .line 254
    return-void
.end method

.method public setMwsInactivityDurationAssertOffset(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x11

    aput p1, v0, v1

    .line 210
    return-void
.end method

.method public setMwsInactivityDurationDeassertOffset(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x12

    aput p1, v0, v1

    .line 214
    return-void
.end method

.method public setMwsPatternAssertOffset(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xf

    aput p1, v0, v1

    .line 202
    return-void
.end method

.method public setMwsPatternDeassertOffset(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x10

    aput p1, v0, v1

    .line 206
    return-void
.end method

.method public setMwsPiorityAssertOffsetRequest(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xa

    aput p1, v0, v1

    .line 178
    return-void
.end method

.method public setMwsPucchIndexAssertOffset(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x1d

    aput p1, v0, v1

    .line 258
    return-void
.end method

.method public setMwsPucchIndexDeassertOffset(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x1e

    aput p1, v0, v1

    .line 262
    return-void
.end method

.method public setMwsRxAssertJitter(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 150
    return-void
.end method

.method public setMwsRxAssertOffset(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 146
    return-void
.end method

.method public setMwsRxDeassertJitter(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x5

    aput p1, v0, v1

    .line 158
    return-void
.end method

.method public setMwsRxDeassertOffset(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 154
    return-void
.end method

.method public setMwsRxPriResendTime(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 190
    return-void
.end method

.method public setMwsRxPriTmin(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0xd

    aput p1, v0, v1

    .line 194
    return-void
.end method

.method public setMwsScanFreqAssertOffset(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x13

    aput p1, v0, v1

    .line 218
    return-void
.end method

.method public setMwsScanFreqDeassertOffset(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x14

    aput p1, v0, v1

    .line 222
    return-void
.end method

.method public setMwsTxAllowedAssertOffset(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x17

    aput p1, v0, v1

    .line 234
    return-void
.end method

.method public setMwsTxAllowedDeassertOffset(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x18

    aput p1, v0, v1

    .line 238
    return-void
.end method

.method public setMwsTxAssertJitter(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x7

    aput p1, v0, v1

    .line 166
    return-void
.end method

.method public setMwsTxAssertOffset(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/4 v1, 0x6

    aput p1, v0, v1

    .line 162
    return-void
.end method

.method public setMwsTxDeassertJitter(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x9

    aput p1, v0, v1

    .line 174
    return-void
.end method

.method public setMwsTxDeassertOffset(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x8

    aput p1, v0, v1

    .line 170
    return-void
.end method

.method public setMwsTxOffAssert(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x19

    aput p1, v0, v1

    .line 242
    return-void
.end method

.method public setMwsTxOffDeassert(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x1a

    aput p1, v0, v1

    .line 246
    return-void
.end method

.method public setMwsTxSafePowerAssertOffset(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x15

    aput p1, v0, v1

    .line 226
    return-void
.end method

.method public setMwsTxSafePowerDeassertOffset(I)V
    .locals 2
    .param p1, "aInt"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;->mSigParams:[I

    const/16 v1, 0x16

    aput p1, v0, v1

    .line 230
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 396
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
