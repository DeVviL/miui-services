.class public Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_REG_STATUS;
.super Lcom/intel/internal/cellcoex/test/Parser_Generic;
.source "Parser_MWS_LTE_REG_STATUS.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/test/ITestIntentParser;


# static fields
.field private static final KEY_LTE_REG_BAND:Ljava/lang/String; = "lteregband"

.field private static final KEY_LTE_REG_STATUS:Ljava/lang/String; = "lteregstatus"

.field private static final LTE_REG_STATUS_VALUE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROP_NAME:Ljava/lang/String; = "mws.lte_reg_status"

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"


# instance fields
.field private final mClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_REG_STATUS;->LTE_REG_STATUS_VALUE_MAP:Ljava/util/Map;

    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_REG_STATUS;->LTE_REG_STATUS_VALUE_MAP:Ljava/util/Map;

    const-string v1, ""

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->RF_OFF:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_REG_STATUS;->LTE_REG_STATUS_VALUE_MAP:Ljava/util/Map;

    const-string v1, "RF_OFF"

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->RF_OFF:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_REG_STATUS;->LTE_REG_STATUS_VALUE_MAP:Ljava/util/Map;

    const-string v1, "NOT_REGISTERED"

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->NOT_REGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_REG_STATUS;->LTE_REG_STATUS_VALUE_MAP:Ljava/util/Map;

    const-string v1, "REGISTERED"

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->REGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V
    .locals 2

    const-string v0, "mws.lte_reg_status"

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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_REG_STATUS;->mClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parseIntent(Landroid/content/Intent;)Z
    .locals 8

    const/4 v5, 0x0

    new-instance v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    invoke-direct {v0}, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;-><init>()V

    const-string v4, "name"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "mws.lte_reg_status"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v5

    :goto_0
    return v4

    :cond_1
    const-string v4, "lteregstatus"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v4, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_REG_STATUS;->LTE_REG_STATUS_VALUE_MAP:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_REG_STATUS;->mClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "test intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mws.lte_reg_status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not contain a valid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "lteregstatus"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "key value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_REG_STATUS;->LTE_REG_STATUS_VALUE_MAP:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    iput-object v4, v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->mLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    const-string v4, "lteregband"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_REG_STATUS;->mClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "test intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mws.lte_reg_status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not contain a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "lteregband"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "key value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->setLteRegBand(Ljava/lang/String;)Z

    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_REG_STATUS;->mClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "test intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mws.lte_reg_status"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is forcing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_REG_STATUS;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v5, "mws.lte_reg_status"

    invoke-interface {v4, v5, v0}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_0
.end method
