.class public Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;
.super Ljava/lang/Object;
.source "MwsBtCoexIdcParams.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;


# static fields
.field public static final PROP_NAME:Ljava/lang/String; = "mws.bt.coexidcparams"

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"

.field public static final UNKNOWN:I = -0x1


# instance fields
.field private mBtNoiseFigure:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;->mBtNoiseFigure:I

    .line 28
    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;->mBtNoiseFigure:I

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "aBtNoiseFigure"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;->mBtNoiseFigure:I

    .line 36
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;->mBtNoiseFigure:I

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;)V
    .locals 1
    .param p1, "anotherMwsBtCoexIdcParams"    # Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;->mBtNoiseFigure:I

    .line 32
    invoke-virtual {p1}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;->getBtNoiseFigure()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;->mBtNoiseFigure:I

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    if-nez p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 65
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    instance-of v3, p1, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 69
    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;

    .line 70
    .local v0, "otherMyClass":Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;
    iget v3, v0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;->mBtNoiseFigure:I

    iget v4, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;->mBtNoiseFigure:I

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 73
    goto :goto_0
.end method

.method public getBtNoiseFigure()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;->mBtNoiseFigure:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "mws.bt.coexidcparams"

    return-object v0
.end method

.method public setBtNoiseFigure(I)V
    .locals 0
    .param p1, "aBtNoiseFigure"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;->mBtNoiseFigure:I

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BtNoiseFigure = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;->mBtNoiseFigure:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
