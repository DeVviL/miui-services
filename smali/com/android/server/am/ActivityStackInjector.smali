.class Lcom/android/server/am/ActivityStackInjector;
.super Ljava/lang/Object;
.source "ActivityStackInjector.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static captureActivityScreenshot(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/ActivityRecord;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowType()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->userId:I

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v0, v1, v2}, Lmiui/securityspace/CrossUserUtils;->getComponentStringWithUserIdAndTaskId(Landroid/content/ComponentName;II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Lmiui/util/ScreenshotUtils;->captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->userId:I

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v0, v1, v2}, Lmiui/securityspace/CrossUserUtils;->getComponentStringWithUserIdAndTaskId(Landroid/content/ComponentName;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static findMatchTask(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/server/am/MiuiMultiTaskManager;->checkMultiTaskAffinity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v5, "miui_launch_app_in_one_task_group"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    :goto_1
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method static getStartingWindowLabel(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 8

    const-wide/16 v6, 0x40

    const-string v4, "getStartingWindowLabel"

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityStackInjector;->isStartingWindowSupported(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v4, ":android:show_fragment_args"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, ":miui:starting_window_label"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_1

    const-string v4, ":miui:starting_window_label"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_1
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catch_0
    move-exception v1

    const-string v3, ""

    goto :goto_0
.end method

.method static getStartingWindowLabelRes(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)I
    .locals 6

    const-wide/16 v4, 0x40

    const-string v2, "getStartingWindowLabelRes"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityStackInjector;->isStartingWindowSupported(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v2, ":android:show_fragment_title"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static isAllowCross(II)Z
    .locals 1

    const/16 v0, 0x3e7

    if-nez p0, :cond_0

    if-eq p1, v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isAllowDontWaitForPause(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityManagerService;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    const-string v3, "com.miui.home"

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v3, v4, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method static isStartingWindowSupported(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Z
    .locals 10

    const-wide/16 v8, 0x40

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "isStartingWindowSupported"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v3, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->setTheme(I)V

    invoke-static {p1}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    sget v3, Lmiui/R$attr;->windowDisablePreview:I

    invoke-static {p1, v3, v2}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v3

    if-eq v3, v1, :cond_2

    move v0, v1

    :cond_1
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    :cond_2
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static isTaskAlive(Lcom/android/server/am/TaskRecord;)Z
    .locals 4

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0
.end method

.method static moveTaskIfNeed(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/MiuiMultiTaskManager;->isMultiTaskSupport(Lcom/android/server/am/ActivityRecord;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v8, "miui_task_return_to_target"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eqz v1, :cond_0

    if-lez v3, :cond_0

    add-int/lit8 v2, v3, -0x1

    :goto_2
    if-ltz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_3

    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4, v6}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    move v5, v6

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private static taskAbove(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Lcom/android/server/am/TaskRecord;",
            ")",
            "Lcom/android/server/am/TaskRecord;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static transferOnTopOfHomeForMoveTask(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Lcom/android/server/am/TaskRecord;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityStackInjector;->taskAbove(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/am/ActivityStackInjector;->isTaskAlive(Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    :cond_0
    return-void
.end method

.method public static transferOnTopOfHomeForMoveTaskToFrontLocked(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Lcom/android/server/am/TaskRecord;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityStackInjector;->transferOnTopOfHomeForMoveTask(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)V

    return-void
.end method
