.class Lcom/android/server/display/PaperModeService$LocalService;
.super Lcom/android/server/display/ScreenEffectManager;
.source "PaperModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PaperModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/PaperModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/PaperModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/PaperModeService$LocalService;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/PaperModeService$LocalService;-><init>(Lcom/android/server/display/PaperModeService;)V

    return-void
.end method


# virtual methods
.method public updateLocalScreenEffect(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
