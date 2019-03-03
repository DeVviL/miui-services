.class Lcom/miui/server/TidaService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "TidaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/TidaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/TidaService;


# direct methods
.method private constructor <init>(Lcom/miui/server/TidaService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/server/TidaService$MyPackageMonitor;->this$0:Lcom/miui/server/TidaService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/TidaService;Lcom/miui/server/TidaService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/server/TidaService$MyPackageMonitor;-><init>(Lcom/miui/server/TidaService;)V

    return-void
.end method


# virtual methods
.method public onUidRemoved(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/server/TidaService$MyPackageMonitor;->this$0:Lcom/miui/server/TidaService;

    invoke-static {v0, p1}, Lcom/miui/server/TidaService;->access$000(Lcom/miui/server/TidaService;I)V

    return-void
.end method
