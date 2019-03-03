.class public Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;
.super Lcom/intel/internal/cellcoex/test/Parser_Generic;
.source "Parser_MWS_STATE.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/test/ITestIntentParser;


# static fields
.field private static final DEBUG:Z

.field private static final KEY_STATE:Ljava/lang/String; = "state"

.field private static final KEY_SUBSTATE:Ljava/lang/String; = "substate"

.field private static final PROP_NAME:Ljava/lang/String; = "mws.state"

.field private static final STATE_VALUE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/intel/internal/cellcoex/service/props/MwsState$State;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"

.field private static final sSubStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "CWS_CELLCOEX_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->DEBUG:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->STATE_VALUE_MAP:Ljava/util/Map;

    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->STATE_VALUE_MAP:Ljava/util/Map;

    const-string v1, ""

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->UNKNOWN:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->STATE_VALUE_MAP:Ljava/util/Map;

    const-string v1, "UNKNOWN"

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->UNKNOWN:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->STATE_VALUE_MAP:Ljava/util/Map;

    const-string v1, "RADIO_OFF"

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->STATE_VALUE_MAP:Ljava/util/Map;

    const-string v1, "RADIO_ON"

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->RADIO_ON:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->sSubStateMap:Ljava/util/HashMap;

    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->sSubStateMap:Ljava/util/HashMap;

    const-string v1, ""

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->NA:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->sSubStateMap:Ljava/util/HashMap;

    const-string v1, "NA"

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->NA:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->sSubStateMap:Ljava/util/HashMap;

    const-string v1, "UNREGISTERED"

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->UNREGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->sSubStateMap:Ljava/util/HashMap;

    const-string v1, "REGISTERED_NOT_AGRESSIVE"

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->REGISTERED_NOT_AGRESSIVE:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->sSubStateMap:Ljava/util/HashMap;

    const-string v1, "REGISTERED_AGRESSIVE"

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->REGISTERED_AGRESSIVE:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V
    .locals 2

    const-string v0, "mws.state"

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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->mClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parseIntent(Landroid/content/Intent;)Z
    .locals 8

    const/4 v5, 0x0

    new-instance v0, Lcom/intel/internal/cellcoex/service/props/MwsState;

    invoke-direct {v0}, Lcom/intel/internal/cellcoex/service/props/MwsState;-><init>()V

    const-string v4, "name"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "mws.state"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v5

    :goto_0
    return v4

    :cond_1
    const-string v4, "state"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v4, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->STATE_VALUE_MAP:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    sget-boolean v4, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->mClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "test intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mws.state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not contain a valid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "key value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v4, v5

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->STATE_VALUE_MAP:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    iput-object v4, v0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    const-string v4, "substate"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-object v4, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->sSubStateMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_5
    sget-boolean v4, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->mClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "test intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mws.state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not contain a valid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "substate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "key value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v4, v5

    goto/16 :goto_0

    :cond_7
    sget-object v4, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->sSubStateMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    iput-object v4, v0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    sget-object v4, Lcom/intel/internal/cellcoex/test/Parser_MWS_STATE;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v5, "mws.state"

    invoke-interface {v4, v5, v0}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_0
.end method
