.class Lcom/android/server/connectivity/NetworkMonitorInjector;
.super Ljava/lang/Object;
.source "NetworkMonitorInjector.java"


# static fields
.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "NetworkMonitorInjector"

.field private static final sCanditates:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://info.3g.qq.com/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://m.baidu.com/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://m.sohu.com/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitorInjector;->sCanditates:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final enableDataAndWifiRoam(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/MiuiConfigCaptivePortal;->enableDataAndWifiRoam(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static final getCaptivePortalPendingIntent(Landroid/content/Context;Landroid/app/PendingIntent;Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkAgentInfo;I)Landroid/app/PendingIntent;
    .locals 5

    const/high16 v4, 0x8000000

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    iget-object v1, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "miui.intent.extra.CAPTIVE_PORTAL"

    new-instance v2, Lcom/android/server/connectivity/NetworkMonitorInjector$1;

    invoke-direct {v2, p2, p4}, Lcom/android/server/connectivity/NetworkMonitorInjector$1;-><init>(Lcom/android/server/connectivity/NetworkMonitor;I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    const-string v1, "miui.intent.extra.NETWORK"

    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0
.end method

.method static final getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/android/server/MiuiConfigCaptivePortal;->getCaptivePortalServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static final getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/MiuiConfigCaptivePortal;->getCaptivePortalServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1

    const-string v1, "https"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/generate_204"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    const-string v1, "http"

    goto :goto_0
.end method

.method static final getCaptivePortalServer(Landroid/content/Context;Ljava/net/URL;)Ljava/net/URL;
    .locals 1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/MiuiConfigCaptivePortal;->getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method static final sendHttpProbe(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/util/LocalLog;)I
    .locals 14

    new-instance v11, Ljava/util/Random;

    invoke-direct {v11}, Ljava/util/Random;-><init>()V

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    const/4 v10, 0x0

    const/16 v3, 0x257

    :try_start_0
    new-instance v5, Ljava/net/URL;

    sget-object v11, Lcom/android/server/connectivity/NetworkMonitorInjector;->sCanditates:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-direct {v5, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v11, v5}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v11, 0x2710

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v11, 0x2710

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PROBE_HTTP "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " time="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v8, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ret="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " headers="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    :goto_0
    const/16 v11, 0x257

    if-eq v3, v11, :cond_1

    const/16 v3, 0xcc

    :cond_1
    return v3

    :catch_0
    move-exception v2

    :try_start_1
    const-string v11, "NetworkMonitorInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid probe URL: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/connectivity/NetworkMonitorInjector;->sCanditates:[Ljava/lang/String;

    aget-object v13, v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NetworkMonitorInjector/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Probably not a portal: exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Probably not a portal: exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v11

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v11
.end method
