.class Lcom/android/server/am/LowPriorityServiceHelper;
.super Ljava/lang/Object;
.source "ActiveServicesInjector.java"


# static fields
.field static final DEBUG_DELAYED_STARTS:Z = false

.field static final DEFAULT_NO_PROC_DELAY_TIME:J = 0x12cL

.field static final LOW_PRIORITY_DELAY:J = 0x96L

.field static final MAX_DELAY_TIME:J = 0x3e8L

.field static final MAX_TIME_OUT:J = 0x5dcL

.field static final MIN_DELAY_TIME:J = 0x0L

.field static final MSG_BG_RESTART_LOW_PRIORITY:I = 0x66

.field static final MSG_BG_START_LOW_PRIORITY:I = 0x65

.field private static final PACKAGE_NAME_ALL:Ljava/lang/String; = "*"

.field private static final SEPARATOR:Ljava/lang/String; = "/"

.field static final SHORT_DELAY:J = 0x5L

.field static final mInstance:Lcom/android/server/am/LowPriorityServiceHelper;


# instance fields
.field private final MAX_SIZE:I

.field private canOpen:Z

.field private closeCheck:Z

.field private fLowPriorityDelay:Ljava/lang/reflect/Field;

.field private fLowPriorityDelayRestart:Ljava/lang/reflect/Field;

.field private lastLowPriorityEnforcedTime:J

.field private final mBlacklist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowPriorityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/LowPriorityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhitelist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;"
        }
    .end annotation
.end field

.field noProcDelayTime:J

.field private sendNoDelayEnforcedMsg:Z

.field private startEnforcedLowPriorityService:Z

.field private unCheckPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-direct {v0}, Lcom/android/server/am/LowPriorityServiceHelper;-><init>()V

    sput-object v0, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->MAX_SIZE:I

    iput-boolean v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    iput-boolean v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheck:Z

    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->noProcDelayTime:J

    iput-boolean v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->sendNoDelayEnforcedMsg:Z

    iput-boolean v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->startEnforcedLowPriorityService:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->unCheckPackage:Ljava/util/HashSet;

    :try_start_0
    const-class v1, Lcom/android/server/am/ServiceRecord;

    const-string v2, "lowPriorityDelay"

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelay:Ljava/lang/reflect/Field;

    const-class v1, Lcom/android/server/am/ServiceRecord;

    const-string v2, "lowPriorityDelayRestart"

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelayRestart:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v1, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelay:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelayRestart:Ljava/lang/reflect/Field;

    if-nez v1, :cond_1

    :cond_0
    iput-boolean v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private countDelayTime(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/internal/app/MiuiServicePriority;Lcom/android/server/am/LowPriorityServiceInfo;)V
    .locals 6

    if-nez p2, :cond_0

    const-wide/16 v0, 0x96

    :goto_0
    iput-wide v0, p3, Lcom/android/server/am/LowPriorityServiceInfo;->delay:J

    return-void

    :cond_0
    iget-wide v2, p2, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const-wide/16 v0, 0x96

    :goto_1
    goto :goto_0

    :cond_1
    iget-wide v0, p2, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    goto :goto_1
.end method

.method private dumpMiuiServicePriority(Ljava/io/PrintWriter;Lcom/android/internal/app/MiuiServicePriority;)V
    .locals 2

    const-string v0, "#SP : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " pkgName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " sName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " prio="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/internal/app/MiuiServicePriority;->priority:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " cPrio="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p2, Lcom/android/internal/app/MiuiServicePriority;->checkPriority:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " inBlist="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p2, Lcom/android/internal/app/MiuiServicePriority;->inBlacklist:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " dTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private setLowPriorityDelay(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelay:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheckPriority()V

    goto :goto_0
.end method

.method private setLowPriorityDelayRestart(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->fLowPriorityDelayRestart:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheckPriority()V

    goto :goto_0
.end method


# virtual methods
.method public callerIsTopApp(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 5

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p2, :cond_3

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v3, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v2, v3, :cond_2

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->unCheckPackage:Ljava/util/HashSet;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ActiveServicesInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnCheckPackage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public closeCheckPriority()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->unCheckPackage:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheck:Z

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 10

    const-string v7, "  MIUI ADD :  LPSH dump start : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "  LowPriorityList services : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    iget-object v7, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/LowPriorityServiceInfo;

    const-string v7, "#LPSInfo : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, " isRestart : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v3, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " delay : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v3, Lcom/android/server/am/LowPriorityServiceInfo;->delay:J

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    const-string v7, " pendingStarts.size : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v7, v3, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    const-string v8, "    "

    invoke-virtual {v7, p1, v8}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v7, "  Blacklist : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/MiuiServicePriority;

    invoke-direct {p0, p1, v5}, Lcom/android/server/am/LowPriorityServiceHelper;->dumpMiuiServicePriority(Ljava/io/PrintWriter;Lcom/android/internal/app/MiuiServicePriority;)V

    goto :goto_1

    :cond_1
    const-string v7, "  Whitelist : "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/MiuiServicePriority;

    invoke-direct {p0, p1, v5}, Lcom/android/server/am/LowPriorityServiceHelper;->dumpMiuiServicePriority(Ljava/io/PrintWriter;Lcom/android/internal/app/MiuiServicePriority;)V

    goto :goto_2

    :cond_2
    const-string v7, "  LPSH dump END !!!"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public forceRemoveServiceLocked(Lcom/android/server/am/ServiceRecord;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/LowPriorityServiceInfo;

    iget-object v2, v2, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isLowPriorityDelayStart(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;IZ)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isLowPriorityDelayStart(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 14

    iget-boolean v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheck:Z

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    const/16 v11, 0x2710

    if-ge v10, v11, :cond_1

    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->isAllLimit()Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v2, 0x1

    :cond_2
    :goto_1
    if-eqz v2, :cond_e

    new-instance v4, Lcom/android/server/am/LowPriorityServiceInfo;

    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-direct {v4, v0, v1}, Lcom/android/server/am/LowPriorityServiceInfo;-><init>(Lcom/android/server/am/ServiceRecord;Z)V

    invoke-direct {p0, p1, v8, v4}, Lcom/android/server/am/LowPriorityServiceHelper;->countDelayTime(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/internal/app/MiuiServicePriority;Lcom/android/server/am/LowPriorityServiceInfo;)V

    if-eqz p5, :cond_3

    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/android/server/am/LowPriorityServiceInfo;->restartPerformed:Z

    :cond_3
    iget-object v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0x1e

    if-lt v10, v11, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    iget-boolean v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->sendNoDelayEnforcedMsg:Z

    if-nez v10, :cond_4

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->sendNoDelayEnforcedMsg:Z

    iget-object v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/LowPriorityServiceInfo;

    iget-boolean v10, v3, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-eqz v10, :cond_b

    const/16 v10, 0x66

    invoke-virtual {p1, v10}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    :goto_2
    invoke-virtual {p1, v5}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    iget-object v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-boolean v10, v4, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-eqz v10, :cond_c

    const/16 v10, 0x66

    invoke-virtual {p1, v10}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    :goto_3
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_5

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v10, :cond_6

    :cond_5
    iget-wide v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    const-wide/16 v12, 0x96

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x12c

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    :cond_6
    iget-wide v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    cmp-long v10, v6, v10

    if-ltz v10, :cond_d

    invoke-virtual {p1, v5}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    :goto_4
    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_8
    if-eqz p4, :cond_a

    iget-object v9, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "*/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/MiuiServicePriority;

    if-eqz v8, :cond_9

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/MiuiServicePriority;

    if-eqz v8, :cond_2

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_a
    iget-object v9, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/MiuiServicePriority;

    if-nez v8, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "*/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/MiuiServicePriority;

    if-nez v8, :cond_2

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_b
    const/16 v10, 0x65

    invoke-virtual {p1, v10}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    goto/16 :goto_2

    :cond_c
    const/16 v10, 0x65

    invoke-virtual {p1, v10}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    goto/16 :goto_3

    :cond_d
    iget-wide v10, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    sub-long/2addr v10, v6

    invoke-virtual {p1, v5, v10, v11}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public removeService(Lcom/android/server/am/ServiceRecord;)Z
    .locals 4

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/LowPriorityServiceInfo;

    iget-object v3, v1, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v2, v1, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lcom/android/server/am/LowPriorityServiceInfo;->restartPerformed:Z

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V
    .locals 7

    iget-boolean v5, p0, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheck:Z

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    :goto_1
    iget-object v5, p1, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/MiuiServicePriority;

    iget-object v5, v3, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public rescheduleDelayedList(JLcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$ServiceMap;)V
    .locals 11

    iget-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->startEnforcedLowPriorityService:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->startEnforcedLowPriorityService:Z

    :goto_1
    iget-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/LowPriorityServiceInfo;

    const/4 v8, 0x0

    iget-boolean v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-nez v0, :cond_2

    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/LowPriorityServiceHelper;->setLowPriorityDelay(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/LowPriorityServiceInfo;

    :cond_3
    if-eqz v8, :cond_a

    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->sendNoDelayEnforcedMsg:Z

    iget-object v0, v8, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_4

    iget-object v0, v8, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_8

    :cond_4
    iget-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->noProcDelayTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    :goto_2
    iget-boolean v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->restartPerformed:Z

    :try_start_0
    const-string v0, "ActiveServicesInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESTART Low priority start of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/LowPriorityServiceHelper;->setLowPriorityDelayRestart(Lcom/android/server/am/ServiceRecord;Z)V

    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const/16 v0, 0x66

    invoke-virtual {p4, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    if-eqz v8, :cond_5

    iget-boolean v0, v8, Lcom/android/server/am/LowPriorityServiceInfo;->isRestart:Z

    if-eqz v0, :cond_e

    const/16 v0, 0x66

    invoke-virtual {p4, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    :cond_5
    :goto_4
    iget-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    invoke-virtual {p4, v7, v0, v1}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->startEnforcedLowPriorityService:Z

    :cond_7
    iget-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mLowPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x66

    invoke-virtual {p4, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_8
    iget-wide v0, v8, Lcom/android/server/am/LowPriorityServiceInfo;->delay:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    goto :goto_2

    :cond_9
    const-wide/16 v0, 0x5

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    goto :goto_2

    :cond_a
    const-wide/16 v0, 0x96

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->lastLowPriorityEnforcedTime:J

    goto :goto_2

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_b
    :try_start_1
    const-string v0, "ActiveServicesInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Low priority start of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/LowPriorityServiceHelper;->setLowPriorityDelay(Lcom/android/server/am/ServiceRecord;Z)V

    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord$StartItem;

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    iget-object v3, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    const/4 v4, 0x0

    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_c

    iget-object v0, v9, Lcom/android/server/am/LowPriorityServiceInfo;->mR:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_d

    :cond_c
    const/4 v5, 0x1

    :goto_5
    move-object v0, p3

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_d
    const/4 v5, 0x0

    goto :goto_5

    :cond_e
    const/16 v0, 0x65

    invoke-virtual {p4, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    goto/16 :goto_4
.end method

.method public setNoProcDelayTime(J)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    iput-wide p1, p0, Lcom/android/server/am/LowPriorityServiceHelper;->noProcDelayTime:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/am/LowPriorityServiceHelper;->noProcDelayTime:J

    goto :goto_0
.end method

.method public setServicePriority(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;)V"
        }
    .end annotation

    iget-boolean v5, p0, Lcom/android/server/am/LowPriorityServiceHelper;->canOpen:Z

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/MiuiServicePriority;

    iget-boolean v5, v2, Lcom/android/internal/app/MiuiServicePriority;->inBlacklist:Z

    if-eqz v5, :cond_1

    iget-object v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mBlacklist:Ljava/util/HashMap;

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/MiuiServicePriority;

    if-eqz v3, :cond_3

    iget-object v5, v2, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    iget v5, v2, Lcom/android/internal/app/MiuiServicePriority;->priority:I

    iput v5, v3, Lcom/android/internal/app/MiuiServicePriority;->priority:I

    iget-boolean v5, v2, Lcom/android/internal/app/MiuiServicePriority;->checkPriority:Z

    iput-boolean v5, v3, Lcom/android/internal/app/MiuiServicePriority;->checkPriority:Z

    iget-wide v6, v2, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    iget-wide v6, v2, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-gtz v5, :cond_2

    iget-wide v6, v2, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    iput-wide v6, v3, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/server/am/LowPriorityServiceHelper;->mWhitelist:Ljava/util/HashMap;

    goto :goto_2

    :cond_2
    const-wide/16 v6, 0x96

    iput-wide v6, v3, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/server/am/LowPriorityServiceHelper;->unCheckPackage:Ljava/util/HashSet;

    const-string v6, "com.cttl.testService"

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheck:Z

    goto :goto_0
.end method
