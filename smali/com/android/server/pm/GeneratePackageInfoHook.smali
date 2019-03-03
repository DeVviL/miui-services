.class Lcom/android/server/pm/GeneratePackageInfoHook;
.super Ljava/lang/Object;
.source "GeneratePackageInfoHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/GeneratePackageInfoHook$FakeSignatureCore;
    }
.end annotation


# instance fields
.field private multiUserMarker:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getGlobalEnable(Landroid/content/pm/PackageInfo;Landroid/content/Context;Landroid/content/pm/PackageParser$Package;II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static getPerAppEnable(Landroid/content/pm/PackageInfo;Landroid/content/Context;Landroid/content/pm/PackageParser$Package;II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static hook(Landroid/content/pm/PackageInfo;Landroid/content/Context;Landroid/content/pm/PackageParser$Package;II)Landroid/content/pm/PackageInfo;
    .locals 4

    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.FAKE_PACKAGE_SIGNATURE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/GeneratePackageInfoHook;->getGlobalEnable(Landroid/content/pm/PackageInfo;Landroid/content/Context;Landroid/content/pm/PackageParser$Package;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/GeneratePackageInfoHook;->getPerAppEnable(Landroid/content/pm/PackageInfo;Landroid/content/Context;Landroid/content/pm/PackageParser$Package;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string v1, "fake-signature"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/pm/Signature;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/pm/Signature;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    iput-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "GeneratePackageInfoHook"

    const-string v1, "invalid \'fake-signature\' metadata"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GeneratePackageInfoHook"

    const-string v2, "hook exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "GeneratePackageInfoHook"

    const-string v1, "missing \'fake-signature\' metadata"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "GeneratePackageInfoHook"

    const-string v1, "null mAppMetaData"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v0, "GeneratePackageInfoHook"

    const-string v1, "null requestedPermissions"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
