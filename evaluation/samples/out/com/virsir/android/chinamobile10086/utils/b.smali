.class public Lcom/virsir/android/chinamobile10086/utils/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/virsir/android/chinamobile10086/utils/f;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "c"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/utils/b;->b:Landroid/content/Context;

    new-instance v0, Lcom/virsir/android/chinamobile10086/utils/f;

    invoke-direct {v0, p1}, Lcom/virsir/android/chinamobile10086/utils/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/utils/b;->a:Lcom/virsir/android/chinamobile10086/utils/f;

    invoke-static {}, Lcom/virsir/android/chinamobile10086/utils/a;->a()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p1}, Lcom/virsir/android/chinamobile10086/utils/a;->a(Landroid/content/Context;)V

    :cond_15
    return-void
.end method

.method private b()Lorg/apache/http/client/HttpClient;
    .registers 8

    .prologue
    const/16 v3, 0x2710

    .local v3, timeoutConnection:I
    const/16 v4, 0x1770

    .local v4, timeoutSocket:I
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v1, httpParameters:Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .local v0, httpClient:Lorg/apache/http/client/HttpClient;
    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/utils/b;->a:Lcom/virsir/android/chinamobile10086/utils/f;

    invoke-virtual {v5}, Lcom/virsir/android/chinamobile10086/utils/f;->a()Z

    move-result v5

    if-nez v5, :cond_31

    invoke-static {}, Lcom/virsir/android/chinamobile10086/utils/a;->b()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-static {}, Lcom/virsir/android/chinamobile10086/utils/a;->c()Lorg/apache/http/HttpHost;

    move-result-object v2

    .local v2, proxy:Lorg/apache/http/HttpHost;
    if-eqz v2, :cond_31

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "http.route.default-proxy"

    invoke-interface {v5, v6, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .end local v2           #proxy:Lorg/apache/http/HttpHost;
    :cond_31
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 13
    .parameter "url"
    .parameter "headers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/utils/b;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .local v2, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .local v3, httpGet:Lorg/apache/http/client/methods/HttpGet;
    if-eqz p2, :cond_29

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local p0
    .local v4, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_29

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, key:Ljava/lang/String;
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, v5, p0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    :cond_29
    const/4 v7, 0x0

    .local v7, result:Ljava/lang/String;
    :try_start_2a
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_47

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_47

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_47} :catch_48

    .end local v0           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    :cond_47
    :goto_47
    return-object v7

    :catch_48
    move-exception v8

    move-object v1, v8

    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    const/4 v7, 0x0

    goto :goto_47
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "url"
    .parameter "headers"
    .parameter "encode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/utils/b;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .local v2, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .local v3, httpGet:Lorg/apache/http/client/methods/HttpGet;
    if-eqz p2, :cond_29

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local p0
    .local v4, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_29

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, key:Ljava/lang/String;
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, v5, p0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    :cond_29
    const/4 v7, 0x0

    .local v7, result:Ljava/lang/String;
    :try_start_2a
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_47

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_47

    invoke-static {v0, p3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_47} :catch_48

    .end local v0           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    :cond_47
    :goto_47
    return-object v7

    :catch_48
    move-exception v8

    move-object v1, v8

    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    const/4 v7, 0x0

    goto :goto_47
.end method

.method public a()Z
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/utils/b;->a:Lcom/virsir/android/chinamobile10086/utils/f;

    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/utils/f;->c()Z

    move-result v0

    return v0
.end method
