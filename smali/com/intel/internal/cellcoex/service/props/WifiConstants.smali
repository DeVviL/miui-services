.class public Lcom/intel/internal/cellcoex/service/props/WifiConstants;
.super Ljava/lang/Object;
.source "WifiConstants.java"


# static fields
.field public static final WIFI_24_FREQ_MHZ_MAX:I = 0x9c3

.field public static final WIFI_24_FREQ_MHZ_MIN:I = 0x960

.field public static final WIFI_CENTER_FREQ_MHZ:[I

.field public static final WLAN_BANDWIDTH_20MHZ:I = 0x14

.field public static final WLAN_BANDWIDTH_40MHZ:I = 0x28

.field public static final WLAN_BANDWIDTH_80MHZ:I = 0x50


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/WifiConstants;->WIFI_CENTER_FREQ_MHZ:[I

    return-void

    :array_0
    .array-data 4
        0x96c
        0x971
        0x976
        0x97b
        0x980
        0x985
        0x98a
        0x98f
        0x994
        0x999
        0x99e
        0x9a3
        0x9a8
        0x9b4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chan2freq(I)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    const/16 v1, 0xd

    if-gt p1, v1, :cond_1

    mul-int/lit8 v1, p1, 0x5

    add-int/lit16 v0, v1, 0x967

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xe

    if-ne p1, v1, :cond_2

    const/16 v0, 0x9b4

    goto :goto_0

    :cond_2
    const/16 v1, 0x24

    if-lt p1, v1, :cond_3

    const/16 v1, 0x40

    if-gt p1, v1, :cond_3

    mul-int/lit8 v1, p1, 0x5

    add-int/lit16 v0, v1, 0x1388

    goto :goto_0

    :cond_3
    const/16 v1, 0x64

    if-lt p1, v1, :cond_4

    const/16 v1, 0x8c

    if-gt p1, v1, :cond_4

    mul-int/lit8 v1, p1, 0x5

    add-int/lit16 v0, v1, 0x1388

    goto :goto_0

    :cond_4
    const/16 v1, 0x95

    if-lt p1, v1, :cond_0

    const/16 v1, 0xa5

    if-gt p1, v1, :cond_0

    mul-int/lit8 v1, p1, 0x5

    add-int/lit16 v0, v1, 0x1388

    goto :goto_0
.end method

.method public freq2chan(I)I
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0x96c

    if-lt p1, v1, :cond_1

    const/16 v1, 0x9a8

    if-gt p1, v1, :cond_1

    add-int/lit16 v1, p1, -0x967

    div-int/lit8 v0, v1, 0x5

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x9b4

    if-ne p1, v1, :cond_2

    const/16 v0, 0xe

    goto :goto_0

    :cond_2
    const/16 v1, 0x143c

    if-lt p1, v1, :cond_0

    const/16 v1, 0x16ad

    if-gt p1, v1, :cond_0

    add-int/lit16 v1, p1, -0x1388

    div-int/lit8 v0, v1, 0x5

    goto :goto_0
.end method
