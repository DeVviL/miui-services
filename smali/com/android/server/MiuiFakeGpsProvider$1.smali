.class Lcom/android/server/MiuiFakeGpsProvider$1;
.super Ljava/lang/Object;
.source "MiuiFakeGpsProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MiuiFakeGpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MiuiFakeGpsProvider;


# direct methods
.method constructor <init>(Lcom/android/server/MiuiFakeGpsProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/MiuiFakeGpsProvider$1;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
