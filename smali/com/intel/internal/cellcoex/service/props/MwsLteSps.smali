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

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->setSpsStartStop(I)V

    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->setSpsPeriodicity(I)V

    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->setSpsDuration(I)V

    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->setSpsInitialOffset(I)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->setSpsStartStop(I)V

    invoke-virtual {p0, p2}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->setSpsPeriodicity(I)V

    invoke-virtual {p0, p3}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->setSpsDuration(I)V

    invoke-virtual {p0, p4}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->setSpsInitialOffset(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    instance-of v3, p1, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;

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

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "mws.lte_sps"

    return-object v0
.end method

.method public getSpsDuration()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mSpsDuration:I

    return v0
.end method

.method public getSpsInitialOffset()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mSpsInitialOffset:I

    return v0
.end method

.method public getSpsPeriodicity()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mSpsPeriodicity:I

    return v0
.end method

.method public getSpsStartStop()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mSpsStartStop:I

    return v0
.end method

.method public setSpsDuration(I)V
    .locals 3

    if-gez p1, :cond_0

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

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mSpsDuration:I

    goto :goto_0
.end method

.method public setSpsInitialOffset(I)V
    .locals 3

    if-gez p1, :cond_0

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

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mSpsInitialOffset:I

    goto :goto_0
.end method

.method public setSpsPeriodicity(I)V
    .locals 3

    if-gez p1, :cond_0

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

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mSpsPeriodicity:I

    goto :goto_0
.end method

.method public setSpsStartStop(I)V
    .locals 3

    if-gez p1, :cond_0

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

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;->mSpsStartStop:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

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
