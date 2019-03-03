.class Lcom/miui/server/SplashScreenServiceDelegate$4;
.super Lcom/miui/server/ISplashPackageCheckListener$Stub;
.source "SplashScreenServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SplashScreenServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SplashScreenServiceDelegate;


# direct methods
.method constructor <init>(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {p0}, Lcom/miui/server/ISplashPackageCheckListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public updateSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v1, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$1300(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/SplashPackageCheckInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Valid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->access$300(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v1, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$1400(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/SplashPackageCheckInfo;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->access$300(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string v2, "updateSplashPackageCheckInfo exception"

    invoke-static {v1, v2, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->access$900(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateSplashPackageCheckInfoList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/server/SplashPackageCheckInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string v4, "updateSplashPackageCheckInfoList"

    invoke-static {v3, v4}, Lcom/miui/server/SplashScreenServiceDelegate;->access$300(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {v3}, Lcom/miui/server/SplashScreenServiceDelegate;->access$1200(Lcom/miui/server/SplashScreenServiceDelegate;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/server/SplashPackageCheckInfo;

    invoke-virtual {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate$4;->updateSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string v4, "updateSplashPackageCheckInfoList exception"

    invoke-static {v3, v4, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->access$900(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
