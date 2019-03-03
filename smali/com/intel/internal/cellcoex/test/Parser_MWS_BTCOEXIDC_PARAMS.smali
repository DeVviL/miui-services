.class public Lcom/intel/internal/cellcoex/test/Parser_MWS_BTCOEXIDC_PARAMS;
.super Lcom/intel/internal/cellcoex/test/Parser_Generic;
.source "Parser_MWS_BTCOEXIDC_PARAMS.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/test/ITestIntentParser;


# static fields
.field private static final KEY_BTNOISEIFG:Ljava/lang/String; = "btnoisefig"

.field private static final PROP_NAME:Ljava/lang/String; = "mws.bt.coexidcparams"


# direct methods
.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;Ljava/lang/String;)V
    .locals 1
    .param p1, "aICoexPropMgr"    # Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;
    .param p2, "aName"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v0, "mws.bt.coexidcparams"

    invoke-direct {p0, p1, v0}, Lcom/intel/internal/cellcoex/test/Parser_Generic;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public parseIntent(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "anIntent"    # Landroid/content/Intent;

    .prologue
    .line 43
    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "propName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "mws.bt.coexidcparams"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 46
    :cond_0
    const/4 v2, 0x0

    .line 51
    :goto_0
    return v2

    .line 49
    :cond_1
    const-string v2, "btnoisefig"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 51
    .local v0, "btnoisefig":I
    sget-object v2, Lcom/intel/internal/cellcoex/test/Parser_MWS_BTCOEXIDC_PARAMS;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v3, "mws.bt.coexidcparams"

    new-instance v4, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;

    invoke-direct {v4, v0}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;-><init>(I)V

    invoke-interface {v2, v3, v4}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method
