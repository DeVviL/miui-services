.class public Lcom/android/server/statusbar/StatusBarManagerServiceInjector;
.super Ljava/lang/Object;
.source "StatusBarManagerServiceInjector.java"


# static fields
.field private static final BOOST_PRIORITY:I = -0xa

.field private static final SYSTEMUI_BOOST_TAG:Ljava/lang/String; = "systemui_boost"

.field private static sInjector:Lcom/android/server/statusbar/StatusBarManagerServiceInjector;


# instance fields
.field private mOldRenderPriority:I

.field private mOldUIPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;

    invoke-direct {v0}, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;-><init>()V

    sput-object v0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->sInjector:Lcom/android/server/statusbar/StatusBarManagerServiceInjector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/statusbar/StatusBarManagerServiceInjector;
    .locals 1

    sget-object v0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->sInjector:Lcom/android/server/statusbar/StatusBarManagerServiceInjector;

    return-object v0
.end method


# virtual methods
.method public boostSystemUI(Z)V
    .locals 7

    const/16 v6, -0xa

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v3, "systemui_boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notification panel visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/server/am/ExtraActivityManagerService;->getRenderThreadTidByPid(I)I

    move-result v2

    const-string v3, "systemui_boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ui thread tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "systemui_boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "render thread tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    const-string v3, "systemui_boost"

    const-string v4, "render-thread tid = 0, do not boost"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->mOldUIPriority:I

    const-string v3, "systemui_boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ui thread old priority="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->mOldUIPriority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->mOldRenderPriority:I

    const-string v3, "systemui_boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "render thread old priority="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->mOldRenderPriority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, "systemui_boost"

    invoke-static {v1, v6, v3}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    const-string v3, "systemui_boost"

    invoke-static {v2, v6, v3}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    const-string v3, "systemui_boost"

    const-string v4, "ui thread and render thread are boosted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "systemui_boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ui thread tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", does not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "systemui_boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "render thread tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", does not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->mOldUIPriority:I

    const-string v4, "systemui_boost"

    invoke-static {v1, v3, v4}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerServiceInjector;->mOldRenderPriority:I

    const-string v4, "systemui_boost"

    invoke-static {v2, v3, v4}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    const-string v3, "systemui_boost"

    const-string v4, "ui thread and render thread are reset"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
