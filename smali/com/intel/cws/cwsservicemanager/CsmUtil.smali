.class public Lcom/intel/cws/cwsservicemanager/CsmUtil;
.super Ljava/lang/Object;
.source "CsmUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/cws/cwsservicemanager/CsmUtil$1;,
        Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;
    }
.end annotation


# static fields
.field private static final BT_CLIENT:Ljava/lang/String; = "BT"

.field private static final DEBUG:Z

.field private static final GPS_CLIENT:Ljava/lang/String; = "GPS"

.field private static final NFC_CLIENT:Ljava/lang/String; = "NFC"

.field private static final TAG:Ljava/lang/String; = "CWS_SERVICE_MGR"

.field private static final WIFI_CLIENT:Ljava/lang/String; = "WiFi"

.field private static final WIFI_OFFLOAD_CLIENT:Ljava/lang/String; = "WiFi-Offload"

.field private static mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsBootCompleted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "CWS_SERVICE_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUtil;->DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/intel/cws/cwsservicemanager/CsmUtil;->mIsBootCompleted:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/intel/cws/cwsservicemanager/CsmUtil;->mIntents:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static checkClient(Ljava/lang/String;B)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "BT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "GPS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-eq v1, p1, :cond_0

    :cond_2
    const-string v1, "NFC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    if-eq v1, p1, :cond_0

    :cond_3
    const-string v1, "WiFi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eq v0, p1, :cond_0

    :cond_4
    const-string v1, "WiFi-Offload"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x20

    if-eq v1, p1, :cond_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static csmBroadcastIntent(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 5

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const-string v1, "CWS_SERVICE_MGR"

    const-string v2, "csmBroadcastIntent - invalid parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/intel/cws/cwsservicemanager/CsmUtil;->mIntents:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUtil;->mIsBootCompleted:Z

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUtil;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Boot not completed - storing intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;-><init>(Lcom/intel/cws/cwsservicemanager/CsmUtil$1;)V

    invoke-static {v0, p1}, Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;->access$102(Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;Landroid/content/Context;)Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;->access$202(Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;Landroid/content/Intent;)Landroid/content/Intent;

    sget-object v1, Lcom/intel/cws/cwsservicemanager/CsmUtil;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static csmBroadcastPendingIntents()V
    .locals 8

    sget-object v5, Lcom/intel/cws/cwsservicemanager/CsmUtil;->mIntents:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/intel/cws/cwsservicemanager/CsmUtil;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sput-boolean v4, Lcom/intel/cws/cwsservicemanager/CsmUtil;->mIsBootCompleted:Z

    sget-boolean v4, Lcom/intel/cws/cwsservicemanager/CsmUtil;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "CWS_SERVICE_MGR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "csmBroadcastPendingIntents: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    sget-object v4, Lcom/intel/cws/cwsservicemanager/CsmUtil;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-boolean v4, Lcom/intel/cws/cwsservicemanager/CsmUtil;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "CWS_SERVICE_MGR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcasting intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;->access$200(Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;->access$100(Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v0}, Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;->access$200(Lcom/intel/cws/cwsservicemanager/CsmUtil$CsmIntent;)Landroid/content/Intent;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v4, "CWS_SERVICE_MGR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NullPointerException in csmBroadcastPendingIntents - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_2
    :try_start_3
    sget-object v4, Lcom/intel/cws/cwsservicemanager/CsmUtil;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 4

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static parseIntValueFromString(Ljava/lang/String;I)I
    .locals 2

    move v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static readTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v1, 0x2

    invoke-interface {p0, v1, p2, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/intel/cws/cwsservicemanager/CsmUtil;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_SERVICE_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readTag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x3

    invoke-interface {p0, v1, p2, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, ""

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    :cond_0
    return-object v0
.end method

.method public static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
