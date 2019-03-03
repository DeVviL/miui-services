.class public Lcom/android/server/notification/ManagedServicesInjector;
.super Ljava/lang/Object;
.source "ManagedServicesInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canBindService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method
