.class Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;
.super Ljava/lang/Object;
.source "CsmClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/cws/cwsservicemanagerclient/CsmClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CsmXmlParser"
.end annotation


# instance fields
.field private ns:Ljava/lang/String;

.field final synthetic this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;


# direct methods
.method private constructor <init>(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)V
    .locals 1

    iput-object p1, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;->ns:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;Lcom/intel/cws/cwsservicemanagerclient/CsmClient$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;-><init>(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;)V

    return-void
.end method

.method private readConfig(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CsmClient"

    const-string v3, "readConfig"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;->ns:Ljava/lang/String;

    const-string v3, "CsmConfig"

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Module"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "CsmClient"

    const-string v3, "readConfig - Module"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;->readModule(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "CsmClient"

    const-string v3, "readConfig - skip"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {p1}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$000()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "CsmClient"

    const-string v3, "readConfig - end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method private readModule(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;->ns:Ljava/lang/String;

    const-string v7, "Module"

    invoke-interface {p1, v10, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "CsmClient"

    const-string v7, "readModule"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-ne v6, v10, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Client"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "Client"

    iget-object v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;->ns:Ljava/lang/String;

    invoke-static {p1, v6, v7}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->readTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "CsmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readModule - Client:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v6, "Start"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "Start"

    iget-object v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;->ns:Ljava/lang/String;

    invoke-static {p1, v6, v7}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->readTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "CsmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readModule - Start:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v6, "Timeout_ms"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "Timeout_ms"

    iget-object v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;->ns:Ljava/lang/String;

    invoke-static {p1, v6, v7}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->readTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "CsmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readModule - Timeout_ms:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const-string v6, "Stop"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "Stop"

    iget-object v7, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;->ns:Ljava/lang/String;

    invoke-static {p1, v6, v7}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->readTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "CsmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readModule - Stop:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    invoke-static {p1}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_5
    if-eqz v0, :cond_7

    iget-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    iget-object v6, v6, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->mClientId:Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    invoke-static {v0, v6}, Lcom/intel/cws/cwsservicemanager/CsmUtil;->checkClient(Ljava/lang/String;B)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v2, :cond_6

    const-string v6, "sync"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-static {v6, v11}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$102(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;Z)Z

    if-eqz v5, :cond_6

    iget-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$202(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;I)I

    :cond_6
    :goto_1
    if-eqz v3, :cond_7

    const-string v6, "no_unbind"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-static {v6, v9}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$302(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;I)I

    :cond_7
    :goto_2
    return-void

    :cond_8
    const-string v6, "async"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-static {v6, v9}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$102(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;Z)Z

    iget-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-static {v6, v9}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$202(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;I)I

    goto :goto_1

    :cond_9
    const-string v6, "unbind"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-static {v6, v10}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$302(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;I)I

    goto :goto_2

    :cond_a
    const-string v6, "rebind"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;->this$0:Lcom/intel/cws/cwsservicemanagerclient/CsmClient;

    invoke-static {v6, v11}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$302(Lcom/intel/cws/cwsservicemanagerclient/CsmClient;I)I

    goto :goto_2
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CsmClient"

    const-string v2, "parse"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-direct {p0, v0}, Lcom/intel/cws/cwsservicemanagerclient/CsmClient$CsmXmlParser;->readConfig(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v1
.end method
