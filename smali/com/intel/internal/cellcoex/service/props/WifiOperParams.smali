.class public Lcom/intel/internal/cellcoex/service/props/WifiOperParams;
.super Ljava/lang/Object;
.source "WifiOperParams.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;


# static fields
.field public static final PROP_NAME:Ljava/lang/String; = "cws.wifi.oper.params"


# instance fields
.field public mWifiOperBw:I

.field public mWifiOperFreq:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;->mWifiOperFreq:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;->mWifiOperBw:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;->setWifiOperFreq(I)V

    invoke-virtual {p0, p2}, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;->setWifiOperBw(I)V

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
    instance-of v3, p1, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;->getWifiOperFreq()I

    move-result v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;->getWifiOperFreq()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;->getWifiOperBw()I

    move-result v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;->getWifiOperBw()I

    move-result v4

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "cws.wifi.oper.params"

    return-object v0
.end method

.method public getWifiOperBw()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;->mWifiOperBw:I

    return v0
.end method

.method public getWifiOperFreq()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;->mWifiOperFreq:I

    return v0
.end method

.method public setWifiOperBw(I)V
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;->mWifiOperBw:I

    return-void
.end method

.method public setWifiOperFreq(I)V
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;->mWifiOperFreq:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(operFreq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;->getWifiOperFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " operBw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;->getWifiOperBw()I

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
