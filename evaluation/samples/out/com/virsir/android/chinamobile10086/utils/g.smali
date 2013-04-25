.class public Lcom/virsir/android/chinamobile10086/utils/g;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "url"

    .prologue
    invoke-static {}, Lcom/virsir/android/chinamobile10086/utils/g;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .local v2, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .local v3, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const/4 v5, 0x0

    .local v5, result:Ljava/lang/String;
    :try_start_a
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_27

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_27

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_27} :catch_28

    .end local v0           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :cond_27
    :goto_27
    return-object v5

    :catch_28
    move-exception v6

    move-object v1, v6

    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    const/4 v5, 0x0

    goto :goto_27
.end method

.method public static a()Lorg/apache/http/client/HttpClient;
    .registers 4

    .prologue
    const/16 v2, 0x2710

    .local v2, timeoutConnection:I
    const/16 v3, 0x1770

    .local v3, timeoutSocket:I
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v1, httpParameters:Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .local v0, httpClient:Lorg/apache/http/client/HttpClient;
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "s"

    .prologue
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    :goto_6
    return-object v1

    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_6
.end method
