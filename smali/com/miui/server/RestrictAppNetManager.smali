.class public Lcom/miui/server/RestrictAppNetManager;
.super Ljava/lang/Object;
.source "RestrictAppNetManager.java"


# static fields
.field private static final RULE_ALLOW:I = 0x0

.field private static final RULE_RESTRICT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RestrictAppNetManager"

.field private static final TYPE_ALL:I = 0x3

.field private static sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Lcom/android/server/MiuiNetworkManagementService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/server/RestrictAppNetManager;->updateRestrictAppNetProp(Landroid/content/Context;)V

    return-void
.end method

.method static init(Landroid/content/Context;)V
    .locals 4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "persist.sys.released"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "RestrictAppNetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init released : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/MiuiNetworkManagementService;->getInstance()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v1

    sput-object v1, Lcom/miui/server/RestrictAppNetManager;->sService:Lcom/android/server/MiuiNetworkManagementService;

    invoke-static {p0}, Lcom/miui/server/RestrictAppNetManager;->registerCloudDataObserver(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.ABenchMark"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.ABenchMark5"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.benchmark.bench64"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.videobench"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.ABenchMark.GL2"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.tester"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.benchmark.full"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.music.videogame"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.ludashi.benchmark"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.ludashi.benchmarkhd"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.qihoo360.ludashi.cooling"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "cn.opda.android.activity"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.shouji.cesupaofen"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.colola.mobiletest"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "ws.j7uxli.a6urcd"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.gamebench.metricscollector"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.huahua.test"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.futuremark.dmandroid.application"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.eembc.coremark"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.rightware.BasemarkOSII"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.glbenchmark.glbenchmark27"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.greenecomputing.linpack"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "eu.chainfire.cfbench"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.primatelabs.geekbench"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.primatelabs.geekbench3"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.quicinc.vellamo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.aurorasoftworks.quadrant.ui.advanced"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.aurorasoftworks.quadrant.ui.standard"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "eu.chainfire.perfmon"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.evozi.deviceid"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.finalwire.aida64"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.cpuid.cpu_z"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "rs.in.luka.android.pi"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.uzywpq.cqlzahm"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.xidige.androidinfo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.appems.hawkeye"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.tyyj89.androidsuperinfo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.ft1gp"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "ws.k6t2we.b4zyjdjv"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.myapp.dongxie_app1"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.shoujijiance.zj"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.qrj.test"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.appems.testonetest"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miui/server/RestrictAppNetManager;->updateFirewallRule(I)V

    goto/16 :goto_0
.end method

.method static isRestrictedAppNet(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static registerCloudDataObserver(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataNotifyUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/miui/server/RestrictAppNetManager$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/miui/server/RestrictAppNetManager$1;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private static updateFirewallRule(I)V
    .locals 5

    sget-object v2, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/miui/server/RestrictAppNetManager;->sService:Lcom/android/server/MiuiNetworkManagementService;

    if-eqz v2, :cond_0

    const-string v2, "RestrictAppNetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFirewallRule : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/miui/server/RestrictAppNetManager;->sService:Lcom/android/server/MiuiNetworkManagementService;

    const/4 v3, 0x3

    invoke-virtual {v2, v1, p0, v3}, Lcom/android/server/MiuiNetworkManagementService;->setMiuiFirewallRule(Ljava/lang/String;II)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static updateRestrictAppNetProp(Landroid/content/Context;)V
    .locals 8

    :try_start_0
    const-string v6, "persist.sys.released"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v6, "RestrictAppNetManager"

    const-string v7, "updateRestrictAppNetProp"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "RestrictAppControl"

    invoke-static {v6, v7}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    const-string v6, "released"

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "persist.sys.released"

    const-string v7, "true"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/miui/server/RestrictAppNetManager;->updateFirewallRule(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v6, "RestrictAppNetManager"

    const-string v7, "update released prop exception"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
