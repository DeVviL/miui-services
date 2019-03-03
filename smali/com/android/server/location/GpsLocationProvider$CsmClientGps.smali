.class Lcom/android/server/location/GpsLocationProvider$CsmClientGps;
.super Lcom/intel/cws/cwsservicemanagerclient/CsmClient;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CsmClientGps"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/cws/cwsservicemanager/CsmException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;-><init>(Landroid/content/Context;BI)V

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->csmActivateSimStatusReceiver()V

    return-void
.end method


# virtual methods
.method public csmClientModemUnavailable()V
    .locals 0

    invoke-super {p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->csmClientModemUnavailable()V

    return-void
.end method

.method public onSimAbsent()V
    .locals 4

    invoke-super {p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->onSimAbsent()V

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4100(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->access$4102(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    const-string v1, "Sim absent - resetting H-SLP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4200(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4300(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GpsLocationProvider"

    const-string v1, "Using H-SLP read from the config file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$4300(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$4400(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->access$4500(Lcom/android/server/location/GpsLocationProvider;ILjava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public onSimLoaded()V
    .locals 2

    invoke-super {p0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->onSimLoaded()V

    new-instance v0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;-><init>(Lcom/android/server/location/GpsLocationProvider$CsmClientGps;Lcom/android/server/location/GpsLocationProvider$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
