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

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0xd

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    .line 41
    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->setAllSafe()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;)V
    .locals 1
    .param p1, "aMwsWifiSafeChannels24"    # Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0xd

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    .line 49
    iget-object v0, p1, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->setSafeChannels([I)V

    .line 50
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .param p1, "safeChannels"    # [I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0xd

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    .line 45
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->setSafeChannels([I)V

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, "i":I
    if-nez p1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v2

    .line 124
    :cond_1
    if-ne p1, p0, :cond_2

    move v2, v3

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    instance-of v4, p1, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 129
    check-cast v1, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

    .line 130
    .local v1, "otherMyClass":Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 131
    iget-object v4, v1, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    aget v5, v5, v0

    if-ne v4, v5, :cond_0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 135
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string v0, "mws.wifi.safeChannels"

    return-object v0
.end method

.method public getSafeChannels()[I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    return-object v0
.end method

.method public setAllSafe()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    const/16 v2, 0xa

    aput v2, v1, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method public setAllUnsafe()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public setSafeChannels(II)I
    .locals 3
    .param p1, "channel"    # I
    .param p2, "prio"    # I

    .prologue
    const/4 v0, -0x1

    .line 94
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/16 v1, 0xd

    if-le p1, v1, :cond_1

    .line 95
    :cond_0
    const-string v1, "WifiSafeChannels"

    const-string v2, "setSafeChannels() - Error! Invalid channel"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return v0

    .line 99
    :cond_1
    if-ltz p2, :cond_2

    const/16 v1, 0xa

    if-le p2, v1, :cond_3

    .line 100
    :cond_2
    const-string v1, "WifiSafeChannels"

    const-string v2, "setSafeChannels() - Error! Invalid prio"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    add-int/lit8 v1, p1, -0x1

    aput p2, v0, v1

    .line 105
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSafeChannels([I)V
    .locals 4
    .param p1, "safeChannels"    # [I

    .prologue
    const/16 v3, 0xa

    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, "i":I
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 73
    const-string v1, "MwsWifiSafeChannels24"

    const-string v2, "setSafeChannels() - Error! Invalid array size. Set all safe"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->setAllSafe()V

    .line 91
    :cond_0
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 78
    aget v1, p1, v0

    if-gez v1, :cond_2

    .line 79
    const-string v1, "MwsWifiSafeChannels24"

    const-string v2, "setSafeChannels() - Error! Invalid prio. Set with lowest"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 77
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_2
    aget v1, p1, v0

    if-le v1, v3, :cond_3

    .line 83
    const-string v1, "WifiSafeChannels"

    const-string v2, "setSafeChannels() - Error! Invalid prio. Set with highest"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    aput v3, v1, v0

    goto :goto_1

    .line 87
    :cond_3
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    aget v2, p1, v0

    aput v2, v1, v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;->mSafeChannels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
