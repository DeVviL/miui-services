.class Lcom/android/server/pm/PackageManagerServiceInjector;
.super Ljava/lang/Object;
.source "PackageManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;,
        Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
    }
.end annotation


# static fields
.field private static final APP_LIST_FILE:Ljava/lang/String; = "/system/etc/install_app_filter.xml"

.field private static final BLOCK_APPS:[[Ljava/lang/String;

.field static DEBUG_CHANGE:Z = false

.field static final DELETE_FAILED_FORBIDED_BY_MIUI:I = -0x3e8

.field static final INSTALL_IGNORE_PACKAGE:I = -0x3e8

.field private static final MSG_INSTALL_APP_GOON:I = 0x0

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final SUPPORT_OLDMAN_MODE:Ljava/lang/String; = "support_oldman_mode"

.field private static TAG:Ljava/lang/String; = null

.field private static final TAG_ADD_APPS:Ljava/lang/String; = "add_apps"

.field private static final TAG_APP:Ljava/lang/String; = "app"

.field private static final TAG_IGNORE_APPS:Ljava/lang/String; = "ignore_apps"

.field static mHandler:Landroid/os/Handler;

.field private static sAllowPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field static sCrossXSpaceIntent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIgnoreApks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIgnorePackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNotDisable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sPrivateXSpaceIntentUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sShellCheckPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sXSpaceFriendlyActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static updateSystemPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-class v0, Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/pm/PackageManagerServiceInjector;->DEBUG_CHANGE:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string v1, "/system/app/TSMClient.apk"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lmiui/os/Build;->IS_MI2A:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string v1, "/system/app/Nfc.apk"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string v1, "/system/app/Nfc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-nez v0, :cond_1

    :cond_1
    const-string v0, "support_fm"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string v1, "/system/app/FM.apk"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string v1, "/system/app/FM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->readIgnoreApks()V

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    const-string v1, "com.sogou.inputmethod.mi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    const-string v1, "com.miui.dmregservice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageManagerServiceInjector$1;

    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerServiceInjector$1;-><init>()V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceFriendlyActionList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceFriendlyActionList:Ljava/util/ArrayList;

    const-string v1, "com.sina.weibo.action.sdkidentity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceFriendlyActionList:Ljava/util/ArrayList;

    const-string v1, "com.sina.weibo.remotessoservice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string v1, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sPrivateXSpaceIntentUri:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sPrivateXSpaceIntentUri:Ljava/util/ArrayList;

    const-string v1, "com.whatsapp.provider.media"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string v1, "com.lbe.security.miui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string v1, "com.android.updater"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.finddevice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.BACKUP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.CLEAR_APP_USER_DATA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.MANAGE_DEVICE_ADMINS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ro.debuggable"

    invoke-static {v0, v4}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_6

    const-string v0, "ro.secureboot.devicelock"

    invoke-static {v0, v4}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "unlocked"

    const-string v1, "ro.secureboot.lockstate"

    invoke-static {v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.gamecenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v1, "com.android.packageinstaller"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v1, "com.google.android.packageinstaller"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v1, "com.android.managedprovisioning"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v1, "com.miui.cloudbackup"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v1, "com.miui.analytics"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v1, "com.android.provision"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v1, "com.miui.powerkeeper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v1, "com.miui.systemAdSolution"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v1, "com.miui.packageinstaller"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.discover"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.mipicks"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v1, "com.securespaces.android.ssm.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "com.jeejen.family.miui"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.miui.home"

    aput-object v2, v1, v4

    const-string v2, "com.android.mms"

    aput-object v2, v1, v3

    const-string v2, "com.android.contacts"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->BLOCK_APPS:[[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static addIgnoreApk(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static addIgnorePackage(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static addLostPackagePropertyForOta(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x2

    const-string v0, "com.google.android.setupwizard"

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_0

    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-eq v3, v2, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v3, "pm Argument is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v3, "context Argument is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method static addMiuiSharedUids(Lcom/android/server/pm/Settings;Z)V
    .locals 4

    const/16 v1, 0x2710

    const/4 v3, 0x1

    const-string v2, "android.uid.backup"

    if-eqz p1, :cond_1

    const/16 v0, 0x2648

    :goto_0
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;

    const-string v2, "android.uid.theme"

    if-eqz p1, :cond_2

    const/16 v0, 0x2649

    :goto_1
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;

    const-string v2, "android.uid.updater"

    if-eqz p1, :cond_3

    const/16 v0, 0x264a

    :goto_2
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;

    const-string v0, "android.uid.finddevice"

    if-eqz p1, :cond_0

    const/16 v1, 0x2652

    :cond_0
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method static addUpdateSystemApp(Lcom/android/server/pm/PackageSetting;)V
    .locals 2

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static adjustCpuAbisForSharedUserLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;Landroid/content/pm/PackageParser$Package;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Landroid/content/pm/PackageParser$Package;",
            "ZZ)V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->adjustCpuAbisForSharedUserLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;Landroid/content/pm/PackageParser$Package;ZZ)V

    return-void
.end method

.method public static beforeSystemReady(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/server/SecSpaceManagerService;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->installBlockApps(Landroid/content/Context;)V

    return-void
.end method

.method static checkAndResolveFlags(Landroid/content/Intent;Ljava/lang/String;II)I
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserCalling()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceFriendlyActionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit16 p2, p2, 0x2000

    :cond_0
    return p2
.end method

.method static checkAndRunPreInstallation(Landroid/os/Handler;Landroid/os/Message;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static checkGetInstalledAppsPermission(IILjava/lang/String;)Z
    .locals 7

    const/4 v3, 0x1

    sget-boolean v4, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v4, 0x2710

    if-lt v0, v4, :cond_0

    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    sget-object v4, Lcom/android/server/pm/PackageManagerServiceInjector;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-nez v4, :cond_2

    const-string v4, "appops"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v4

    sput-object v4, Lcom/android/server/pm/PackageManagerServiceInjector;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    :cond_2
    sget-object v4, Lcom/android/server/pm/PackageManagerServiceInjector;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v5, 0x44

    invoke-interface {v4, v5, p1, v1}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MIUILOG- Permission Denied "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v4, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v5, "checkGetInstalledAppsPermission"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static checkMiuiIntent(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    if-eqz p1, :cond_9

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.intent.category.HOME"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "com.jeejen.family.miui"

    const-string v1, "com.jeejen.home.launcher.Launcher"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    :cond_1
    :goto_1
    return-object v8

    :cond_2
    const-string v0, "com.miui.home"

    const-string v1, "com.miui.home.launcher.Launcher"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string v0, "http"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "https"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lmiui/util/UrlResolver;->checkMiuiIntent(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0, p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBrowserResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_5
    const-string v0, "mimarket"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "market"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v0, "details"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "search"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-static {p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getMarketResolveInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_0

    goto/16 :goto_1

    :cond_8
    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.miui.packageinstaller"

    const-string v1, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_9
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    goto/16 :goto_1
.end method

.method static checkMiuiSdk(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageManagerService;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->checkMiuiSdk(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageManagerService;)Z

    move-result v0

    return v0
.end method

.method static cleanupUpdateFailedSystemPackage(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .locals 2

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/Settings;->isDisabledSystemPackageLPr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageManagerService;->cleanupInstallFailedPackage(Lcom/android/server/pm/PackageSetting;)V

    :cond_0
    return-void
.end method

.method static clearUpdateSystemApps()V
    .locals 1

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method static copyOdexFileIfExists(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerProxy;->copyOdexFileIfExists(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method private static deleteContents(Ljava/io/File;)Z
    .locals 9

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->deleteContents(Ljava/io/File;)Z

    move-result v6

    and-int/2addr v5, v6

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method private static deleteFileOrDirectory(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->deleteContents(Ljava/io/File;)Z

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static doRenameApk(Ljava/io/File;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerProxy;->doRenameApk(Ljava/io/File;Ljava/lang/String;I)V

    return-void
.end method

.method private static existsApkFileUnderDir(Ljava/io/File;)Z
    .locals 7

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method static filterBackgroundDexOptApps(Lcom/android/server/pm/PackageManagerService;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->filterBackgroundDexOptApps(Lcom/android/server/pm/PackageManagerService;Ljava/util/Collection;)V

    return-void
.end method

.method static getBrowserResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    const-string v3, "CN"

    invoke-static {v3}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    const-string v3, "com.android.browser"

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v3, :cond_2

    move-object v1, v2

    goto :goto_0
.end method

.method static getInstalledApplicationsWithoutPermission(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-object p1

    :cond_1
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v2, :cond_2

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method static getInstalledPackagesWithoutPermission(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-object p1

    :cond_1
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v2, :cond_2

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method static getInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "adb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "com.android.cts."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method static getMarketResolveInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    const-string v3, "com.xiaomi.market"

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_1
    return-object v1
.end method

.method private static getPackageName(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerProxy;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getSystemPackageFilePath(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/Settings;->isDisabledSystemPackageLPr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSystemResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget v1, v5, Landroid/content/pm/ResolveInfo;->match:I

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget v6, v4, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget v5, v5, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v6, v5, :cond_2

    :cond_1
    return-object v3

    :cond_2
    iget v5, v4, Landroid/content/pm/ResolveInfo;->match:I

    if-le v5, v1, :cond_4

    iget v1, v4, Landroid/content/pm/ResolveInfo;->match:I

    const/4 v3, 0x0

    :cond_3
    iget-boolean v5, v4, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v5}, Lmiui/content/pm/ExtraPackageManager;->isMiuiSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_4
    iget v5, v4, Landroid/content/pm/ResolveInfo;->match:I

    if-lt v5, v1, :cond_0

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method static ignoreApk(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static ignorePackage(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static initTempInitApk(Z)V
    .locals 4

    invoke-static {p0}, Landroid/content/pm/PackageHideManager;->getInstance(Z)Landroid/content/pm/PackageHideManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageHideManager;->getIgnoreApkPathList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->addIgnoreApk(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static installBlockApps(Landroid/content/Context;)V
    .locals 10

    const-string v8, "support_oldman_mode"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v3, 0x0

    :goto_0
    sget-object v8, Lcom/android/server/pm/PackageManagerServiceInjector;->BLOCK_APPS:[[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_2

    sget-object v8, Lcom/android/server/pm/PackageManagerServiceInjector;->BLOCK_APPS:[[Ljava/lang/String;

    aget-object v0, v8, v3

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    iget-object v8, v7, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    if-eqz v4, :cond_0

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static installError(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 8

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v0, "android.content.pm.IPackageInstallObserver"

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-le v4, v5, :cond_1

    const-string v0, "android.content.pm.IPackageInstallObserver2"

    :cond_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-le v4, v5, :cond_2

    const-string v4, "onPackageInstalled"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v5, "Error"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v4, "packageInstalled"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static isAllowedDisable(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isAllowedHideApp(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZI)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, p3}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_3

    move v1, v2

    :goto_0
    const-string v4, "com.android.browser"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.android.chrome"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    if-eqz p2, :cond_5

    if-nez v1, :cond_2

    sget-boolean v4, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v4, :cond_5

    :cond_2
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v4, "MIUILOG- Not Support"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v2

    :cond_3
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1
.end method

.method public static isAllowedInstall(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p2, p3, v2, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->isAllowedInstall(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    goto :goto_0
.end method

.method static isAllowedInstall(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->isAllowedInstall(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public static isAllowedInstall(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Z)Z
    .locals 10

    const/16 v9, 0x7d0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p2

    if-ne p1, v9, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/android/commands/pm/PmInjector;->installVerify(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_0

    invoke-static {v3}, Lcom/android/commands/pm/PmInjector;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v6, -0x6f

    invoke-static {p3, v6, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->installError(Ljava/lang/Object;ILjava/lang/String;)V

    sget-object v6, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MIUILOG- INSTALL_FAILED_USER_RESTRICTED  uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pkg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :catch_0
    move-exception v0

    sget-object v6, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v7, "Error"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    if-eq p1, v9, :cond_1

    if-eqz p1, :cond_1

    sget-boolean v6, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v6, :cond_2

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    if-nez p4, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-ne v6, v7, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    if-nez p4, :cond_4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    sget-object v6, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v4, v5

    goto :goto_0

    :cond_5
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MIUILOG- Install Reject uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pkg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x6e

    const-string v6, "Permission Denied"

    invoke-static {p3, v5, v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->installError(Ljava/lang/Object;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static isPackageInstalled(Lcom/android/server/pm/Settings;Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isSystemPackage(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isTrueSystemPackage(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->isSystemPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string v2, ""

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " a true system package"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    :try_start_1
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_3
    const-string v2, "not"

    goto :goto_1
.end method

.method static isUpdateSystemApp(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static logComponentStateChanged(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/pm/PackageManagerServiceInjector;->DEBUG_CHANGE:Z

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "component state changed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " package: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " class: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " new state : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " calling uid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " calling pid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p5, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " calling package: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_2
.end method

.method public static onPackageDeleted(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lmiui/mqsas/sdk/event/PackageEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/PackageEvent;-><init>()V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageEvent;->setType(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/PackageEvent;->setTimeStamp(J)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageEvent;->setAction(I)V

    invoke-virtual {v0, p0}, Lmiui/mqsas/sdk/event/PackageEvent;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lmiui/mqsas/sdk/event/PackageEvent;->setReturnCode(I)V

    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, p2}, Lmiui/mqsas/sdk/event/PackageEvent;->setReturnMsg(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPackageDelete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V

    goto :goto_0

    :cond_1
    const-string p2, ""

    goto :goto_1
.end method

.method public static onPackageInstalled(Ljava/lang/String;ILjava/lang/String;ZLandroid/content/pm/PackageParser$Package;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lmiui/mqsas/sdk/event/PackageEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/PackageEvent;-><init>()V

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lmiui/mqsas/sdk/event/PackageEvent;->setType(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/PackageEvent;->setTimeStamp(J)V

    if-eqz p3, :cond_1

    const/4 v1, 0x3

    :cond_1
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageEvent;->setAction(I)V

    invoke-virtual {v0, p0}, Lmiui/mqsas/sdk/event/PackageEvent;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lmiui/mqsas/sdk/event/PackageEvent;->setReturnCode(I)V

    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, p2}, Lmiui/mqsas/sdk/event/PackageEvent;->setReturnMsg(Ljava/lang/String;)V

    if-eqz p4, :cond_3

    iget v1, p4, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    :goto_2
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageEvent;->setVersionCode(I)V

    if-eqz p4, :cond_4

    iget-object v1, p4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageEvent;->setVersionName(Ljava/lang/String;)V

    if-eqz p5, :cond_5

    :goto_4
    invoke-virtual {v0, p5}, Lmiui/mqsas/sdk/event/PackageEvent;->setInstallerPkgName(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPackageInstalled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V

    goto :goto_0

    :cond_2
    const-string p2, ""

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const-string v1, ""

    goto :goto_3

    :cond_5
    const-string p5, ""

    goto :goto_4
.end method

.method public static onPackageInstalled(Ljava/lang/String;IZLandroid/content/pm/PackageParser$Package;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceInjector;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;ZLandroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    return-void
.end method

.method static performPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallApps(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V

    return-void
.end method

.method static preCheckUidPermission(Ljava/lang/String;I)I
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "persist.security.adbinput"

    invoke-static {v0, v2}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "ro.secureboot.devicelock"

    invoke-static {v0, v2}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "unlocked"

    const-string v1, "ro.secureboot.lockstate"

    invoke-static {v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIUILOG- permission\u3000denied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const/16 v0, -0x64

    goto :goto_0
.end method

.method static protectAppFromDeleting(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 12

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v11

    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    move-object v7, v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v8, :cond_1

    :cond_0
    move v8, v10

    :goto_0
    return v8

    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    :cond_1
    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_6

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v8, :cond_6

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string v11, "com.miui.sdk.module"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v11, "keyguard"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, -0x3e8

    :try_start_2
    invoke-static {p2, p1, v8}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->returnPackageDeletedResultToObserver(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move v8, v9

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    move v8, v10

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v6, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;

    invoke-direct {v6}, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;-><init>()V

    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.miui.action.PACKAGE_DELETE_CONFIRM"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "extra_pkgname"

    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "observer"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_3
    const-string v8, "pm"

    invoke-static {v1, v8, v4}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->startActivity(Landroid/app/IActivityManager;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v8

    if-eqz v8, :cond_3

    move v8, v10

    goto :goto_0

    :cond_3
    monitor-enter v6
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    :try_start_4
    iget-boolean v8, v6, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;->finished:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v8, :cond_4

    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_6
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    monitor-exit v6

    move v8, v10

    goto :goto_0

    :cond_4
    iget-boolean v8, v6, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;->delete:Z

    if-nez v8, :cond_5

    const/16 v8, -0x3e8

    invoke-static {p2, p1, v8}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->returnPackageDeletedResultToObserver(Ljava/lang/Object;Ljava/lang/String;I)V

    monitor-exit v6

    move v8, v9

    goto :goto_0

    :cond_5
    monitor-exit v6

    :cond_6
    move v8, v10

    goto/16 :goto_0

    :catchall_1
    move-exception v8

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v8
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    move v8, v10

    goto/16 :goto_0
.end method

.method private static readIgnoreApks()V
    .locals 15

    invoke-static {}, Lmiui/os/Build;->getCustVariant()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v13, Ljava/io/File;

    const-string v14, "/system/etc/install_app_filter.xml"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    const-string v13, "UTF-8"

    invoke-interface {v9, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    :goto_1
    const/4 v13, 0x1

    if-eq v13, v12, :cond_c

    packed-switch v12, :pswitch_data_0

    :cond_2
    :goto_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    goto :goto_1

    :pswitch_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v13

    if-lez v13, :cond_3

    const/4 v13, 0x0

    invoke-interface {v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v13, "add_apps"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const-string v13, "ignore_apps"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v7, 0x0

    goto :goto_2

    :cond_5
    const-string v13, "app"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v4, 0x0

    :goto_3
    array-length v13, v10

    if-ge v4, v13, :cond_6

    aget-object v13, v10, v4

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v8, 0x1

    :cond_6
    if-eqz v7, :cond_7

    if-eqz v8, :cond_8

    :cond_7
    if-nez v7, :cond_a

    if-eqz v8, :cond_a

    :cond_8
    sget-object v13, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v13

    move-object v5, v6

    :goto_4
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v13

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    :try_start_3
    sget-object v13, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    sget-object v13, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v13

    move-object v5, v6

    :goto_5
    if-eqz v5, :cond_0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v13

    goto/16 :goto_0

    :pswitch_1
    :try_start_5
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v13, "add_apps"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_b
    const-string v13, "ignore_apps"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v13

    if-eqz v13, :cond_2

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_c
    if-eqz v6, :cond_e

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v5, v6

    goto/16 :goto_0

    :catch_4
    move-exception v13

    move-object v5, v6

    goto/16 :goto_0

    :catchall_0
    move-exception v13

    :goto_6
    if-eqz v5, :cond_d

    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_d
    :goto_7
    throw v13

    :catch_5
    move-exception v14

    goto :goto_7

    :catchall_1
    move-exception v13

    move-object v5, v6

    goto :goto_6

    :catch_6
    move-exception v13

    goto :goto_5

    :catch_7
    move-exception v13

    goto :goto_4

    :cond_e
    move-object v5, v6

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static removeFromPreinstallList(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .locals 3

    invoke-static {p0}, Lmiui/os/MiuiInit;->isPreinstalledPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->removeFromPreinstallList(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static removePackageFromSharedUser(Lcom/android/server/pm/PackageSetting;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    :cond_0
    return-void
.end method

.method static resolveUserId(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 3

    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sPrivateXSpaceIntentUri:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p2}, Lmiui/securityspace/CrossUserUtils;->addUserIdForUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    const/4 p2, 0x0

    :cond_1
    return p2
.end method

.method private static shouldDeletePackage(Ljava/util/Set;Lcom/android/server/pm/Settings;Ljava/io/File;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/Settings;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->existsApkFileUnderDir(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".+-[0-9]+$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p1, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->isPackageInstalled(Lcom/android/server/pm/Settings;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static tryDeleteInvalidOrDuplicatePackages(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget-object v8, p1, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    iget-object v8, v8, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    iget-object v8, v8, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v8, "/data/app"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v3, v1

    array-length v7, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_3

    aget-object v0, v3, v5

    invoke-static {v6, p1, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->shouldDeletePackage(Ljava/util/Set;Lcom/android/server/pm/Settings;Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Try to delete invalid or duplicate package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->deleteFileOrDirectory(Ljava/io/File;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
