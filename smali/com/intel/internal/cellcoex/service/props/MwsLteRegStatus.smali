.class public Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;
.super Ljava/lang/Object;
.source "MwsLteRegStatus.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$1;,
        Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;
    }
.end annotation


# static fields
.field private static final AGGRESSIVE_LTE_BANDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LTE_BAND_PREFIX:Ljava/lang/String; = "BAND_LTE_"

.field public static final PROP_NAME:Ljava/lang/String; = "mws.lte_reg_status"

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"


# instance fields
.field private mLteRegBand:Ljava/lang/String;

.field private mLteRegBandNum:I

.field public mLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->AGGRESSIVE_LTE_BANDS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->RF_OFF:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    const-string v0, ""

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegBand:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegBandNum:I

    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    invoke-virtual {p0, p2}, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->setLteRegBand(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    iget-object v0, p1, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegBand:Ljava/lang/String;

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegBand:Ljava/lang/String;

    iget v0, p1, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegBandNum:I

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegBandNum:I

    return-void
.end method

.method private static final extractLteRegBandInt(Ljava/lang/String;)I
    .locals 5

    const/4 v1, -0x1

    :try_start_0
    const-string v2, "BAND_LTE_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MwsLteRegStatus: can\'t extract Lte Band from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MwsLteRegStatus: can\'t extract Lte Band from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
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
    if-ne p0, p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    instance-of v3, p1, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    iget-object v3, v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegBand:Ljava/lang/String;

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegBand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getLteRegBand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegBand:Ljava/lang/String;

    return-object v0
.end method

.method public getLteRegBandNum()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegBandNum:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "mws.lte_reg_status"

    return-object v0
.end method

.method public isAgressive()Z
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->REGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->AGGRESSIVE_LTE_BANDS:Ljava/util/List;

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegBandNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLteRegBand(Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BAND_LTE_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LteRegStatus: trying to set band with invalid string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegBand:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegBandNum:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->extractLteRegBandInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegBandNum:I

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegBand:Ljava/lang/String;

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LteRegStatus: set band with string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegBand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resulted in numband "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegBandNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "(lteRegStatus="

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$1;->$SwitchMap$com$intel$internal$cellcoex$service$props$MwsLteRegStatus$LteStatus:[I

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    invoke-virtual {v2}, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RF_OFF, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lteRegBand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegBand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NOT_REGISTERED, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "REGISTERED, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
