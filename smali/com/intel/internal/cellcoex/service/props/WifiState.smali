.class public Lcom/intel/internal/cellcoex/service/props/WifiState;
.super Ljava/lang/Object;
.source "WifiState.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/cellcoex/service/props/WifiState$State;
    }
.end annotation


# static fields
.field public static final PROP_NAME:Ljava/lang/String; = "cws.wifi.state"


# instance fields
.field private mState:Lcom/intel/internal/cellcoex/service/props/WifiState$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_UNKNOWN:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/WifiState;->mState:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/WifiState$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/props/WifiState;->mState:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

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
    instance-of v3, p1, Lcom/intel/internal/cellcoex/service/props/WifiState;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/WifiState;

    iget-object v3, v0, Lcom/intel/internal/cellcoex/service/props/WifiState;->mState:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/props/WifiState;->mState:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "cws.wifi.state"

    return-object v0
.end method

.method public getWifiState()Lcom/intel/internal/cellcoex/service/props/WifiState$State;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/WifiState;->mState:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    return-object v0
.end method

.method public final isWifiRadioOn()Z
    .locals 2

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/WifiState;->getWifiState()Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    move-result-object v0

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_IDLE:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_ACTIVE_STA_P2P:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_ACTIVE_TETHER:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isWifitetherOn()Z
    .locals 2

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/WifiState;->getWifiState()Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    move-result-object v0

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_ACTIVE_TETHER:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiState(Lcom/intel/internal/cellcoex/service/props/WifiState$State;)V
    .locals 0

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/props/WifiState;->mState:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/WifiState;->mState:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
