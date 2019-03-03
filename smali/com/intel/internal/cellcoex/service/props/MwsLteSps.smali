.class public Lcom/intel/internal/cellcoex/service/props/MwsLteSps;
.super Ljava/lang/Object;
.source "MwsLteSps.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;


# static fields
.field private static final DEFAULT_SPS_DURATION:I = 0x0

.field private static final DEFAULT_SPS_INITIAL_OFFSET:I = 0x0

.field private static final DEFAULT_SPS_PERIODICITY:I = 0x0

.field private static final DEFAULT_SPS_START_STOP:I = 0x0

.field public static final PROP_NAME:Ljava/lang/String; = "mws.lte_sps"

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private mSpsDuration:I

.field private mSpsInitialOffset:I

.field private mSpsPeriodicity:I

.field private mSpsStartStop:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mClassName:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->setSpsStartStop(I)V

    .line 42
    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->setSpsPeriodicity(I)V

    .line 43
    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->setSpsDuration(I)V

    .line 44
    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->setSpsInitialOffset(I)V

    .line 45
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "aStartStop"    # I
    .param p2, "aPeriod"    # I
    .param p3, "aDuration"    # I
    .param p4, "aOffset"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mClassName:Ljava/lang/String;

    .line 48
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->setSpsStartStop(I)V

    .line 49
    invoke-virtual {p0, p2}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->setSpsPeriodicity(I)V

    .line 50
    invoke-virtual {p0, p3}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->setSpsDuration(I)V

    .line 51
    invoke-virtual {p0, p4}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->setSpsInitialOffset(I)V

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 109
    if-nez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v1

    .line 111
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    .line 112
    goto :goto_0

    .line 113
    :cond_2
    instance-of v3, p1, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 115
    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;

    .line 116
    .local v0, "otherMyClass":Lcom/intel/internal/cellcoex/service/props/MwsLteSps;
    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->getSpsStartStop()I

    move-result v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->getSpsStartStop()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->getSpsPeriodicity()I

    move-result v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->getSpsPeriodicity()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->getSpsDuration()I

    move-result v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->getSpsDuration()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->getSpsInitialOffset()I

    move-result v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->getSpsInitialOffset()I

    move-result v4

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 120
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "mws.lte_sps"

    return-object v0
.end method

.method public getSpsDuration()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mSpsDuration:I

    return v0
.end method

.method public getSpsInitialOffset()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mSpsInitialOffset:I

    return v0
.end method

.method public getSpsPeriodicity()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mSpsPeriodicity:I

    return v0
.end method

.method public getSpsStartStop()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mSpsStartStop:I

    return v0
.end method

.method public setSpsDuration(I)V
    .locals 3
    .param p1, "aDuration"    # I

    .prologue
    .line 72
    if-gez p1, :cond_0

    .line 73
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setSpsDuration() - Error! Invalid value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mSpsDuration:I

    goto :goto_0
.end method

.method public setSpsInitialOffset(I)V
    .locals 3
    .param p1, "aOffset"    # I

    .prologue
    .line 79
    if-gez p1, :cond_0

    .line 80
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setSpsInitialOffset() - Error! Invalid value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mSpsInitialOffset:I

    goto :goto_0
.end method

.method public setSpsPeriodicity(I)V
    .locals 3
    .param p1, "aPeriod"    # I

    .prologue
    .line 65
    if-gez p1, :cond_0

    .line 66
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setSpsPeriodicity() - Error! Invalid value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mSpsPeriodicity:I

    goto :goto_0
.end method

.method public setSpsStartStop(I)V
    .locals 3
    .param p1, "aStartStop"    # I

    .prologue
    .line 58
    if-gez p1, :cond_0

    .line 59
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setSpsStartStop() - Error! Invalid value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mSpsStartStop:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(StartStop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->getSpsStartStop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Period: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->getSpsPeriodicity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->getSpsDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->getSpsInitialOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
