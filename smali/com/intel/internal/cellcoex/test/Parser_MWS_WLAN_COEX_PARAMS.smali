.class public Lcom/intel/internal/cellcoex/test/Parser_MWS_WLAN_COEX_PARAMS;
.super Lcom/intel/internal/cellcoex/test/Parser_Generic;
.source "Parser_MWS_WLAN_COEX_PARAMS.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/test/ITestIntentParser;


# static fields
.field private static final KEY_SAFE_RX_MAX:Ljava/lang/String; = "saferxmax"

.field private static final KEY_SAFE_RX_MIN:Ljava/lang/String; = "saferxmin"

.field private static final KEY_SAFE_TX_MAX:Ljava/lang/String; = "safetxmax"

.field private static final KEY_SAFE_TX_MIN:Ljava/lang/String; = "safetxmin"

.field private static final KEY_TX_POW_NUM:Ljava/lang/String; = "txpownum"

.field private static final KEY_TX_POW_TABLE:Ljava/lang/String; = "txpowtable"

.field private static final PROP_NAME:Ljava/lang/String; = "mws.wlan.coexparams"


# direct methods
.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V
    .locals 1

    const-string v0, "mws.wlan.coexparams"

    invoke-direct {p0, p1, v0}, Lcom/intel/internal/cellcoex/test/Parser_Generic;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parseIntent(Landroid/content/Intent;)Z
    .locals 10

    const/4 v8, -0x1

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v0, "mws.wlan.coexparams"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v0, "saferxmin"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "saferxmax"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "safetxmin"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "safetxmax"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "txpownum"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    if-ltz v5, :cond_2

    const-string v0, "txpowtable"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    :cond_2
    sget-object v8, Lcom/intel/internal/cellcoex/test/Parser_MWS_WLAN_COEX_PARAMS;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v9, "mws.wlan.coexparams"

    new-instance v0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    invoke-direct/range {v0 .. v6}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;-><init>(IIIII[I)V

    invoke-interface {v8, v9, v0}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
