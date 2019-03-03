.class public Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;
.super Ljava/lang/Object;
.source "MwsCoexIdcRtParams.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;


# static fields
.field public static final PROP_NAME:Ljava/lang/String; = "mws.idcRTparams"

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"


# instance fields
.field private final mClassName:Ljava/lang/String;

.field public mDlFrameSyncEn:B

.field public mRxPriResendTime:I

.field public mRxPriTmin:B


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mClassName:Ljava/lang/String;

    iput-byte v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mDlFrameSyncEn:B

    iput-byte v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mRxPriTmin:B

    iput v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mRxPriResendTime:I

    return-void
.end method

.method public constructor <init>(BBI)V
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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mClassName:Ljava/lang/String;

    iput-byte p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mDlFrameSyncEn:B

    iput-byte p2, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mRxPriTmin:B

    iput p3, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mRxPriResendTime:I

    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;)V
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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mClassName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->getDlFrameSyncEn()B

    move-result v0

    iput-byte v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mDlFrameSyncEn:B

    invoke-virtual {p1}, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->getRxPriTmin()B

    move-result v0

    iput-byte v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mRxPriTmin:B

    invoke-virtual {p1}, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->getRxPriResendTime()I

    move-result v0

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mRxPriResendTime:I

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
    instance-of v3, p1, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->getDlFrameSyncEn()B

    move-result v3

    iget-byte v4, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mDlFrameSyncEn:B

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->getRxPriTmin()B

    move-result v3

    iget-byte v4, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mRxPriTmin:B

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->getRxPriResendTime()I

    move-result v3

    iget v4, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mRxPriResendTime:I

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getDlFrameSyncEn()B
    .locals 1

    iget-byte v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mDlFrameSyncEn:B

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "mws.idcRTparams"

    return-object v0
.end method

.method public getRxPriResendTime()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mRxPriResendTime:I

    return v0
.end method

.method public getRxPriTmin()B
    .locals 1

    iget-byte v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mRxPriTmin:B

    return v0
.end method

.method public setDlFrameSyncEn(B)V
    .locals 0

    iput-byte p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mDlFrameSyncEn:B

    return-void
.end method

.method public setRxPriResendTime(I)V
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mRxPriResendTime:I

    return-void
.end method

.method public setRxPriTmin(B)V
    .locals 0

    iput-byte p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mRxPriTmin:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " DlFrameSyncEn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mDlFrameSyncEn:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RxPriTmin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mRxPriTmin:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RxPriResendTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->mRxPriResendTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
