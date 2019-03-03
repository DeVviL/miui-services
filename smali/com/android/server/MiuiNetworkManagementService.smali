.class public Lcom/android/server/MiuiNetworkManagementService;
.super Ljava/lang/Object;
.source "MiuiNetworkManagementService.java"


# static fields
.field private static final MIUI_FIREWALL_RESPONSE_CODE:I = 0x2bb

.field private static final TAG:Ljava/lang/String; = "NetworkManagement"

.field private static sInstance:Lcom/android/server/MiuiNetworkManagementService;


# instance fields
.field private final mConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/server/NativeDaemonConnector;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connector"    # Lcom/android/server/NativeDaemonConnector;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 34
    return-void
.end method

.method static Init(Landroid/content/Context;Lcom/android/server/NativeDaemonConnector;)Lcom/android/server/MiuiNetworkManagementService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connector"    # Lcom/android/server/NativeDaemonConnector;

    .prologue
    .line 23
    new-instance v0, Lcom/android/server/MiuiNetworkManagementService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MiuiNetworkManagementService;-><init>(Landroid/content/Context;Lcom/android/server/NativeDaemonConnector;)V

    sput-object v0, Lcom/android/server/MiuiNetworkManagementService;->sInstance:Lcom/android/server/MiuiNetworkManagementService;

    .line 24
    sget-object v0, Lcom/android/server/MiuiNetworkManagementService;->sInstance:Lcom/android/server/MiuiNetworkManagementService;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/MiuiNetworkManagementService;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/server/MiuiNetworkManagementService;->sInstance:Lcom/android/server/MiuiNetworkManagementService;

    return-object v0
.end method


# virtual methods
.method filterExtendEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 59
    packed-switch p1, :pswitch_data_0

    move v2, v3

    .line 78
    :cond_0
    :goto_0
    return v2

    .line 65
    :pswitch_0
    array-length v4, p3

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    aget-object v4, p3, v2

    const-string v5, "miuiFirewall"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v2, v3

    .line 66
    goto :goto_0

    .line 69
    :cond_2
    const/4 v3, 0x2

    aget-object v1, p3, v3

    .line 70
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v3, "miui.intent.action.FIREWALL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.miui.securitycenter"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v3, "pkg"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v3, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.miui.permission.FIREWALL"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x2bb
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentNetworkState(I)Z
    .locals 8
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    iget-object v3, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v5, "NetworkManagement"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "miuifirewall"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "net_state"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NetworkManagement"

    const-string v3, "setCurrentNetworkState"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 53
    goto :goto_0
.end method

.method public setMiuiFirewallRule(Ljava/lang/String;II)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "rule"    # I
    .param p3, "type"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    iget-object v3, p0, Lcom/android/server/MiuiNetworkManagementService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v5, "NetworkManagement"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MiuiNetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "miuifirewall"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "set_pkg_rule"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "NetworkManagement"

    const-string v3, "setMiuiFirewallRule"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 42
    goto :goto_0
.end method
