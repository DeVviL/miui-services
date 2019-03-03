.class public Lcom/android/server/LocationManagerServiceFacade;
.super Ljava/lang/Object;
.source "LocationManagerServiceFacade.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkLocationAccess(Lcom/android/server/LocationManagerService;IILjava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/LocationManagerService;->checkLocationAccess(ILjava/lang/String;I)Z

    move-result v0

    :cond_0
    return v0
.end method
