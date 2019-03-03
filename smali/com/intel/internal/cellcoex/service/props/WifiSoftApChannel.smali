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

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;->setSoftApChannel(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "channel"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;->setSoftApChannel(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    if-nez p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    instance-of v3, p1, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 63
    check-cast v0, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;

    .line 64
    .local v0, "otherMyClass":Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;
    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;->getSoftApChannel()I

    move-result v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;->getSoftApChannel()I

    move-result v4

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 65
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "cws.wifi.softap.channel"

    return-object v0
.end method

.method public getSoftApChannel()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;->mSoftApChannel:I

    return v0
.end method

.method public setSoftApChannel(I)V
    .locals 0
    .param p1, "channel"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;->mSoftApChannel:I

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/WifiSoftApChannel;->getSoftApChannel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
