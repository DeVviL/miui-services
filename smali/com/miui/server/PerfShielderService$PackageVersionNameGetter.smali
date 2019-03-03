.class Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;
.super Ljava/lang/Object;
.source "PerfShielderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/PerfShielderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageVersionNameGetter"
.end annotation


# instance fields
.field packageVersionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/server/PerfShielderService;


# direct methods
.method private constructor <init>(Lcom/miui/server/PerfShielderService;)V
    .locals 1

    .prologue
    .line 417
    iput-object p1, p0, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->packageVersionMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/server/PerfShielderService;
    .param p2, "x1"    # Lcom/miui/server/PerfShielderService$1;

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;-><init>(Lcom/miui/server/PerfShielderService;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 420
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    const-string v1, ""

    .line 431
    :goto_0
    return-object v1

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->packageVersionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 424
    const-string v0, ""

    .line 426
    .local v0, "packageVersion":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v1}, Lcom/miui/server/PerfShielderService;->access$500(Lcom/miui/server/PerfShielderService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_1
    iget-object v1, p0, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->packageVersionMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .end local v0    # "packageVersion":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->packageVersionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 427
    .restart local v0    # "packageVersion":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
