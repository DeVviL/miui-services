.class public final Lcom/intel/internal/widget/aa/utils/JsonHelper;
.super Ljava/lang/Object;
.source "JsonHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static JsonStrToSZList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "json"    # Ljava/lang/String;
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

    .prologue
    const/4 v6, 0x0

    .line 151
    if-eqz p0, :cond_0

    .line 152
    invoke-static {p0}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    .line 158
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 159
    .local v3, "jsonArray":Lorg/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v5, "safeZones":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/widget/aa/safezone/SafeZone;>;"
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 161
    .local v0, "arrayLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 162
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/intel/internal/widget/aa/utils/JsonHelper;->jsonStrToSz(Ljava/lang/String;)Lcom/intel/internal/widget/aa/safezone/SafeZone;

    move-result-object v4

    .line 163
    .local v4, "safeZone":Lcom/intel/internal/widget/aa/safezone/SafeZone;
    if-eqz v4, :cond_2

    .line 164
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    .end local v0    # "arrayLength":I
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "safeZone":Lcom/intel/internal/widget/aa/safezone/SafeZone;
    .end local v5    # "safeZones":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/widget/aa/safezone/SafeZone;>;"
    :cond_0
    const-string v7, "null pointer"

    invoke-static {v7}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    move-object v5, v6

    .line 175
    :cond_1
    :goto_1
    return-object v5

    .line 166
    .restart local v0    # "arrayLength":I
    .restart local v2    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v4    # "safeZone":Lcom/intel/internal/widget/aa/safezone/SafeZone;
    .restart local v5    # "safeZones":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/widget/aa/safezone/SafeZone;>;"
    :cond_2
    :try_start_1
    const-string v7, "null pointer"

    invoke-static {v7}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v6

    .line 167
    goto :goto_1

    .line 171
    .end local v0    # "arrayLength":I
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "safeZone":Lcom/intel/internal/widget/aa/safezone/SafeZone;
    .end local v5    # "safeZones":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/widget/aa/safezone/SafeZone;>;"
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 173
    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    move-object v5, v6

    .line 175
    goto :goto_1
.end method

.method public static devInfoToJson(Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;)Ljava/lang/String;
    .locals 5
    .param p0, "deviceInfo"    # Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getMacAddressOrHardwareAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getSsidOrFriendlyName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 36
    :cond_0
    const-string v3, "null pointer"

    invoke-static {v3}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    .line 50
    :goto_0
    return-object v2

    .line 39
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "json-connection-type"

    invoke-virtual {p0}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getConnectionType()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    const-string v3, "json-mac"

    invoke-virtual {p0}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getMacAddressOrHardwareAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v3, "json-ssid-friendname"

    invoke-virtual {p0}, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;->getSsidOrFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 46
    invoke-static {v0}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static jsonStrToSz(Ljava/lang/String;)Lcom/intel/internal/widget/aa/safezone/SafeZone;
    .locals 11
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 104
    if-eqz p0, :cond_0

    .line 105
    invoke-static {p0}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    .line 111
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string v9, "connection"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 113
    .local v4, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 114
    .local v5, "jsonArrayLength":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 116
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/JsonHelper;->jsonToDeviceInfo(Ljava/lang/String;)Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    move-result-object v1

    .line 117
    .local v1, "deviceInfo":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;>;"
    .end local v1    # "deviceInfo":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonArrayLength":I
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    const-string v9, "null pointer"

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    move-object v7, v8

    .line 126
    :goto_1
    return-object v7

    .line 119
    .restart local v0    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;>;"
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "jsonArrayLength":I
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
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

    .line 121
    .local v7, "safeZone":Lcom/intel/internal/widget/aa/safezone/SafeZone;
    goto :goto_1

    .line 122
    .end local v0    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;>;"
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonArrayLength":I
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "safeZone":Lcom/intel/internal/widget/aa/safezone/SafeZone;
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Lorg/json/JSONException;
    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object v7, v8

    .line 126
    goto :goto_1
.end method

.method public static jsonToDeviceInfo(Ljava/lang/String;)Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    .locals 8
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 54
    if-eqz p0, :cond_0

    .line 55
    invoke-static {p0}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    .line 61
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, "jsonObject":Lorg/json/JSONObject;
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

    .line 70
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 57
    :cond_0
    const-string v4, "null pointer"

    invoke-static {v4}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    move-object v0, v3

    .line 58
    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 68
    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    move-object v0, v3

    .line 70
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

    .prologue
    .line 130
    .local p0, "safeZones":Ljava/util/List;, "Ljava/util/List<Lcom/intel/internal/widget/aa/safezone/SafeZone;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 131
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 132
    .local v3, "jsonIndex":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/intel/internal/widget/aa/safezone/SafeZone;

    .line 133
    .local v5, "safeZone":Lcom/intel/internal/widget/aa/safezone/SafeZone;
    invoke-static {v5}, Lcom/intel/internal/widget/aa/utils/JsonHelper;->szToJsonStr(Lcom/intel/internal/widget/aa/safezone/SafeZone;)Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, "safeZoneStr":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 136
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "jsonIndex":I
    .local v4, "jsonIndex":I
    :try_start_0
    invoke-virtual {v2, v3, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v3, v4

    .line 145
    .end local v4    # "jsonIndex":I
    .restart local v3    # "jsonIndex":I
    goto :goto_0

    .line 137
    .end local v3    # "jsonIndex":I
    .restart local v4    # "jsonIndex":I
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 139
    invoke-static {v0}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 142
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v4    # "jsonIndex":I
    .restart local v3    # "jsonIndex":I
    :cond_0
    const-string v7, "null pointer"

    invoke-static {v7}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    .line 143
    const/4 v7, 0x0

    .line 147
    .end local v5    # "safeZone":Lcom/intel/internal/widget/aa/safezone/SafeZone;
    .end local v6    # "safeZoneStr":Ljava/lang/String;
    :goto_2
    return-object v7

    .line 146
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method public static szToJsonStr(Lcom/intel/internal/widget/aa/safezone/SafeZone;)Ljava/lang/String;
    .locals 11
    .param p0, "sz"    # Lcom/intel/internal/widget/aa/safezone/SafeZone;

    .prologue
    const/4 v8, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/intel/internal/widget/aa/safezone/SafeZone;->getConnections()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/intel/internal/widget/aa/safezone/SafeZone;->getNickname()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    .line 75
    :cond_0
    const-string v9, "null pointer"

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    .line 100
    :goto_0
    return-object v8

    .line 78
    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 80
    .local v7, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 81
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 82
    .local v5, "jsonIndex":I
    invoke-virtual {p0}, Lcom/intel/internal/widget/aa/safezone/SafeZone;->getConnections()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    move v6, v5

    .end local v5    # "jsonIndex":I
    .local v6, "jsonIndex":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;

    .line 83
    .local v1, "deviceInfo":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    invoke-static {v1}, Lcom/intel/internal/widget/aa/utils/JsonHelper;->devInfoToJson(Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "connection":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 85
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "jsonIndex":I
    .restart local v5    # "jsonIndex":I
    invoke-virtual {v4, v6, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move v6, v5

    .line 90
    .end local v5    # "jsonIndex":I
    .restart local v6    # "jsonIndex":I
    goto :goto_1

    .line 87
    :cond_2
    const-string v9, "null pointer"

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v0    # "connection":Ljava/lang/String;
    .end local v1    # "deviceInfo":Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "jsonIndex":I
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Lorg/json/JSONException;
    invoke-static {v2}, Lcom/intel/internal/widget/aa/utils/L;->e(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "jsonIndex":I
    :cond_3
    :try_start_1
    const-string v9, "connection"

    invoke-virtual {v7, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v9, "enabled"

    invoke-virtual {p0}, Lcom/intel/internal/widget/aa/safezone/SafeZone;->getIsEnabled()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    const-string v9, "nickname"

    invoke-virtual {p0}, Lcom/intel/internal/widget/aa/safezone/SafeZone;->getNickname()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/intel/internal/widget/aa/utils/L;->i(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_0
.end method
