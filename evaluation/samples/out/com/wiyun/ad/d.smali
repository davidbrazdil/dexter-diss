.class Lcom/wiyun/ad/d;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2710

    sput v0, Lcom/wiyun/ad/d;->a:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wiyun/ad/d;->b:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/wiyun/ad/AdView;)I
    .registers 3

    sget-object v0, Lcom/wiyun/ad/d;->b:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->getResId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_10

    const/4 v0, -0x1

    :goto_f
    return v0

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_f
.end method

.method static a(Landroid/content/Context;Lcom/wiyun/ad/AdView;)Lcom/wiyun/ad/r;
    .registers 15

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->getResId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wiyun/ad/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->isTestMode()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->getTestAdType()I

    move-result v2

    packed-switch v2, :pswitch_data_51e

    :cond_16
    :goto_16
    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_24

    const-string v2, "Cannot request an ad without Internet permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v2}, Lcom/wiyun/ad/b;->a(Ljava/lang/String;)V

    :cond_24
    const/4 v2, 0x0

    invoke-static {}, Lcom/wiyun/ad/d;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v3

    :try_start_29
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "wiyun_last_ad_json"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wiyun/ad/d;->a(Lcom/wiyun/ad/AdView;)I

    move-result v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_301

    if-eq v5, v6, :cond_6b

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-static {v4}, Lcom/wiyun/ad/d;->a(Ljava/io/File;)[B

    move-result-object v5

    if-eqz v5, :cond_5e

    invoke-static {v5}, Lcom/wiyun/ad/d;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5e

    move-object v0, v5

    :cond_5e
    sget-object v5, Lcom/wiyun/ad/d;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->getResId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    :goto_6b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19a

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://d.wiyun.com/adv/d"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "a"

    invoke-static {v5, v6, v1}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "r"

    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->getResId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "s"

    const-string v7, "1.0.6"

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const-string v7, "h"

    iget v8, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v7, v8}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v7, "w"

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5, v7, v6}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v6, "o"

    invoke-static {p0}, Lcom/wiyun/ad/b;->b(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_32a

    const-string v7, "Android Emulator"

    :goto_c6
    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "v"

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "b"

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "m"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "u"

    invoke-static {p0}, Lcom/wiyun/ad/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "n"

    invoke-static {p0}, Lcom/wiyun/ad/b;->c(Landroid/content/Context;)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v6, "f"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v6, "l"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "c"

    invoke-static {p0}, Lcom/wiyun/ad/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "mm"

    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->isTestMode()Z

    move-result v6

    if-nez v6, :cond_12d

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12d

    invoke-static {}, Lcom/wiyun/ad/d;->b()Z

    move-result v6

    if-nez v6, :cond_12d

    const-string v6, "e"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_12d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_155

    invoke-static {p0}, Lcom/wiyun/ad/b;->f(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_155

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/wiyun/ad/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wiyun/ad/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "wg"

    invoke-static {v5, v6, v1}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_155
    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_168

    const-string v1, "k"

    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_168
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v5, "User-Agent"

    invoke-static {}, Lcom/wiyun/ad/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0x12c

    if-ge v5, v6, :cond_32e

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/wiyun/ad/d;->a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/wiyun/ad/CJC;->sAS:Z

    :goto_195
    if-eqz v0, :cond_19a

    invoke-static {v4, v0}, Lcom/wiyun/ad/d;->a(Ljava/io/File;Ljava/lang/String;)Z

    :cond_19a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_500

    new-instance v1, Lcom/wiyun/ad/k;

    new-instance v4, Lorg/json/JSONTokener;

    invoke-direct {v4, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lcom/wiyun/ad/k;-><init>(Lorg/json/JSONTokener;)V

    const-string v0, "p"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "q"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "a"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "m"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "z"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ra"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "c"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_518

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_518

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_518

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_518

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_518

    const/4 v10, 0x2

    if-eq v5, v10, :cond_1fd

    const-string v10, "application/x-search"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_518

    :cond_1fd
    const-string v10, "application/x-search"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20e

    const-string v10, "%query%"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_518

    :cond_20e
    const-string v10, "application/x-map"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22e

    const-string v10, "addr://"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_22e

    const-string v10, "http://"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_22e

    const-string v10, "loc://"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_518

    :cond_22e
    new-instance v10, Lcom/wiyun/ad/r;

    invoke-direct {v10}, Lcom/wiyun/ad/r;-><init>()V

    iput-object v0, v10, Lcom/wiyun/ad/r;->a:Ljava/lang/String;

    iput-object v4, v10, Lcom/wiyun/ad/r;->b:Ljava/lang/String;

    iput v5, v10, Lcom/wiyun/ad/r;->d:I

    const-string v0, "i"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/r;->t:Ljava/lang/String;

    const-string v0, "t"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/r;->f:Ljava/lang/String;

    const-string v0, "st"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/r;->j:Ljava/lang/String;

    const-string v0, "sh"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/r;->g:Ljava/lang/String;

    iput-object v7, v10, Lcom/wiyun/ad/r;->o:Ljava/lang/String;

    iput-object v9, v10, Lcom/wiyun/ad/r;->p:Ljava/lang/String;

    const-string v0, "b"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/r;->l:Ljava/lang/String;

    const-string v0, "h"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/wiyun/ad/r;->n:I

    const-string v0, "w"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/wiyun/ad/r;->m:I

    iput-object v8, v10, Lcom/wiyun/ad/r;->e:Ljava/lang/String;

    iput-object v6, v10, Lcom/wiyun/ad/r;->q:Ljava/lang/String;

    const-string v0, "bc"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_293

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v0, v4

    iput v0, v10, Lcom/wiyun/ad/r;->k:I

    :cond_293
    const-string v0, "tc"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2ad

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v0, v4

    iput v0, v10, Lcom/wiyun/ad/r;->h:I

    :cond_2ad
    const-string v0, "ts"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4150

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v10, Lcom/wiyun/ad/r;->i:F

    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->getResId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/r;->c:Ljava/lang/String;

    iget-object v0, v10, Lcom/wiyun/ad/r;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d2

    iget-object v0, v10, Lcom/wiyun/ad/r;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/wiyun/ad/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/r;->f:Ljava/lang/String;

    :cond_2d2
    iget v0, v10, Lcom/wiyun/ad/r;->d:I
    :try_end_2d4
    .catchall {:try_start_29 .. :try_end_2d4} :catchall_344
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2d4} :catch_310

    packed-switch v0, :pswitch_data_528

    move-object p0, v2

    :goto_2d8
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    if-nez p0, :cond_2e8

    const-string p1, "WiYun"

    const-string v0, "Failed to get ad"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e8
    :goto_2e8
    return-object p0

    :pswitch_2e9
    const-string v0, "test_text_ad"

    invoke-static {v0}, Lcom/wiyun/ad/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_16

    :pswitch_2f1
    const-string v0, "test_banner_ad"

    invoke-static {v0}, Lcom/wiyun/ad/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_16

    :pswitch_2f9
    const-string v0, "test_fullscreen_ad"

    invoke-static {v0}, Lcom/wiyun/ad/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_16

    :cond_301
    :try_start_301
    sget-object v5, Lcom/wiyun/ad/d;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->getResId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30e
    .catchall {:try_start_301 .. :try_end_30e} :catchall_344
    .catch Ljava/lang/Throwable; {:try_start_301 .. :try_end_30e} :catch_310

    goto/16 :goto_6b

    :catch_310
    move-exception p0

    move-object p0, v2

    :goto_312
    :try_start_312
    const-string p1, "WiYun"

    const-string v0, "Failed to get ad"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_319
    .catchall {:try_start_312 .. :try_end_319} :catchall_50e

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    if-nez p0, :cond_2e8

    const-string p1, "WiYun"

    const-string v0, "Failed to get ad"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e8

    :cond_32a
    :try_start_32a
    const-string v7, "Android"

    goto/16 :goto_c6

    :cond_32e
    const-string v1, "WiYun"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to get ad, statusCode: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_342
    .catchall {:try_start_32a .. :try_end_342} :catchall_344
    .catch Ljava/lang/Throwable; {:try_start_32a .. :try_end_342} :catch_310

    goto/16 :goto_195

    :catchall_344
    move-exception p0

    move-object p1, v2

    :goto_346
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    if-nez p1, :cond_356

    const-string p1, "WiYun"

    const-string v0, "Failed to get ad"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_356
    throw p0

    :pswitch_357
    :try_start_357
    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->isTestMode()Z

    move-result p1

    if-nez p1, :cond_44c

    iget-object p1, v10, Lcom/wiyun/ad/r;->t:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_362
    .catchall {:try_start_357 .. :try_end_362} :catchall_344
    .catch Ljava/lang/Throwable; {:try_start_357 .. :try_end_362} :catch_310

    move-result p1

    if-nez p1, :cond_3ce

    :try_start_365
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iget-object v1, v10, Lcom/wiyun/ad/r;->t:Ljava/lang/String;

    invoke-static {v1}, Lcom/wiyun/ad/f;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/wiyun/ad/f;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wiyun/ad/d;->a(Ljava/io/File;)[B

    move-result-object p1

    if-eqz p1, :cond_386

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v10, Lcom/wiyun/ad/r;->s:Landroid/graphics/Bitmap;

    :cond_386
    iget-object p1, v10, Lcom/wiyun/ad/r;->s:Landroid/graphics/Bitmap;

    if-nez p1, :cond_51b

    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v0, v10, Lcom/wiyun/ad/r;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/wiyun/ad/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_51b

    invoke-static {p1}, Lcom/wiyun/ad/d;->a(Lorg/apache/http/HttpResponse;)[B

    move-result-object p1

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/r;->s:Landroid/graphics/Bitmap;

    iget-object v0, v10, Lcom/wiyun/ad/r;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_51b

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    iget-object v1, v10, Lcom/wiyun/ad/r;->t:Ljava/lang/String;

    invoke-static {v1}, Lcom/wiyun/ad/f;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/wiyun/ad/f;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/wiyun/ad/d;->a(Ljava/io/File;[B)Z
    :try_end_3cb
    .catchall {:try_start_365 .. :try_end_3cb} :catchall_50a
    .catch Ljava/lang/Throwable; {:try_start_365 .. :try_end_3cb} :catch_514

    move-object p0, v10

    goto/16 :goto_2d8

    :cond_3ce
    :try_start_3ce
    iget-object p1, v10, Lcom/wiyun/ad/r;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_518

    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iget-object v1, v10, Lcom/wiyun/ad/r;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/wiyun/ad/f;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/wiyun/ad/f;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wiyun/ad/d;->a(Ljava/io/File;)[B

    move-result-object p1

    if-eqz p1, :cond_3f7

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v10, Lcom/wiyun/ad/r;->r:Landroid/graphics/Bitmap;

    :cond_3f7
    iget-object p1, v10, Lcom/wiyun/ad/r;->r:Landroid/graphics/Bitmap;

    if-nez p1, :cond_43c

    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v0, v10, Lcom/wiyun/ad/r;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/wiyun/ad/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_43c

    invoke-static {p1}, Lcom/wiyun/ad/d;->a(Lorg/apache/http/HttpResponse;)[B

    move-result-object p1

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/r;->r:Landroid/graphics/Bitmap;

    iget-object v0, v10, Lcom/wiyun/ad/r;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_43c

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    iget-object v1, v10, Lcom/wiyun/ad/r;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/wiyun/ad/f;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/wiyun/ad/f;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/wiyun/ad/d;->a(Ljava/io/File;[B)Z

    :cond_43c
    iget-object p0, v10, Lcom/wiyun/ad/r;->r:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_518

    const/4 p0, 0x0

    iput-object p0, v10, Lcom/wiyun/ad/r;->s:Landroid/graphics/Bitmap;

    const/4 p0, 0x0

    iput-object p0, v10, Lcom/wiyun/ad/r;->t:Ljava/lang/String;

    const/4 p0, 0x0

    iput-object p0, v10, Lcom/wiyun/ad/r;->f:Ljava/lang/String;

    move-object p0, v10

    goto/16 :goto_2d8

    :cond_44c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "icon"

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_464

    invoke-static {p1, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v10, Lcom/wiyun/ad/r;->s:Landroid/graphics/Bitmap;

    :cond_464
    move-object p0, v10

    goto/16 :goto_2d8

    :pswitch_467
    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->isTestMode()Z

    move-result p1

    if-nez p1, :cond_4e2

    iget-object p1, v10, Lcom/wiyun/ad/r;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_518

    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iget-object v1, v10, Lcom/wiyun/ad/r;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/wiyun/ad/f;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/wiyun/ad/f;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wiyun/ad/d;->a(Ljava/io/File;)[B

    move-result-object p1

    if-eqz p1, :cond_496

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v10, Lcom/wiyun/ad/r;->r:Landroid/graphics/Bitmap;

    :cond_496
    iget-object p1, v10, Lcom/wiyun/ad/r;->r:Landroid/graphics/Bitmap;

    if-nez p1, :cond_4db

    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v0, v10, Lcom/wiyun/ad/r;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/wiyun/ad/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_4db

    invoke-static {p1}, Lcom/wiyun/ad/d;->a(Lorg/apache/http/HttpResponse;)[B

    move-result-object p1

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/r;->r:Landroid/graphics/Bitmap;

    iget-object v0, v10, Lcom/wiyun/ad/r;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4db

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    iget-object v1, v10, Lcom/wiyun/ad/r;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/wiyun/ad/f;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/wiyun/ad/f;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/wiyun/ad/d;->a(Ljava/io/File;[B)Z

    :cond_4db
    iget-object p0, v10, Lcom/wiyun/ad/r;->r:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_518

    move-object p0, v10

    goto/16 :goto_2d8

    :cond_4e2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "icon"

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_4fa

    invoke-static {p1, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v10, Lcom/wiyun/ad/r;->r:Landroid/graphics/Bitmap;

    :cond_4fa
    move-object p0, v10

    goto/16 :goto_2d8

    :pswitch_4fd
    move-object p0, v10

    goto/16 :goto_2d8

    :cond_500
    const-string p0, "WiYun"

    const-string p1, "Failed to get ad"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_507
    .catchall {:try_start_3ce .. :try_end_507} :catchall_344
    .catch Ljava/lang/Throwable; {:try_start_3ce .. :try_end_507} :catch_310

    move-object p0, v2

    goto/16 :goto_2d8

    :catchall_50a
    move-exception p0

    move-object p1, v10

    goto/16 :goto_346

    :catchall_50e
    move-exception p1

    move-object v12, p1

    move-object p1, p0

    move-object p0, v12

    goto/16 :goto_346

    :catch_514
    move-exception p0

    move-object p0, v10

    goto/16 :goto_312

    :cond_518
    move-object p0, v2

    goto/16 :goto_2d8

    :cond_51b
    move-object p0, v10

    goto/16 :goto_2d8

    :pswitch_data_51e
    .packed-switch 0x1
        :pswitch_2e9
        :pswitch_2f1
        :pswitch_2f9
    .end packed-switch

    :pswitch_data_528
    .packed-switch 0x1
        :pswitch_4fd
        :pswitch_357
        :pswitch_467
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    const-string v2, "%5B"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    const-string v2, "%5D"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    const-string v2, "%7C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x800

    new-array v1, v1, [B

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    :goto_e
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/wiyun/ad/d;->a([B)Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_23

    move-result v3

    goto :goto_e

    :catch_23
    move-exception v0

    const-string v0, ""

    goto :goto_19
.end method

.method private static a([B)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/wiyun/ad/d;->a([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static a([BII)Ljava/lang/String;
    .registers 6

    const-string v2, ""

    if-nez p0, :cond_8

    const-string v0, ""

    move-object v0, v2

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_7

    :catch_10
    move-exception v0

    const-string v0, ""

    move-object v0, v2

    goto :goto_7
.end method

.method private static a()Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 5

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v1

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    const/16 v4, 0x50

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    sget v2, Lcom/wiyun/ad/d;->a:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v2, Lcom/wiyun/ad/d;->a:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    invoke-static {}, Lcom/wiyun/ad/c;->b()Z

    move-result v1

    if-nez v1, :cond_57

    invoke-static {}, Lcom/wiyun/ad/c;->c()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-static {}, Lcom/wiyun/ad/c;->d()Lorg/apache/http/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.route.default-proxy"

    invoke-interface {v2, v3, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_57
    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/wiyun/ad/r;)V
    .registers 6

    if-eqz p1, :cond_a

    iget-object v0, p1, Lcom/wiyun/ad/r;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    const-string v0, "Cannot request an ad without Internet permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v0}, Lcom/wiyun/ad/b;->a(Ljava/lang/String;)V

    :cond_19
    invoke-static {}, Lcom/wiyun/ad/d;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    :try_start_1d
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/wiyun/ad/r;->o:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/wiyun/ad/r;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "p"

    iget-object v3, p1, Lcom/wiyun/ad/r;->a:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "q"

    iget-object v3, p1, Lcom/wiyun/ad/r;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ra"

    iget-object v3, p1, Lcom/wiyun/ad/r;->e:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/wiyun/ad/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_5c
    .catchall {:try_start_1d .. :try_end_5c} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_5c} :catch_64

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_a

    :catch_64
    move-exception v1

    :try_start_65
    const-string v2, "WiYun"

    const-string v3, "Failed to record ad click"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_74

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_a

    :catchall_74
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v1
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .registers 5

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wiyun/ad/d;->a(Ljava/io/File;[B)Z
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :catch_b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static a(Ljava/io/File;[B)Z
    .registers 7

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_11
    const/4 v0, 0x0

    :try_start_12
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    :cond_1b
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_4d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_20} :catch_2d

    :try_start_20
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_26} :catch_64

    if-eqz v1, :cond_2b

    :try_start_28
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_57

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    :goto_2c
    return v0

    :catch_2d
    move-exception v1

    :goto_2e
    :try_start_2e
    const-string v1, "WiYun"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to cache ad to file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_2e .. :try_end_46} :catchall_5f

    if-eqz v0, :cond_4b

    :try_start_48
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_59

    :cond_4b
    :goto_4b
    const/4 v0, 0x0

    goto :goto_2c

    :catchall_4d
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_51
    if-eqz v1, :cond_56

    :try_start_53
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_5b

    :cond_56
    :goto_56
    throw v0

    :catch_57
    move-exception v0

    goto :goto_2b

    :catch_59
    move-exception v0

    goto :goto_4b

    :catch_5b
    move-exception v1

    goto :goto_56

    :catchall_5d
    move-exception v0

    goto :goto_51

    :catchall_5f
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_51

    :catch_64
    move-exception v0

    move-object v0, v1

    goto :goto_2e
.end method

.method private static a(Ljava/io/File;)[B
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_28
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_5} :catch_1f

    move-result v1

    if-nez v1, :cond_f

    if-eqz v2, :cond_d

    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_30

    :cond_d
    :goto_d
    move-object v0, v2

    :goto_e
    return-object v0

    :cond_f
    :try_start_f
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_28
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_14} :catch_1f

    :try_start_14
    invoke-static {v0}, Lcom/wiyun/ad/d;->a(Ljava/io/InputStream;)[B
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_38
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_17} :catch_3d

    move-result-object v1

    if-eqz v0, :cond_1d

    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_32

    :cond_1d
    :goto_1d
    move-object v0, v1

    goto :goto_e

    :catch_1f
    move-exception v0

    move-object v0, v2

    :goto_21
    if-eqz v0, :cond_26

    :try_start_23
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_34

    :cond_26
    :goto_26
    move-object v0, v2

    goto :goto_e

    :catchall_28
    move-exception v0

    move-object v1, v2

    :goto_2a
    if-eqz v1, :cond_2f

    :try_start_2c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_36

    :cond_2f
    :goto_2f
    throw v0

    :catch_30
    move-exception v0

    goto :goto_d

    :catch_32
    move-exception v0

    goto :goto_1d

    :catch_34
    move-exception v0

    goto :goto_26

    :catch_36
    move-exception v1

    goto :goto_2f

    :catchall_38
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2a

    :catch_3d
    move-exception v1

    goto :goto_21
.end method

.method private static a(Ljava/io/InputStream;)[B
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, [B

    if-eqz p0, :cond_1c

    const/16 v1, 0x400

    :try_start_8
    new-array v1, v1, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_f
    const/4 v4, -0x1

    if-ne v3, v4, :cond_22

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_34
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1c} :catch_2b

    :cond_1c
    if-eqz p0, :cond_21

    :try_start_1e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_3d

    :cond_21
    :goto_21
    return-object v0

    :cond_22
    const/4 v4, 0x0

    :try_start_23
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_34
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_29} :catch_2b

    move-result v3

    goto :goto_f

    :catch_2b
    move-exception v1

    if-eqz p0, :cond_21

    :try_start_2e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_21

    :catch_32
    move-exception v1

    goto :goto_21

    :catchall_34
    move-exception v0

    if-eqz p0, :cond_3a

    :try_start_37
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    :cond_3a
    :goto_3a
    throw v0

    :catch_3b
    move-exception v1

    goto :goto_3a

    :catch_3d
    move-exception v1

    goto :goto_21
.end method

.method private static a(Lorg/apache/http/HttpResponse;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v0, 0x400

    new-array v0, v0, [B

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_12

    move-object v0, v5

    :cond_11
    :goto_11
    return-object v0

    :cond_12
    :try_start_12
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_17
    const/4 v4, -0x1

    if-ne v3, v4, :cond_26

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_37
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_2f

    move-result-object v0

    if-eqz v1, :cond_11

    :try_start_20
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_11

    :catch_24
    move-exception v1

    goto :goto_11

    :cond_26
    const/4 v4, 0x0

    :try_start_27
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_37
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2d} :catch_2f

    move-result v3

    goto :goto_17

    :catch_2f
    move-exception v0

    if-eqz v1, :cond_35

    :try_start_32
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_3e

    :cond_35
    :goto_35
    move-object v0, v5

    goto :goto_11

    :catchall_37
    move-exception v0

    if-eqz v1, :cond_3d

    :try_start_3a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_40

    :cond_3d
    :goto_3d
    throw v0

    :catch_3e
    move-exception v0

    goto :goto_35

    :catch_40
    move-exception v1

    goto :goto_3d
.end method

.method private static b()Z
    .registers 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/wiyun/ad/CJC;->sAS:Z

    if-eqz v0, :cond_7

    move v0, v2

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    const-string v1, "com.wiyun.analytics.CJC"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_12

    move-result-object v1

    if-eqz v1, :cond_13

    move v0, v2

    goto :goto_6

    :catch_12
    move-exception v1

    :cond_13
    if-nez v0, :cond_6

    :try_start_15
    const-string v1, "com.wiyun.game.CJC"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sAS"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_27} :catch_29

    move-result v0

    goto :goto_6

    :catch_29
    move-exception v1

    goto :goto_6
.end method
