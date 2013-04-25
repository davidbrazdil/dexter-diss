.class public Lcom/virsir/android/chinamobile10086/a/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/virsir/android/chinamobile10086/a/a;
    .registers 16
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    new-instance v11, Lcom/virsir/android/chinamobile10086/a/a;

    invoke-direct {v11}, Lcom/virsir/android/chinamobile10086/a/a;-><init>()V

    .local v11, searchResult:Lcom/virsir/android/chinamobile10086/a/a;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11, v13}, Lcom/virsir/android/chinamobile10086/a/a;->a(Ljava/util/List;)V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v5, json:Lorg/json/JSONObject;
    const-string v13, "responseData"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .local v10, response:Lorg/json/JSONObject;
    if-nez v10, :cond_1c

    :cond_1b
    :goto_1b
    return-object v11

    :cond_1c
    const-string v13, "results"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .local v0, arr:Lorg/json/JSONArray;
    if-eqz v0, :cond_1b

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, list:Ljava/util/List;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v4, v13, :cond_40

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .local v8, obj:Lorg/json/JSONObject;
    invoke-static {v8}, Lcom/virsir/android/chinamobile10086/a/d;->a(Lorg/json/JSONObject;)Lcom/virsir/android/chinamobile10086/a/c;

    move-result-object v7

    .local v7, local:Lcom/virsir/android/chinamobile10086/a/c;
    if-eqz v7, :cond_3d

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .end local v7           #local:Lcom/virsir/android/chinamobile10086/a/c;
    .end local v8           #obj:Lorg/json/JSONObject;
    :cond_40
    invoke-virtual {v11, v6}, Lcom/virsir/android/chinamobile10086/a/a;->a(Ljava/util/List;)V

    const-string v13, "cursor"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .local v2, cursor:Lorg/json/JSONObject;
    if-eqz v2, :cond_1b

    const-string v13, "pages"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .local v9, pages:Lorg/json/JSONArray;
    const-string v13, "currentPageIndex"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .local v1, currentPageIndex:I
    if-eqz v9, :cond_1b

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    .local v12, totalPageSize:I
    const/4 v13, 0x4

    if-le v12, v13, :cond_61

    const/4 v12, 0x4

    :cond_61
    invoke-virtual {v11, v1}, Lcom/virsir/android/chinamobile10086/a/a;->a(I)V

    sub-int v13, v12, v14

    if-le v13, v1, :cond_76

    move v3, v14

    .local v3, hasNextPage:Z
    :goto_69
    invoke-virtual {v11, v3}, Lcom/virsir/android/chinamobile10086/a/a;->a(Z)V

    if-eqz v3, :cond_1b

    add-int/lit8 v13, v1, 0x1

    mul-int/lit8 v13, v13, 0x8

    invoke-virtual {v11, v13}, Lcom/virsir/android/chinamobile10086/a/a;->c(I)V

    goto :goto_1b

    .end local v3           #hasNextPage:Z
    :cond_76
    const/4 v13, 0x0

    move v3, v13

    goto :goto_69
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;I)Lcom/virsir/android/chinamobile10086/a/a;
    .registers 10
    .parameter "query"
    .parameter "parameters"
    .parameter "start"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/virsir/android/chinamobile10086/a/a;"
        }
    .end annotation

    .prologue
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "?v=1.0&rsz=large&mrt=localonly&q="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/virsir/android/chinamobile10086/utils/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&start="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, urlParameters:Ljava/lang/String;
    if-eqz p1, :cond_63

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0
    .local v0, i$:Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, key:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/virsir/android/chinamobile10086/utils/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2b

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :cond_63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://ajax.googleapis.com/ajax/services/search/local"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, url:Ljava/lang/String;
    invoke-static {v3}, Lcom/virsir/android/chinamobile10086/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, result:Ljava/lang/String;
    if-eqz v2, :cond_82

    :try_start_7c
    invoke-static {v2}, Lcom/virsir/android/chinamobile10086/a/d;->a(Ljava/lang/String;)Lcom/virsir/android/chinamobile10086/a/a;
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_81

    move-result-object v5

    :goto_80
    return-object v5

    :catch_81
    move-exception v5

    :cond_82
    const/4 v5, 0x0

    goto :goto_80
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/virsir/android/chinamobile10086/a/c;
    .registers 11
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    new-instance v8, Lcom/virsir/android/chinamobile10086/a/c;

    invoke-direct {v8}, Lcom/virsir/android/chinamobile10086/a/c;-><init>()V

    .local v8, result:Lcom/virsir/android/chinamobile10086/a/c;
    const-string v9, "title"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/virsir/android/chinamobile10086/a/c;->d(Ljava/lang/String;)V

    const-string v9, "titleNoFormatting"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/virsir/android/chinamobile10086/a/c;->e(Ljava/lang/String;)V

    const-string v9, "city"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/virsir/android/chinamobile10086/a/c;->g(Ljava/lang/String;)V

    const-string v9, "region"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/virsir/android/chinamobile10086/a/c;->h(Ljava/lang/String;)V

    const-string v9, "country"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/virsir/android/chinamobile10086/a/c;->i(Ljava/lang/String;)V

    const-string v9, "lat"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/virsir/android/chinamobile10086/a/c;->b(Ljava/lang/String;)V

    const-string v9, "lng"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/virsir/android/chinamobile10086/a/c;->c(Ljava/lang/String;)V

    const-string v9, "accuracy"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/virsir/android/chinamobile10086/a/c;->a(Ljava/lang/String;)V

    const-string v9, "streetAddress"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/virsir/android/chinamobile10086/a/c;->f(Ljava/lang/String;)V

    const-string v9, "staticMapUrl"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/virsir/android/chinamobile10086/a/c;->j(Ljava/lang/String;)V

    const-string v9, "phoneNumbers"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .local v6, phoneNumbers:Lorg/json/JSONArray;
    const-string v9, "addressLines"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .local v0, addressLines:Lorg/json/JSONArray;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, pns:Ljava/util/List;
    const/4 v2, 0x0

    .local v2, hasPhone:Z
    if-eqz v6, :cond_9c

    const/4 v3, 0x0

    .local v3, i:I
    :goto_74
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_99

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .local v5, obj2:Lorg/json/JSONObject;
    if-eqz v5, :cond_93

    const-string v9, "number"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, number:Ljava/lang/String;
    if-nez v2, :cond_90

    invoke-static {v4}, Lcom/virsir/android/chinamobile10086/utils/d;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_96

    const/4 v9, 0x1

    move v2, v9

    :cond_90
    :goto_90
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v4           #number:Ljava/lang/String;
    :cond_93
    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    .restart local v4       #number:Ljava/lang/String;
    :cond_96
    const/4 v9, 0x0

    move v2, v9

    goto :goto_90

    .end local v4           #number:Ljava/lang/String;
    .end local v5           #obj2:Lorg/json/JSONObject;
    :cond_99
    invoke-virtual {v8, v7}, Lcom/virsir/android/chinamobile10086/a/c;->a(Ljava/util/List;)V

    .end local v3           #i:I
    :cond_9c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, ads:Ljava/util/List;
    if-eqz v0, :cond_b7

    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_a4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_b4

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a4

    :cond_b4
    invoke-virtual {v8, v1}, Lcom/virsir/android/chinamobile10086/a/c;->b(Ljava/util/List;)V

    .end local v3           #i:I
    :cond_b7
    return-object v8
.end method
