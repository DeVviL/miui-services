.class public Lcom/intel/internal/cellcoex/test/Parser_MWS_BT_COEX_PARAMS;
.super Lcom/intel/internal/cellcoex/test/Parser_Generic;
.source "Parser_MWS_BT_COEX_PARAMS.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/test/ITestIntentParser;


# static fields
.field private static final DEBUG:Z

.field private static final KEY_SAFE_RX_MAX:Ljava/lang/String; = "saferxmax"

.field private static final KEY_SAFE_RX_MIN:Ljava/lang/String; = "saferxmin"

.field private static final KEY_SAFE_TX_MAX:Ljava/lang/String; = "safetxmax"

.field private static final KEY_SAFE_TX_MIN:Ljava/lang/String; = "safetxmin"

.field private static final KEY_TX_POW_NUM:Ljava/lang/String; = "txpownum"

.field private static final KEY_TX_POW_TABLE:Ljava/lang/String; = "txpowtable"

.field private static final PROP_NAME:Ljava/lang/String; = "mws.bt.coexparams"

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"

.field private static final UNKNOWN:I = -0x1


# instance fields
.field private final mClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "CWS_CELLCOEX_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_BT_COEX_PARAMS;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V
    .locals 2

    const-string v0, "mws.bt.coexparams"

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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/test/Parser_MWS_BT_COEX_PARAMS;->mClassName:Ljava/lang/String;

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

    const-string v0, "mws.bt.coexparams"

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
    sget-object v8, Lcom/intel/internal/cellcoex/test/Parser_MWS_BT_COEX_PARAMS;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v9, "mws.bt.coexparams"

    new-instance v0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    invoke-direct/range {v0 .. v6}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;-><init>(IIIII[I)V

    invoke-interface {v8, v9, v0}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
