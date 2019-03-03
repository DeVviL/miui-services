.class public Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_FREQ_IND;
.super Lcom/intel/internal/cellcoex/test/Parser_Generic;
.source "Parser_MWS_LTE_FREQ_IND.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/test/ITestIntentParser;


# static fields
.field private static final KEY_DLBW:Ljava/lang/String; = "dlbw"

.field private static final KEY_DLFREQ:Ljava/lang/String; = "dlfreq"

.field private static final KEY_ULBW:Ljava/lang/String; = "ulbw"

.field private static final KEY_ULFREQ:Ljava/lang/String; = "ulfreq"

.field private static final PROP_NAME:Ljava/lang/String; = "mws.lte_freq_ind"


# direct methods
.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mws.lte_freq_ind"

    invoke-direct {p0, p1, v0}, Lcom/intel/internal/cellcoex/test/Parser_Generic;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parseIntent(Landroid/content/Intent;)Z
    .locals 8

    const/4 v6, -0x1

    const-string v5, "name"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v5, "mws.lte_freq_ind"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_1
    const-string v5, "dlfreq"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v5, "dlbw"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v5, "ulfreq"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "ulbw"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sget-object v5, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_FREQ_IND;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v6, "mws.lte_freq_ind"

    new-instance v7, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;

    invoke-direct {v7, v1, v0, v4, v3}, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;-><init>(IIII)V

    invoke-interface {v5, v6, v7}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method
