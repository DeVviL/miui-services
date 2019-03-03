.class public abstract Lcom/intel/internal/cellcoex/test/Parser_Generic;
.super Ljava/lang/Object;
.source "Parser_Generic.java"


# static fields
.field public static final DEBUG:Z

.field protected static final KEY_PROP_NAME:Ljava/lang/String; = "name"

.field public static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"

.field protected static sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;


# instance fields
.field public final mClassName:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "CWS_CELLCOEX_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/internal/cellcoex/test/Parser_Generic;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/test/Parser_Generic;->mClassName:Ljava/lang/String;

    sget-boolean v0, Lcom/intel/internal/cellcoex/test/Parser_Generic;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Singleton "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/test/Parser_Generic;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - getInstance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-object p1, Lcom/intel/internal/cellcoex/test/Parser_Generic;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    iput-object p2, p0, Lcom/intel/internal/cellcoex/test/Parser_Generic;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/test/Parser_Generic;->mName:Ljava/lang/String;

    return-object v0
.end method
