.class public Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;
.super Ljava/lang/Object;
.source "MwsWifiSafeChannels24.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;


# static fields
.field public static final HIGHEST_CHAN:I = 0xd

.field public static final HIGHEST_PRIO:I = 0xa

.field public static final LOWEST_CHAN:I = 0x1

.field public static final LOWEST_PRIO:I = 0x0

.field public static final NB_CHAN:I = 0xd

.field public static final PROP_NAME:Ljava/lang/String; = "mws.wifi.safeChannels"

.field public static final RX_SAFE_TX_UNSAFE_PRIO:I = 0x6

.field public static final RX_UNSAFE_TX_SAFE_PRIO:I = 0x2


# instance fields
.field private final mSafeChannels:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xd

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->setAllSafe()V

    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xd

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    iget-object v0, p1, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->setSafeChannels([I)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xd

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->setSafeChannels([I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-ne p1, p0, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    instance-of v4, p1, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

    if-eqz v4, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    array-length v4, v4

    if-ge v0, v4, :cond_3

    iget-object v4, v1, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    aget v5, v5, v0

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "mws.wifi.safeChannels"

    return-object v0
.end method

.method public getSafeChannels()[I
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    return-object v0
.end method

.method public setAllSafe()V
    .locals 3

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    const/16 v2, 0xa

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAllUnsafe()V
    .locals 3

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSafeChannels(II)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/16 v1, 0xd

    if-le p1, v1, :cond_1

    :cond_0
    const-string v1, "WifiSafeChannels"

    const-string v2, "setSafeChannels() - Error! Invalid channel"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    if-ltz p2, :cond_2

    const/16 v1, 0xa

    if-le p2, v1, :cond_3

    :cond_2
    const-string v1, "WifiSafeChannels"

    const-string v2, "setSafeChannels() - Error! Invalid prio"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    add-int/lit8 v1, p1, -0x1

    aput p2, v0, v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSafeChannels([I)V
    .locals 4

    const/16 v3, 0xa

    const/4 v0, 0x0

    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const-string v1, "MwsWifiSafeChannels24"

    const-string v2, "setSafeChannels() - Error! Invalid array size. Set all safe"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->setAllSafe()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    if-gez v1, :cond_2

    const-string v1, "MwsWifiSafeChannels24"

    const-string v2, "setSafeChannels() - Error! Invalid prio. Set with lowest"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget v1, p1, v0

    if-le v1, v3, :cond_3

    const-string v1, "WifiSafeChannels"

    const-string v2, "setSafeChannels() - Error! Invalid prio. Set with highest"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    aput v3, v1, v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    aget v2, p1, v0

    aput v2, v1, v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
