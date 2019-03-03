.class public Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_FRAME_IND;
.super Lcom/intel/internal/cellcoex/test/Parser_Generic;
.source "Parser_MWS_LTE_FRAME_IND.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/test/ITestIntentParser;


# static fields
.field private static final LTE_BITMAP_INT:Ljava/lang/String; = "lteBitmapInt"

.field private static final LTE_BITMAP_STR:Ljava/lang/String; = "lteBitmapStr"

.field private static final PROP_NAME:Ljava/lang/String; = "mws.lte_frame_ind"

.field private static final STATE_VALUE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"

.field private static final TDD_SPECIAL_SUBFRAME_NB:Ljava/lang/String; = "TddSpecialSubFrameNb"

.field private static final UNKNOWN:I = -0x1


# instance fields
.field private final mClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_FRAME_IND;->STATE_VALUE_MAP:Ljava/util/Map;

    .line 43
    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_FRAME_IND;->STATE_VALUE_MAP:Ljava/util/Map;

    const-string v1, "D"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_FRAME_IND;->STATE_VALUE_MAP:Ljava/util/Map;

    const-string v1, "U"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_FRAME_IND;->STATE_VALUE_MAP:Ljava/util/Map;

    const-string v1, "B"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_FRAME_IND;->STATE_VALUE_MAP:Ljava/util/Map;

    const-string v1, "S"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V
    .locals 2
    .param p1, "aICoexPropMgr"    # Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    .prologue
    .line 50
    const-string v0, "mws.lte_frame_ind"

    invoke-direct {p0, p1, v0}, Lcom/intel/internal/cellcoex/test/Parser_Generic;-><init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;Ljava/lang/String;)V

    .line 32
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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_FRAME_IND;->mClassName:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public parseIntent(Landroid/content/Intent;)Z
    .locals 10
    .param p1, "anIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 55
    const-string v6, "name"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "propName":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v6, "mws.lte_frame_ind"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v6, v7

    .line 92
    :goto_0
    return v6

    .line 61
    :cond_1
    const-string v6, "lteBitmapStr"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "bitmapStr":Ljava/lang/String;
    const-string v6, "lteBitmapInt"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 63
    .local v0, "bitmapInt":I
    const-string v6, "TddSpecialSubFrameNb"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 65
    .local v5, "tddSpecSubFrameType":I
    if-nez v1, :cond_2

    if-ne v0, v8, :cond_2

    .line 66
    const-string v6, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_FRAME_IND;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "test intent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mws.lte_frame_ind"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Error! Test intent must carry a valid bitmap extra (either int or string)."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 68
    goto :goto_0

    .line 72
    :cond_2
    if-eqz v1, :cond_6

    .line 73
    const/4 v0, 0x0

    .line 74
    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "result":[Ljava/lang/String;
    array-length v6, v4

    const/16 v8, 0xa

    if-eq v6, v8, :cond_3

    .line 76
    const-string v6, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_FRAME_IND;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Error! Test intent doesn\'t carry a valid bitmapStr (invalid lenght)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 78
    goto :goto_0

    .line 80
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_5

    .line 81
    sget-object v6, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_FRAME_IND;->STATE_VALUE_MAP:Ljava/util/Map;

    aget-object v8, v4, v2

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 82
    const-string v6, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_FRAME_IND;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Error! Test intent doesn\'t carry a valid bitmapStr value ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 85
    goto/16 :goto_0

    .line 87
    :cond_4
    sget-object v6, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_FRAME_IND;->STATE_VALUE_MAP:Ljava/util/Map;

    aget-object v8, v4, v2

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->byteValue()B

    move-result v6

    and-int/lit8 v6, v6, 0x3

    mul-int/lit8 v8, v2, 0x2

    shl-int/2addr v6, v8

    or-int/2addr v0, v6

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 89
    :cond_5
    const-string v6, "CWS_CELLCOEX_MGR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_FRAME_IND;->mClassName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "test intent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mws.lte_frame_ind"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bitmapInt = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v2    # "i":I
    .end local v4    # "result":[Ljava/lang/String;
    :cond_6
    sget-object v6, Lcom/intel/internal/cellcoex/test/Parser_MWS_LTE_FRAME_IND;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v7, "mws.lte_frame_ind"

    new-instance v8, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    invoke-direct {v8, v0, v5}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;-><init>(II)V

    invoke-interface {v6, v7, v8}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    goto/16 :goto_0
.end method
