.class Lcom/wiyun/ad/k;
.super Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONTokener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    invoke-super {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_a} :catch_e

    move-result v0

    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b

    :catch_e
    move-exception v0

    move v0, v1

    goto :goto_b
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 5

    const-wide/16 v1, 0x0

    :try_start_2
    invoke-super {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_b} :catch_f

    move-result-wide v0

    :goto_c
    return-wide v0

    :cond_d
    move-wide v0, v1

    goto :goto_c

    :catch_f
    move-exception v0

    move-wide v0, v1

    goto :goto_c
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    invoke-super {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_a} :catch_e

    move-result v0

    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b

    :catch_e
    move-exception v0

    move v0, v1

    goto :goto_b
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    invoke-super {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_a} :catch_e

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    move-object v0, v1

    goto :goto_b

    :catch_e
    move-exception v0

    move-object v0, v1

    goto :goto_b
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    invoke-super {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_a} :catch_e

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    move-object v0, v1

    goto :goto_b

    :catch_e
    move-exception v0

    move-object v0, v1

    goto :goto_b
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 5

    const-wide/16 v1, 0x0

    :try_start_2
    invoke-super {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_b} :catch_f

    move-result-wide v0

    :goto_c
    return-wide v0

    :cond_d
    move-wide v0, v1

    goto :goto_c

    :catch_f
    move-exception v0

    move-wide v0, v1

    goto :goto_c
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    invoke-super {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_a} :catch_e

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    move-object v0, v1

    goto :goto_b

    :catch_e
    move-exception v0

    move-object v0, v1

    goto :goto_b
.end method
