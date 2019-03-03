.class Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;
.super Landroid/os/AsyncTask;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider$CsmClientGps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetBootstrapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GpsLocationProvider$CsmClientGps;


# direct methods
.method private constructor <init>(Lcom/android/server/location/GpsLocationProvider$CsmClientGps;)V
    .locals 0

    .prologue
    .line 2187
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;->this$1:Lcom/android/server/location/GpsLocationProvider$CsmClientGps;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GpsLocationProvider$CsmClientGps;Lcom/android/server/location/GpsLocationProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/GpsLocationProvider$CsmClientGps;
    .param p2, "x1"    # Lcom/android/server/location/GpsLocationProvider$1;

    .prologue
    .line 2187
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;-><init>(Lcom/android/server/location/GpsLocationProvider$CsmClientGps;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2187
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .param p1, "param"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x1

    .line 2192
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "GpsLocationProvider"

    const-string v4, "GetBootstrapTask - doInBackground"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    :cond_0
    new-instance v0, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;->this$1:Lcom/android/server/location/GpsLocationProvider$CsmClientGps;

    invoke-virtual {v3}, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->getClientId()Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;->this$1:Lcom/android/server/location/GpsLocationProvider$CsmClientGps;

    invoke-virtual {v4}, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->getService()Lcom/intel/cws/cwsservicemanager/ICwsServiceMgr;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;-><init>(BLcom/intel/cws/cwsservicemanager/ICwsServiceMgr;)V

    .line 2196
    .local v0, "csmEfBootstrap":Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 2198
    .local v2, "hslpAddress":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2    # "hslpAddress":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/intel/cws/cwsservicemanagerclient/CsmEfBootstrap;->readHslpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/intel/cws/cwsservicemanager/CsmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2204
    .restart local v2    # "hslpAddress":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2205
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;->this$1:Lcom/android/server/location/GpsLocationProvider$CsmClientGps;

    iget-object v3, v3, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$4102(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 2207
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "GpsLocationProvider"

    const-string v4, "Empty Uicc H-SLP Address received."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    :cond_2
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;->this$1:Lcom/android/server/location/GpsLocationProvider$CsmClientGps;

    iget-object v3, v3, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$4200(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;->this$1:Lcom/android/server/location/GpsLocationProvider$CsmClientGps;

    iget-object v3, v3, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$4300(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2210
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "GpsLocationProvider"

    const-string v4, "Using H-SLP read from the config file"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    :cond_3
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;->this$1:Lcom/android/server/location/GpsLocationProvider$CsmClientGps;

    iget-object v3, v3, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;->this$1:Lcom/android/server/location/GpsLocationProvider$CsmClientGps;

    iget-object v4, v4, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$4300(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;->this$1:Lcom/android/server/location/GpsLocationProvider$CsmClientGps;

    iget-object v5, v5, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$4400(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v5

    invoke-static {v3, v6, v4, v5}, Lcom/android/server/location/GpsLocationProvider;->access$4500(Lcom/android/server/location/GpsLocationProvider;ILjava/lang/String;I)V

    .line 2224
    :cond_4
    :goto_1
    return-object v2

    .line 2199
    .end local v2    # "hslpAddress":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2200
    .local v1, "e":Lcom/intel/cws/cwsservicemanager/CsmException;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 2201
    .restart local v2    # "hslpAddress":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "GpsLocationProvider"

    invoke-virtual {v1}, Lcom/intel/cws/cwsservicemanager/CsmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2216
    .end local v1    # "e":Lcom/intel/cws/cwsservicemanager/CsmException;
    :cond_5
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;->this$1:Lcom/android/server/location/GpsLocationProvider$CsmClientGps;

    iget-object v3, v3, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v3, v2}, Lcom/android/server/location/GpsLocationProvider;->access$4102(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 2217
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;->this$1:Lcom/android/server/location/GpsLocationProvider$CsmClientGps;

    iget-object v3, v3, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$4200(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2218
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uicc H-SLP Address received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    :cond_6
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$CsmClientGps$GetBootstrapTask;->this$1:Lcom/android/server/location/GpsLocationProvider$CsmClientGps;

    iget-object v3, v3, Lcom/android/server/location/GpsLocationProvider$CsmClientGps;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/16 v4, 0x1c6b

    invoke-static {v3, v6, v2, v4}, Lcom/android/server/location/GpsLocationProvider;->access$4500(Lcom/android/server/location/GpsLocationProvider;ILjava/lang/String;I)V

    goto :goto_1
.end method
