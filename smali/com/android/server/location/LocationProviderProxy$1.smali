.class Lcom/android/server/location/LocationProviderProxy$1;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationProviderProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationProviderProxy;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 99
    invoke-static {}, Lcom/android/server/location/LocationProviderProxy;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "LocationProviderProxy"

    const-string v7, "applying state to connected service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    const/4 v2, 0x0

    .line 106
    .local v2, "properties":Lcom/android/internal/location/ProviderProperties;
    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v6}, Lcom/android/server/location/LocationProviderProxy;->access$100(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 107
    :try_start_0
    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v6}, Lcom/android/server/location/LocationProviderProxy;->access$200(Lcom/android/server/location/LocationProviderProxy;)Z

    move-result v1

    .line 108
    .local v1, "enabled":Z
    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v6}, Lcom/android/server/location/LocationProviderProxy;->access$300(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/internal/location/ProviderRequest;

    move-result-object v3

    .line 109
    .local v3, "request":Lcom/android/internal/location/ProviderRequest;
    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v6}, Lcom/android/server/location/LocationProviderProxy;->access$400(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/WorkSource;

    move-result-object v5

    .line 110
    .local v5, "source":Landroid/os/WorkSource;
    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v6}, Lcom/android/server/location/LocationProviderProxy;->access$500(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v4

    .line 111
    .local v4, "service":Lcom/android/internal/location/ILocationProvider;
    monitor-exit v7

    .line 113
    if-nez v4, :cond_1

    .line 140
    :goto_0
    return-void

    .line 111
    .end local v1    # "enabled":Z
    .end local v3    # "request":Lcom/android/internal/location/ProviderRequest;
    .end local v4    # "service":Lcom/android/internal/location/ILocationProvider;
    .end local v5    # "source":Landroid/os/WorkSource;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 117
    .restart local v1    # "enabled":Z
    .restart local v3    # "request":Lcom/android/internal/location/ProviderRequest;
    .restart local v4    # "service":Lcom/android/internal/location/ILocationProvider;
    .restart local v5    # "source":Landroid/os/WorkSource;
    :cond_1
    :try_start_1
    invoke-interface {v4}, Lcom/android/internal/location/ILocationProvider;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v2

    .line 118
    if-nez v2, :cond_2

    .line 119
    const-string v6, "LocationProviderProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v8}, Lcom/android/server/location/LocationProviderProxy;->access$600(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has invalid locatino provider properties"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_2
    if-eqz v1, :cond_3

    .line 125
    invoke-interface {v4}, Lcom/android/internal/location/ILocationProvider;->enable()V

    .line 126
    if-eqz v3, :cond_3

    .line 127
    invoke-interface {v4, v3, v5}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v6}, Lcom/android/server/location/LocationProviderProxy;->access$100(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 138
    :try_start_2
    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v6, v2}, Lcom/android/server/location/LocationProviderProxy;->access$702(Lcom/android/server/location/LocationProviderProxy;Lcom/android/internal/location/ProviderProperties;)Lcom/android/internal/location/ProviderProperties;

    .line 139
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "LocationProviderProxy"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 132
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "LocationProviderProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v8}, Lcom/android/server/location/LocationProviderProxy;->access$600(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method