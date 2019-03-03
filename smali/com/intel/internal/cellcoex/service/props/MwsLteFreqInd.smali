.class public Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;
.super Ljava/lang/Object;
.source "MwsLteFreqInd.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;


# static fields
.field public static final PROP_NAME:Ljava/lang/String; = "mws.lte_freq_ind"

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"

.field public static final UNKNOWN:I = -0x1


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private mDlBw:I

.field private mDlFreq:I

.field private mUlBw:I

.field private mUlFreq:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mClassName:Ljava/lang/String;

    .line 25
    iput v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlFreq:I

    .line 26
    iput v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlBw:I

    .line 27
    iput v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlFreq:I

    .line 28
    iput v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlBw:I

    .line 31
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 3
    .param p1, "aDlFreq"    # I
    .param p2, "aDlBw"    # I
    .param p3, "aUlFreq"    # I
    .param p4, "aUlBw"    # I

    .prologue
    const/4 v2, -0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mClassName:Ljava/lang/String;

    .line 25
    iput v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlFreq:I

    .line 26
    iput v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlBw:I

    .line 27
    iput v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlFreq:I

    .line 28
    iput v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlBw:I

    .line 41
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlFreq:I

    .line 42
    iput p2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlBw:I

    .line 43
    iput p3, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlFreq:I

    .line 44
    iput p4, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlBw:I

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;)V
    .locals 3
    .param p1, "anotherMwsLteFreqInd"    # Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;

    .prologue
    const/4 v2, -0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mClassName:Ljava/lang/String;

    .line 25
    iput v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlFreq:I

    .line 26
    iput v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlBw:I

    .line 27
    iput v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlFreq:I

    .line 28
    iput v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlBw:I

    .line 34
    invoke-virtual {p1}, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->getDlFreq()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlFreq:I

    .line 35
    invoke-virtual {p1}, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->getDlBw()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlBw:I

    .line 36
    invoke-virtual {p1}, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->getUlFreq()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlFreq:I

    .line 37
    invoke-virtual {p1}, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->getUlBw()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlBw:I

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    instance-of v3, p1, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 111
    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;

    .line 112
    .local v0, "otherMyClass":Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;
    iget v3, v0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlFreq:I

    iget v4, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlFreq:I

    if-ne v3, v4, :cond_0

    iget v3, v0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlBw:I

    iget v4, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlBw:I

    if-ne v3, v4, :cond_0

    iget v3, v0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlFreq:I

    iget v4, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlFreq:I

    if-ne v3, v4, :cond_0

    iget v3, v0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlBw:I

    iget v4, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlBw:I

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 118
    goto :goto_0
.end method

.method public getDlBw()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlBw:I

    return v0
.end method

.method public getDlFreq()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlFreq:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "mws.lte_freq_ind"

    return-object v0
.end method

.method public getUlBw()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlBw:I

    return v0
.end method

.method public getUlFreq()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlFreq:I

    return v0
.end method

.method public setDlBw(I)V
    .locals 0
    .param p1, "aDlBw"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlBw:I

    .line 56
    return-void
.end method

.method public setDlFreq(I)V
    .locals 0
    .param p1, "aDlFreq"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlFreq:I

    .line 52
    return-void
.end method

.method public setUlBw(I)V
    .locals 0
    .param p1, "aUlBw"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlBw:I

    .line 64
    return-void
.end method

.method public setUlFreq(I)V
    .locals 0
    .param p1, "aUlFreq"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlFreq:I

    .line 60
    return-void
.end method

.method public setValues(IIII)V
    .locals 0
    .param p1, "aDlFreq"    # I
    .param p2, "aDlBw"    # I
    .param p3, "aUlFreq"    # I
    .param p4, "aUlBw"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlFreq:I

    .line 68
    iput p2, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlBw:I

    .line 69
    iput p3, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlFreq:I

    .line 70
    iput p4, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlBw:I

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DL freq= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DL Bandwidth= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mDlBw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UL freq= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UL Bandwidth= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;->mUlBw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
