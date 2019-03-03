.class public Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;
.super Ljava/lang/Object;
.source "MwsLteFrameInd.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;


# static fields
.field private static final LTE_BITMAP_FDD_SPECIAL_VALUE:I = 0xaaaaa

.field public static final LTE_BITMAP_SIZE:B = 0xat

.field public static final LTE_CPULEP_CPDLEP_IDX:I = 0x3

.field public static final LTE_DWPTS_IDX:I = 0x0

.field public static final LTE_FRAME_IN_US:S = 0x2710s

.field public static final LTE_GP_IDX:I = 0x2

.field public static final LTE_SF_BIDIR:B = 0x2t

.field public static final LTE_SF_DL:B = 0x0t

.field public static final LTE_SF_DURATIONS_TABLE:[[[S

.field public static final LTE_SF_IN_US:S = 0x3e8s

.field public static final LTE_SF_SP:B = 0x3t

.field public static final LTE_SF_UL:B = 0x1t

.field public static final LTE_UPPTS_IDX:I = 0x1

.field public static final PROP_NAME:Ljava/lang/String; = "mws.lte_frame_ind"

.field public static final SPECIAL_SUBFRAME_CONFIGURATION_NUMBER:I = 0xa

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"

.field public static final UNKNOWN:B = -0x1t


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private mLteBitmap:I

.field private mTddSpecialSubFrameNb:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 72
    new-array v0, v8, [[[S

    const/16 v1, 0xa

    new-array v1, v1, [[S

    new-array v2, v4, [S

    fill-array-data v2, :array_0

    aput-object v2, v1, v5

    new-array v2, v4, [S

    fill-array-data v2, :array_1

    aput-object v2, v1, v6

    new-array v2, v4, [S

    fill-array-data v2, :array_2

    aput-object v2, v1, v7

    new-array v2, v4, [S

    fill-array-data v2, :array_3

    aput-object v2, v1, v4

    new-array v2, v4, [S

    fill-array-data v2, :array_4

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-array v3, v4, [S

    fill-array-data v3, :array_5

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v4, [S

    fill-array-data v3, :array_6

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v4, [S

    fill-array-data v3, :array_7

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v4, [S

    fill-array-data v3, :array_8

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v4, [S

    fill-array-data v3, :array_9

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0xa

    new-array v1, v1, [[S

    new-array v2, v4, [S

    fill-array-data v2, :array_a

    aput-object v2, v1, v5

    new-array v2, v4, [S

    fill-array-data v2, :array_b

    aput-object v2, v1, v6

    new-array v2, v4, [S

    fill-array-data v2, :array_c

    aput-object v2, v1, v7

    new-array v2, v4, [S

    fill-array-data v2, :array_d

    aput-object v2, v1, v4

    new-array v2, v4, [S

    fill-array-data v2, :array_e

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-array v3, v4, [S

    fill-array-data v3, :array_f

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v4, [S

    fill-array-data v3, :array_10

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v4, [S

    fill-array-data v3, :array_11

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v4, [S

    fill-array-data v3, :array_12

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v4, [S

    fill-array-data v3, :array_13

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0xa

    new-array v1, v1, [[S

    new-array v2, v4, [S

    fill-array-data v2, :array_14

    aput-object v2, v1, v5

    new-array v2, v4, [S

    fill-array-data v2, :array_15

    aput-object v2, v1, v6

    new-array v2, v4, [S

    fill-array-data v2, :array_16

    aput-object v2, v1, v7

    new-array v2, v4, [S

    fill-array-data v2, :array_17

    aput-object v2, v1, v4

    new-array v2, v4, [S

    fill-array-data v2, :array_18

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-array v3, v4, [S

    fill-array-data v3, :array_19

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v4, [S

    fill-array-data v3, :array_1a

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v4, [S

    fill-array-data v3, :array_1b

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v4, [S

    fill-array-data v3, :array_1c

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v4, [S

    fill-array-data v3, :array_1d

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/16 v1, 0xa

    new-array v1, v1, [[S

    new-array v2, v4, [S

    fill-array-data v2, :array_1e

    aput-object v2, v1, v5

    new-array v2, v4, [S

    fill-array-data v2, :array_1f

    aput-object v2, v1, v6

    new-array v2, v4, [S

    fill-array-data v2, :array_20

    aput-object v2, v1, v7

    new-array v2, v4, [S

    fill-array-data v2, :array_21

    aput-object v2, v1, v4

    new-array v2, v4, [S

    fill-array-data v2, :array_22

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-array v3, v4, [S

    fill-array-data v3, :array_23

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v4, [S

    fill-array-data v3, :array_24

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v4, [S

    fill-array-data v3, :array_25

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v4, [S

    fill-array-data v3, :array_26

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v4, [S

    fill-array-data v3, :array_27

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->LTE_SF_DURATIONS_TABLE:[[[S

    return-void

    :array_0
    .array-data 2
        0xd6s
        0x47s
        0x2cbs
    .end array-data

    nop

    :array_1
    .array-data 2
        0x283s
        0x47s
        0x11es
    .end array-data

    nop

    :array_2
    .array-data 2
        0x2cas
        0x47s
        0xd7s
    .end array-data

    nop

    :array_3
    .array-data 2
        0x311s
        0x47s
        0x90s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x359s
        0x47s
        0x48s
    .end array-data

    nop

    :array_5
    .array-data 2
        0xd6s
        0x8es
        0x284s
    .end array-data

    nop

    :array_6
    .array-data 2
        0x283s
        0x8es
        0xd7s
    .end array-data

    nop

    :array_7
    .array-data 2
        0x2cas
        0x8es
        0x90s
    .end array-data

    nop

    :array_8
    .array-data 2
        0x311s
        0x8es
        0x49s
    .end array-data

    nop

    :array_9
    .array-data 2
        0x2d8s
        0x8es
        0x1aes
    .end array-data

    nop

    :array_a
    .array-data 2
        0xfas
        0x47s
        0x2a7s
    .end array-data

    nop

    :array_b
    .array-data 2
        0x29as
        0x47s
        0x107s
    .end array-data

    nop

    :array_c
    .array-data 2
        0x2ees
        0x47s
        0xb3s
    .end array-data

    nop

    :array_d
    .array-data 2
        0x341s
        0x47s
        0x60s
    .end array-data

    nop

    :array_e
    .array-data 2
        0xfas
        0x8es
        0x260s
    .end array-data

    nop

    :array_f
    .array-data 2
        0x29as
        0x8es
        0xc0s
    .end array-data

    nop

    :array_10
    .array-data 2
        0x2ees
        0x8es
        0x6cs
    .end array-data

    nop

    :array_11
    .array-data 2
        0x1a0s
        0x8es
        0x1bas
    .end array-data

    nop

    :array_12
    .array-data 2
        -0x1s
        -0x1s
        -0x1s
    .end array-data

    nop

    :array_13
    .array-data 2
        -0x1s
        -0x1s
        -0x1s
    .end array-data

    nop

    :array_14
    .array-data 2
        0xd6s
        0x53s
        0x2bfs
    .end array-data

    nop

    :array_15
    .array-data 2
        0x283s
        0x53s
        0x112s
    .end array-data

    nop

    :array_16
    .array-data 2
        0x2cas
        0x53s
        0xcbs
    .end array-data

    nop

    :array_17
    .array-data 2
        0x311s
        0x53s
        0x84s
    .end array-data

    nop

    :array_18
    .array-data 2
        0x359s
        0x53s
        0x3cs
    .end array-data

    nop

    :array_19
    .array-data 2
        0xd6s
        0xa9s
        0x269s
    .end array-data

    nop

    :array_1a
    .array-data 2
        0x283s
        0xa9s
        0xbcs
    .end array-data

    nop

    :array_1b
    .array-data 2
        0x2cas
        0xa9s
        0x75s
    .end array-data

    nop

    :array_1c
    .array-data 2
        0x311s
        0xa9s
        0x2es
    .end array-data

    nop

    :array_1d
    .array-data 2
        0x2d8s
        0xa9s
        0x193s
    .end array-data

    nop

    :array_1e
    .array-data 2
        0xfas
        0x53s
        0x29bs
    .end array-data

    nop

    :array_1f
    .array-data 2
        0x29as
        0x53s
        0xfbs
    .end array-data

    nop

    :array_20
    .array-data 2
        0x2ees
        0x53s
        0xa7s
    .end array-data

    nop

    :array_21
    .array-data 2
        0x341s
        0x53s
        0x54s
    .end array-data

    nop

    :array_22
    .array-data 2
        0xfas
        0xa6s
        0x248s
    .end array-data

    nop

    :array_23
    .array-data 2
        0x29as
        0xa6s
        0xa8s
    .end array-data

    nop

    :array_24
    .array-data 2
        0x2ees
        0xa6s
        0x54s
    .end array-data

    nop

    :array_25
    .array-data 2
        0x1a0s
        0xa6s
        0x1a2s
    .end array-data

    nop

    :array_26
    .array-data 2
        -0x1s
        -0x1s
        -0x1s
    .end array-data

    nop

    :array_27
    .array-data 2
        -0x1s
        -0x1s
        -0x1s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->mClassName:Ljava/lang/String;

    .line 46
    iput v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->mLteBitmap:I

    .line 47
    iput v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->mTddSpecialSubFrameNb:I

    .line 124
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "aLteBitmap"    # I
    .param p2, "aTddSpecialSubFrameNb"    # I

    .prologue
    const/4 v2, -0x1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->mClassName:Ljava/lang/String;

    .line 46
    iput v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->mLteBitmap:I

    .line 47
    iput v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->mTddSpecialSubFrameNb:I

    .line 127
    invoke-virtual {p0, p2, p1}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->setValues(II)V

    .line 128
    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;)V
    .locals 3
    .param p1, "anotherMwsLteFrameInd"    # Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    .prologue
    const/4 v2, -0x1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->mClassName:Ljava/lang/String;

    .line 46
    iput v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->mLteBitmap:I

    .line 47
    iput v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->mTddSpecialSubFrameNb:I

    .line 131
    invoke-virtual {p1}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->getTddSpecialSubFrameNb()I

    move-result v0

    invoke-virtual {p1}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->getLteBitmap()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->setValues(II)V

    .line 133
    return-void
.end method

.method public static final getLteBitmapArray(I)[B
    .locals 5
    .param p0, "aLteBitmap"    # I

    .prologue
    const/16 v4, 0xa

    .line 159
    new-array v0, v4, [B

    .line 160
    .local v0, "aLteBitmapArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 162
    const/4 v3, -0x1

    if-ne p0, v3, :cond_1

    .line 163
    const/4 v2, -0x1

    .line 171
    .local v2, "val":B
    :cond_0
    aput-byte v2, v0, v1

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v2    # "val":B
    :cond_1
    mul-int/lit8 v3, v1, 0x2

    shr-int v3, p0, v3

    and-int/lit8 v3, v3, 0x3

    int-to-byte v2, v3

    .line 166
    .restart local v2    # "val":B
    if-ltz v2, :cond_2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 167
    :cond_2
    const-string v3, "CWS_CELLCOEX_MGR"

    const-string v4, "MwsLteFrameInd::setLteBitmap() - Error! Invalid value."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v0, 0x0

    .line 173
    .end local v0    # "aLteBitmapArray":[B
    .end local v2    # "val":B
    :cond_3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 219
    if-nez p1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v1

    .line 221
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    .line 222
    goto :goto_0

    .line 223
    :cond_2
    instance-of v3, p1, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 226
    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    .line 227
    .local v0, "otherMyClass":Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;
    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->getTddSpecialSubFrameNb()I

    move-result v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->getTddSpecialSubFrameNb()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->getLteBitmap()I

    move-result v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->getLteBitmap()I

    move-result v4

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 229
    goto :goto_0
.end method

.method public getLteBitmap()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->mLteBitmap:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const-string v0, "mws.lte_frame_ind"

    return-object v0
.end method

.method public getTddSpecialSubFrameNb()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->mTddSpecialSubFrameNb:I

    return v0
.end method

.method public isModeFdd()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 245
    iget v3, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->mLteBitmap:I

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->getLteBitmapArray(I)[B

    move-result-object v1

    .line 247
    .local v1, "lteBitmap":[B
    if-nez v1, :cond_1

    .line 248
    const-string v3, "CWS_CELLCOEX_MGR"

    const-string v4, "MwsLteFrameInd::isModeFdd() - Error! lteBitmap is null. Return false by default."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    :goto_0
    return v2

    .line 254
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 255
    aget-byte v3, v1, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setValues(II)V
    .locals 0
    .param p1, "aTddSpecialSubFrameNb"    # I
    .param p2, "aLteBitmap"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->mTddSpecialSubFrameNb:I

    .line 141
    iput p2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->mLteBitmap:I

    .line 142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "i":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TddSpecialSubFrameNb: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->getTddSpecialSubFrameNb()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lteBitmap(int): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->getLteBitmap()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lteBitmap(array): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "s":Ljava/lang/String;
    iget v3, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->mLteBitmap:I

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->getLteBitmapArray(I)[B

    move-result-object v1

    .line 187
    .local v1, "ourLteBitmapArray":[B
    if-nez v1, :cond_1

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    :cond_0
    return-object v2

    .line 190
    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 191
    aget-byte v3, v1, v0

    packed-switch v3, :pswitch_data_0

    .line 208
    const-string v3, "CWS_CELLCOEX_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Invalid Periods Type received"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " D"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    goto :goto_1

    .line 196
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " U"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    goto :goto_1

    .line 199
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " B"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    goto :goto_1

    .line 202
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    goto :goto_1

    .line 205
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " X"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    goto :goto_1

    .line 191
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
