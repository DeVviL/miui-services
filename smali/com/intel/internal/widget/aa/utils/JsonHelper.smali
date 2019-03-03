.class public final Lcom/intel/internal/widget/aa/utils/JsonHelper;
.super Ljava/lang/Object;
.source "JsonHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static JsonStrToSZList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/widget/aa/safezone/SafeZone;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/intel/internal/widget/aa/utils/JsonHelper;->jsonStrToSz(Ljava/lang/String;)Lcom/intel/internal/widget/aa/safezone/SafeZone;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v7, "null pointer"

    invoke-static {v7}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    move-object v5, v6

    :cond_1
    :goto_1
    return-object v5

    :cond_2
    :try_start_1
    const-string v7, "null pointer"

    invoke-static {v7}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v6

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    move-object v5, v6

    goto :goto_1
.end method

.method public static devInfoToJson(Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getMacAddressOrHardwareAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getSsidOrFriendlyName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "null pointer"

    invoke-static {v3}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    :goto_0
    return-object v2

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "json-connection-type"

    invoke-virtual {p0}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getConnectionType()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "json-mac"

    invoke-virtual {p0}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getMacAddressOrHardwareAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "json-ssid-friendname"

    invoke-virtual {p0}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getSsidOrFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {v0}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static jsonStrToSz(Ljava/lang/String;)Lcom/intel/internal/widget/aa/safezone/SafeZone;
    .locals 11

    const/4 v8, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "connection"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/JsonHelper;->jsonToDeviceInfo(Ljava/lang/String;)Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v9, "null pointer"

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    move-object v7, v8

    :goto_1
    return-object v7

    :cond_1
    :try_start_1
    new-instance v7, Lcom/intel/internal/widget/aa/safezone/SafeZone;

    const-string v9, "nickname"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "enabled"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v7, v9, v0, v10}, Lcom/intel/internal/widget/aa/safezone/SafeZone;-><init>(Ljava/lang/String;Ljava/util/List;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object v7, v8

    goto :goto_1
.end method

.method public static jsonToDeviceInfo(Ljava/lang/String;)Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    .locals 8

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    const-string v4, "json-ssid-friendname"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "json-mac"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "json-connection-type"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    const-string v4, "null pointer"

    invoke-static {v4}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static szListToJsonStr(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/widget/aa/safezone/SafeZone;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/intel/internal/widget/aa/safezone/SafeZone;

    invoke-static {v5}, Lcom/intel/internal/widget/aa/utils/JsonHelper;->szToJsonStr(Lcom/intel/internal/widget/aa/safezone/SafeZone;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    add-int/lit8 v4, v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {v0}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string v7, "null pointer"

    invoke-static {v7}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    const/4 v7, 0x0

    :goto_2
    return-object v7

    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method public static szToJsonStr(Lcom/intel/internal/widget/aa/safezone/SafeZone;)Ljava/lang/String;
    .locals 11

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/intel/internal/widget/aa/safezone/SafeZone;->getConnections()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/intel/internal/widget/aa/safezone/SafeZone;->getNickname()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    const-string v9, "null pointer"

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    :goto_0
    return-object v8

    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/intel/internal/widget/aa/safezone/SafeZone;->getConnections()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v6, v5

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/JsonHelper;->devInfoToJson(Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move v6, v5

    goto :goto_1

    :cond_2
    const-string v9, "null pointer"

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v9, "connection"

    invoke-virtual {v7, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "enabled"

    invoke-virtual {p0}, Lcom/intel/internal/widget/aa/safezone/SafeZone;->getIsEnabled()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "nickname"

    invoke-virtual {p0}, Lcom/intel/internal/widget/aa/safezone/SafeZone;->getNickname()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_0
.end method
