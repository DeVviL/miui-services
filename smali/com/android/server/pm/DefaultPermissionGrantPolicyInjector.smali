.class public Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicyInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static grantRuntimePermission(Ljava/lang/String;I)V
    .locals 0
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 12
    return-void
.end method

.method public static setCoreRuntimePermissionEnabled(ZII)V
    .locals 0
    .param p0, "grant"    # Z
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .prologue
    .line 8
    return-void
.end method
