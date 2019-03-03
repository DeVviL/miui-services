.class public Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;
.super Ljava/lang/Object;
.source "WifiSoftApChannel.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;


# static fields
.field public static final DEFAULT_CHANNEL:I = 0x6

.field public static final PROP_NAME:Ljava/lang/String; = "cws.wifi.softap.channel"


# instance fields
.field private mSoftApChannel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;->setSoftApChannel(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;->setSoftApChannel(I)V

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
    instance-of v3, p1, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;->getSoftApChannel()I

    move-result v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;->getSoftApChannel()I

    move-result v4

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "cws.wifi.softap.channel"

    return-object v0
.end method

.method public getSoftApChannel()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;->mSoftApChannel:I

    return v0
.end method

.method public setSoftApChannel(I)V
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;->mSoftApChannel:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;->getSoftApChannel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
