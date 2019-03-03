.class public Lcom/intel/internal/cellcoex/test/Parser_WIFI_OPER_PARAMS;
.super Lcom/intel/internal/cellcoex/test/Parser_Generic;
.source "Parser_WIFI_OPER_PARAMS.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/test/ITestIntentParser;


# static fields
.field private static final KEY_BW:Ljava/lang/String; = "bw"

.field private static final KEY_FREQ:Ljava/lang/String; = "freq"

.field private static final PROP_NAME:Ljava/lang/String; = "cws.wifi.oper.params"


# direct methods
.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V
    .locals 1
    .param p1, "aICoexPropMgr"    # Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    .prologue
    .line 32
    const-string v0, "cws.wifi.oper.params"

    invoke-direct {p0, p1, v0}, Lcom/intel/internal/cellcoex/test/Parser_Generic;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public parseIntent(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "anIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 37
    const-string v3, "name"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "propName":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "cws.wifi.oper.params"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 40
    :cond_0
    const/4 v3, 0x0

    .line 46
    :goto_0
    return v3

    .line 43
    :cond_1
    const-string v3, "freq"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 44
    .local v1, "freq":I
    const-string v3, "bw"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 46
    .local v0, "bw":I
    sget-object v3, Lcom/intel/internal/cellcoex/test/Parser_WIFI_OPER_PARAMS;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v4, "cws.wifi.oper.params"

    new-instance v5, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;

    invoke-direct {v5, v1, v0}, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;-><init>(II)V

    invoke-interface {v3, v4, v5}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method
