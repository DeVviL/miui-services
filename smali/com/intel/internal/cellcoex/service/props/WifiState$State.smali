.class public final enum Lcom/intel/internal/cellcoex/service/props/WifiState$State;
.super Ljava/lang/Enum;
.source "WifiState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/props/WifiState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intel/internal/cellcoex/service/props/WifiState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intel/internal/cellcoex/service/props/WifiState$State;

.field public static final enum WIFI_RADIO_ACTIVE_STA_P2P:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

.field public static final enum WIFI_RADIO_ACTIVE_TETHER:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

.field public static final enum WIFI_RADIO_IDLE:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

.field public static final enum WIFI_RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

.field public static final enum WIFI_RADIO_UNKNOWN:Lcom/intel/internal/cellcoex/service/props/WifiState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    const-string v1, "WIFI_RADIO_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/WifiState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_UNKNOWN:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    new-instance v0, Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    const-string v1, "WIFI_RADIO_OFF"

    invoke-direct {v0, v1, v3}, Lcom/intel/internal/cellcoex/service/props/WifiState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    new-instance v0, Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    const-string v1, "WIFI_RADIO_IDLE"

    invoke-direct {v0, v1, v4}, Lcom/intel/internal/cellcoex/service/props/WifiState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_IDLE:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    new-instance v0, Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    const-string v1, "WIFI_RADIO_ACTIVE_STA_P2P"

    invoke-direct {v0, v1, v5}, Lcom/intel/internal/cellcoex/service/props/WifiState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_ACTIVE_STA_P2P:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    new-instance v0, Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    const-string v1, "WIFI_RADIO_ACTIVE_TETHER"

    invoke-direct {v0, v1, v6}, Lcom/intel/internal/cellcoex/service/props/WifiState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_ACTIVE_TETHER:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_UNKNOWN:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_IDLE:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_ACTIVE_STA_P2P:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_ACTIVE_TETHER:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->$VALUES:[Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intel/internal/cellcoex/service/props/WifiState$State;
    .locals 1

    const-class v0, Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    return-object v0
.end method

.method public static values()[Lcom/intel/internal/cellcoex/service/props/WifiState$State;
    .locals 1

    sget-object v0, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->$VALUES:[Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    invoke-virtual {v0}, [Lcom/intel/internal/cellcoex/service/props/WifiState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    return-object v0
.end method
