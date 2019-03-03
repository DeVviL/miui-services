.class public Lcom/intel/internal/cellcoex/test/Parser_WIFI_STATE;
.super Lcom/intel/internal/cellcoex/test/Parser_Generic;
.source "Parser_WIFI_STATE.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/test/ITestIntentParser;


# static fields
.field private static final KEY_STATE:Ljava/lang/String; = "state"

.field private static final PROP_NAME:Ljava/lang/String; = "cws.wifi.state"

.field private static final STATE_VALUE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/intel/internal/cellcoex/service/props/WifiState$State;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"


# instance fields
.field private final mClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/intel/internal/cellcoex/test/Parser_WIFI_STATE;->STATE_VALUE_MAP:Ljava/util/Map;

    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_WIFI_STATE;->STATE_VALUE_MAP:Ljava/util/Map;

    const-string v1, ""

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_UNKNOWN:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_WIFI_STATE;->STATE_VALUE_MAP:Ljava/util/Map;

    const-string v1, "UNKNOWN"

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_UNKNOWN:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_WIFI_STATE;->STATE_VALUE_MAP:Ljava/util/Map;

    const-string v1, "OFF"

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_WIFI_STATE;->STATE_VALUE_MAP:Ljava/util/Map;

    const-string v1, "IDLE"

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_IDLE:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_WIFI_STATE;->STATE_VALUE_MAP:Ljava/util/Map;

    const-string v1, "ACTIVE_STA_P2P"

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_ACTIVE_STA_P2P:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_WIFI_STATE;->STATE_VALUE_MAP:Ljava/util/Map;

    const-string v1, "ACTIVE_TETHER"

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_ACTIVE_TETHER:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V
    .locals 2

    const-string v0, "cws.wifi.state"

    invoke-direct {p0, p1, v0}, Lcom/intel/internal/cellcoex/test/Parser_Generic;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;Ljava/lang/String;)V

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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/test/Parser_WIFI_STATE;->mClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parseIntent(Landroid/content/Intent;)Z
    .locals 6

    const/4 v2, 0x0

    const-string v3, "name"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "cws.wifi.state"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "state"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v3, Lcom/intel/internal/cellcoex/test/Parser_WIFI_STATE;->STATE_VALUE_MAP:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "CWS_CELLCOEX_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/intel/internal/cellcoex/test/Parser_WIFI_STATE;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "test intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cws.wifi.state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not contain a valid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "key value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/intel/internal/cellcoex/test/Parser_WIFI_STATE;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v4, "cws.wifi.state"

    new-instance v5, Lcom/intel/internal/cellcoex/service/props/WifiState;

    sget-object v2, Lcom/intel/internal/cellcoex/test/Parser_WIFI_STATE;->STATE_VALUE_MAP:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    invoke-direct {v5, v2}, Lcom/intel/internal/cellcoex/service/props/WifiState;-><init>(Lcom/intel/internal/cellcoex/service/props/WifiState$State;)V

    invoke-interface {v3, v4, v5}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method
