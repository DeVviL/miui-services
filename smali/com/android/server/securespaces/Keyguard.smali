.class public Lcom/android/server/securespaces/Keyguard;
.super Ljava/lang/Object;
.source "Keyguard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/securespaces/Keyguard$1;,
        Lcom/android/server/securespaces/Keyguard$RemoteServiceConnection;
    }
.end annotation


# static fields
.field public static final KEYGUARD_CLASS:Ljava/lang/String; = "com.android.systemui.keyguard.KeyguardService"

.field public static final KEYGUARD_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "ssm.Keyguard"


# instance fields
.field mConnection:Lcom/android/server/securespaces/Keyguard$RemoteServiceConnection;

.field private final mContext:Landroid/content/Context;

.field mService:Lcom/android/internal/policy/IKeyguardService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/securespaces/Keyguard;->mService:Lcom/android/internal/policy/IKeyguardService;

    iput-object p1, p0, Lcom/android/server/securespaces/Keyguard;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/securespaces/Keyguard;->bindService()V

    return-void
.end method


# virtual methods
.method public bindService()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/server/securespaces/Keyguard;->mConnection:Lcom/android/server/securespaces/Keyguard$RemoteServiceConnection;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/securespaces/Keyguard$RemoteServiceConnection;

    invoke-direct {v1, p0, v5}, Lcom/android/server/securespaces/Keyguard$RemoteServiceConnection;-><init>(Lcom/android/server/securespaces/Keyguard;Lcom/android/server/securespaces/Keyguard$1;)V

    iput-object v1, p0, Lcom/android/server/securespaces/Keyguard;->mConnection:Lcom/android/server/securespaces/Keyguard$RemoteServiceConnection;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.keyguard.KeyguardService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ssm.Keyguard"

    const-string v2, "BINDING SERVICE: com.android.systemui.keyguard.KeyguardService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/securespaces/Keyguard;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/securespaces/Keyguard;->mConnection:Lcom/android/server/securespaces/Keyguard$RemoteServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ssm.Keyguard"

    const-string v2, "Failed to bind to keyguard service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, p0, Lcom/android/server/securespaces/Keyguard;->mConnection:Lcom/android/server/securespaces/Keyguard$RemoteServiceConnection;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "ssm.Keyguard"

    const-string v2, "Service already bound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public keyguardDone(ZZ)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/securespaces/Keyguard;->mService:Lcom/android/internal/policy/IKeyguardService;

    if-nez v1, :cond_0

    const-string v1, "ssm.Keyguard"

    const-string v2, "Not bound to keyguard service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/securespaces/Keyguard;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->keyguardDone(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ssm.Keyguard"

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
