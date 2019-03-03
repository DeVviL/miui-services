.class public Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;
.super Ljava/lang/Object;
.source "CoexPropertyMgr.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"

.field private static sInstance:Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

.field private static final sPropertyHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/intel/internal/cellcoex/service/CoexProperty;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final mPropNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropUsage:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "CWS_CELLCOEX_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->DEBUG:Z

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->sPropertyHashMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mClassName:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mPropNodes:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mPropUsage:Ljava/util/Map;

    .line 60
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CoexPropertyMgr constructor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    return-void
.end method

.method private dumpPropCatalog()V
    .locals 3

    .prologue
    .line 66
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sPropertyHashMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->sPropertyHashMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;
    .locals 2

    .prologue
    .line 46
    sget-boolean v0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "CWS_CELLCOEX_MGR"

    const-string v1, "Singleton CoexPropertyMgr - getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->sInstance:Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

    if-nez v0, :cond_2

    .line 50
    const-class v1, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->sInstance:Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

    invoke-direct {v0}, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;-><init>()V

    sput-object v0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->sInstance:Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

    .line 54
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_2
    sget-object v0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->sInstance:Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addProp(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "aPropName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "aValue":Ljava/lang/Object;, "TT;"
    sget-object v1, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->sPropertyHashMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "property already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->dumpPropCatalog()V

    .line 146
    const/4 v1, 0x0

    .line 153
    :goto_0
    return v1

    .line 149
    :cond_0
    new-instance v0, Lcom/intel/internal/cellcoex/service/CoexProperty;

    invoke-direct {v0, p1, p2}, Lcom/intel/internal/cellcoex/service/CoexProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    .local v0, "tempProp":Lcom/intel/internal/cellcoex/service/CoexProperty;
    sget-object v1, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->sPropertyHashMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addPropNode(Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;)Z
    .locals 1
    .param p1, "aNode"    # Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mPropNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getProp(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "aPropName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 158
    sget-object v0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->sPropertyHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cannot find property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->dumpPropCatalog()V

    .line 161
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->sPropertyHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/cellcoex/service/CoexProperty;

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/CoexProperty;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public initPropNodes()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 71
    sget-boolean v6, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 72
    const-string v6, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "initPropNodes() - getProvidedPropList"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mPropNodes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;

    .line 75
    .local v1, "aNodeIter":Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;
    sget-boolean v6, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 76
    const-string v6, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "initPropNodes() - getProvidedPropList iter node"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_2
    invoke-interface {v1}, Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;->getProvidedPropList()Ljava/util/List;

    move-result-object v0

    .line 78
    .local v0, "aList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 79
    sget-boolean v6, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 80
    const-string v6, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "initPropNodes() - getProvidedPropList iter strings"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 82
    .local v3, "aStringIter":Ljava/lang/String;
    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mPropUsage:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 83
    const-string v6, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "a node is already providing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 121
    .end local v0    # "aList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "aNodeIter":Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;
    .end local v3    # "aStringIter":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    :goto_1
    return v6

    .line 86
    .restart local v0    # "aList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "aNodeIter":Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;
    .restart local v3    # "aStringIter":Ljava/lang/String;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mPropUsage:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    .end local v0    # "aList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "aNodeIter":Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;
    .end local v3    # "aStringIter":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_5
    sget-boolean v6, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 91
    const-string v6, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "initPropNodes() - getRequiredPropList"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_6
    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mPropNodes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;

    .line 93
    .restart local v1    # "aNodeIter":Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;
    invoke-interface {v1}, Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;->getRequiredPropList()Ljava/util/List;

    move-result-object v0

    .line 94
    .restart local v0    # "aList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_7

    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 96
    .restart local v3    # "aStringIter":Ljava/lang/String;
    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mPropUsage:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 97
    const-string v6, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "no node is providing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 98
    goto :goto_1

    .line 100
    :cond_8
    iget-object v8, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mPropUsage:Ljava/util/Map;

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mPropUsage:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v8, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 105
    .end local v0    # "aList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "aNodeIter":Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;
    .end local v3    # "aStringIter":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_9
    sget-boolean v6, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->DEBUG:Z

    if-eqz v6, :cond_a

    .line 106
    const-string v6, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "initPropNodes() - populatePropCatalog"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_a
    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mPropNodes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;

    .line 108
    .restart local v1    # "aNodeIter":Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;
    invoke-interface {v1}, Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;->populatePropCatalog()Z

    move-result v6

    if-nez v6, :cond_b

    .line 109
    const-string v6, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "coex prop node failed to populate coex dict"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 110
    goto/16 :goto_1

    .line 113
    .end local v1    # "aNodeIter":Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;
    :cond_c
    sget-boolean v6, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->DEBUG:Z

    if-eqz v6, :cond_d

    .line 114
    const-string v6, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "initPropNodes() - checkPropCatalog"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_d
    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mPropNodes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;

    .line 116
    .local v2, "aNodeIter2":Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;
    invoke-interface {v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;->checkPropCatalog()Z

    move-result v6

    if-nez v6, :cond_e

    .line 117
    const-string v6, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "coex prop node failed to check coex dict content"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 118
    goto/16 :goto_1

    .line 121
    .end local v2    # "aNodeIter2":Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;
    :cond_f
    const/4 v6, 0x1

    goto/16 :goto_1
.end method

.method public isPropRequired(Ljava/lang/String;)Z
    .locals 2
    .param p1, "propName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mPropUsage:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mPropUsage:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public removePropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z
    .locals 3
    .param p1, "aPropName"    # Ljava/lang/String;
    .param p2, "aListener"    # Ljava/beans/PropertyChangeListener;

    .prologue
    .line 194
    sget-object v0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->sPropertyHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cannot find property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->dumpPropCatalog()V

    .line 197
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    .line 199
    :cond_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->sPropertyHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/cellcoex/service/CoexProperty;

    invoke-virtual {v0, p2}, Lcom/intel/internal/cellcoex/service/CoexProperty;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 200
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "aPropName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 169
    .local p2, "aValue":Ljava/lang/Object;, "TT;"
    sget-object v0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->sPropertyHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cannot find property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->dumpPropCatalog()V

    .line 172
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    .line 175
    :cond_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->sPropertyHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/cellcoex/service/CoexProperty;

    invoke-virtual {v0, p2}, Lcom/intel/internal/cellcoex/service/CoexProperty;->setValue(Ljava/lang/Object;)V

    .line 177
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z
    .locals 3
    .param p1, "aPropName"    # Ljava/lang/String;
    .param p2, "aListener"    # Ljava/beans/PropertyChangeListener;

    .prologue
    .line 182
    sget-object v0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->sPropertyHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cannot find property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->dumpPropCatalog()V

    .line 185
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    .line 188
    :cond_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->sPropertyHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/cellcoex/service/CoexProperty;

    invoke-virtual {v0, p2}, Lcom/intel/internal/cellcoex/service/CoexProperty;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 189
    const/4 v0, 0x1

    goto :goto_0
.end method
