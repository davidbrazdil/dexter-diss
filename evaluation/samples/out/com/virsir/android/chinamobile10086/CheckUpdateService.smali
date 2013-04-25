.class public Lcom/virsir/android/chinamobile10086/CheckUpdateService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;,
        Lcom/virsir/android/chinamobile10086/CheckUpdateService$a;,
        Lcom/virsir/android/chinamobile10086/CheckUpdateService$b;
    }
.end annotation


# instance fields
.field a:Lcom/virsir/android/chinamobile10086/utils/b;

.field b:Ljava/lang/String;

.field c:J

.field d:Landroid/content/SharedPreferences;

.field e:Landroid/app/NotificationManager;

.field f:I

.field private final g:Landroid/os/Binder;

.field private h:Landroid/os/Handler;

.field private i:Landroid/content/Intent;

.field private j:Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;

.field private k:Ljava/util/Timer;

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/virsir/android/chinamobile10086/CheckUpdateService$b;

    invoke-direct {v0, p0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService$b;-><init>(Lcom/virsir/android/chinamobile10086/CheckUpdateService;)V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->g:Landroid/os/Binder;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "CheckUpdateService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->i:Landroid/content/Intent;

    const-string v0, "notification"

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->c:J

    const v0, 0x1d4c0

    iput v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->f:I

    new-instance v0, Lcom/virsir/android/chinamobile10086/b;

    invoke-direct {v0, p0}, Lcom/virsir/android/chinamobile10086/b;-><init>(Lcom/virsir/android/chinamobile10086/CheckUpdateService;)V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->l:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/virsir/android/chinamobile10086/CheckUpdateService;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->i:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/virsir/android/chinamobile10086/CheckUpdateService;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->h:Landroid/os/Handler;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/virsir/android/chinamobile10086/CheckUpdateService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "url"
    .parameter "message"

    .prologue
    const/high16 v11, 0x7f07

    invoke-virtual {p0, v11}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, appName:Ljava/lang/String;
    const v5, 0x7f02000f

    .local v5, icon:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u8f6f\u4ef6\u6709\u66f4\u65b0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, tickerText:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .local v9, when:J
    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .local v4, context:Landroid/content/Context;
    move-object v3, v8

    .local v3, contentTitle:Ljava/lang/String;
    invoke-static {p2}, Lcom/virsir/android/chinamobile10086/utils/d;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5a

    const-string v11, "\u70b9\u51fb\u67e5\u770b"

    move-object v2, v11

    .local v2, contentText:Ljava/lang/String;
    :goto_2e
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v7, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v7, notificationIntent:Landroid/content/Intent;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {p0, v11, v7, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .local v1, contentIntent:Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6, v5, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .local v6, notification:Landroid/app/Notification;
    invoke-virtual {v6, v4, v3, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v11, v6, Landroid/app/Notification;->defaults:I

    or-int/lit8 v11, v11, 0x1

    iput v11, v6, Landroid/app/Notification;->defaults:I

    iget v11, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v6, Landroid/app/Notification;->flags:I

    iget-object v11, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->e:Landroid/app/NotificationManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    .end local v1           #contentIntent:Landroid/app/PendingIntent;
    .end local v2           #contentText:Ljava/lang/String;
    .end local v6           #notification:Landroid/app/Notification;
    .end local v7           #notificationIntent:Landroid/content/Intent;
    :cond_5a
    move-object v2, p2

    goto :goto_2e
.end method

.method private b()Z
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .local v1, needCheckUpdate:Z
    iget-wide v2, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->d:Landroid/content/SharedPreferences;

    const-string v3, "latest_check_update_date"

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->c:J

    :cond_13
    iget-wide v2, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    const/4 v1, 0x1

    :cond_1a
    :goto_1a
    return v1

    :cond_1b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, lastestDate:Ljava/util/Calendar;
    iget-wide v2, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_1a
.end method

.method static synthetic b(Lcom/virsir/android/chinamobile10086/CheckUpdateService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->b()Z

    move-result v0

    return v0
.end method

.method private c()V
    .registers 3

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->h:Landroid/os/Handler;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a
    return-void
.end method

.method static synthetic c(Lcom/virsir/android/chinamobile10086/CheckUpdateService;)V
    .registers 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->c()V

    return-void
.end method

.method private d()Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;
    .registers 16

    .prologue
    :try_start_0
    new-instance v5, Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;

    invoke-direct {v5, p0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;-><init>(Lcom/virsir/android/chinamobile10086/CheckUpdateService;)V

    .local v5, msg:Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->g()Ljava/lang/String;

    move-result-object v10

    .local v10, userAgent:Ljava/lang/String;
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->f()Ljava/lang/String;

    move-result-object v0

    .local v0, acceptLanguage:Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .local v2, headers:Ljava/util/Map;
    const-string v13, "User-Agent"

    invoke-interface {v2, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "Accept-Language"

    invoke-interface {v2, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->a:Lcom/virsir/android/chinamobile10086/utils/b;

    invoke-virtual {v13}, Lcom/virsir/android/chinamobile10086/utils/b;->a()Z

    move-result v13

    if-nez v13, :cond_26

    const/4 v13, 0x0

    .end local v0           #acceptLanguage:Ljava/lang/String;
    .end local v2           #headers:Ljava/util/Map;
    .end local v5           #msg:Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;
    .end local v10           #userAgent:Ljava/lang/String;
    :goto_25
    return-object v13

    .restart local v0       #acceptLanguage:Ljava/lang/String;
    .restart local v2       #headers:Ljava/util/Map;
    .restart local v5       #msg:Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;
    .restart local v10       #userAgent:Ljava/lang/String;
    :cond_26
    iget-object v13, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->a:Lcom/virsir/android/chinamobile10086/utils/b;

    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->e()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v2}, Lcom/virsir/android/chinamobile10086/utils/b;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .local v9, result:Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v6, obj:Lorg/json/JSONObject;
    const-string v13, "query"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .local v8, query:Lorg/json/JSONObject;
    const/4 v7, 0x0

    .local v7, pageURL:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, versionName:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, message:Ljava/lang/String;
    const/4 v11, -0x1

    .local v11, versionCode:I
    if-eqz v8, :cond_73

    const-string v13, "results"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "json"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .local v3, json:Lorg/json/JSONObject;
    const-string v13, "pageURL"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "versionName"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "versionCode"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const-string v13, "message"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v7, v5, Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;->c:Ljava/lang/String;

    iput v11, v5, Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;->b:I

    iput-object v12, v5, Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;->a:Ljava/lang/String;

    iput-object v4, v5, Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;->d:Ljava/lang/String;

    .end local v3           #json:Lorg/json/JSONObject;
    :goto_71
    move-object v13, v5

    goto :goto_25

    :cond_73
    const-string v13, "pageURL"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "versionName"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "versionCode"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v13, "message"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v7, v5, Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;->c:Ljava/lang/String;

    iput v11, v5, Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;->b:I

    iput-object v12, v5, Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;->a:Ljava/lang/String;

    iput-object v4, v5, Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;->d:Ljava/lang/String;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_93} :catch_94

    goto :goto_71

    .end local v0           #acceptLanguage:Ljava/lang/String;
    .end local v2           #headers:Ljava/util/Map;
    .end local v4           #message:Ljava/lang/String;
    .end local v5           #msg:Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;
    .end local v6           #obj:Lorg/json/JSONObject;
    .end local v7           #pageURL:Ljava/lang/String;
    .end local v8           #query:Lorg/json/JSONObject;
    .end local v9           #result:Ljava/lang/String;
    .end local v10           #userAgent:Ljava/lang/String;
    .end local v11           #versionCode:I
    .end local v12           #versionName:Ljava/lang/String;
    :catch_94
    move-exception v13

    move-object v1, v13

    .local v1, ex:Ljava/lang/Exception;
    const/4 v13, 0x0

    goto :goto_25
.end method

.method private e()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, packageName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://apps.virsir.com/app_metadata?a="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private f()Ljava/lang/String;
    .registers 4

    .prologue
    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .local v0, locale:Ljava/util/Locale;
    const-string v1, ""

    .local v1, localeStr:Ljava/lang/String;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_12
    return-object v1
.end method

.method private g()Ljava/lang/String;
    .registers 10

    .prologue
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .local v4, sdkVersion:Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .local v2, model:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, pinfo:Landroid/content/pm/PackageInfo;
    const/4 v0, 0x0

    .local v0, currVersionCode:I
    :try_start_6
    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_12} :catch_6b

    move-result-object v3

    :goto_13
    if-eqz v3, :cond_17

    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    :cond_17
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, extraInfo:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/virsir/android/chinamobile10086/utils/LephoneSupport;->isLephone()Z

    move-result v6

    if-eqz v6, :cond_27

    const-string v6, "lephone"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_27
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .local v5, userAgent:Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Android Phone,["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][SDK"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "],("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .end local v1           #extraInfo:Ljava/lang/StringBuffer;
    .end local v5           #userAgent:Ljava/lang/StringBuffer;
    :catch_6b
    move-exception v6

    goto :goto_13
.end method


# virtual methods
.method protected a()V
    .registers 7

    .prologue
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->d()Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;

    move-result-object v2

    iput-object v2, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->j:Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_3f

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->j:Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;

    if-eqz v2, :cond_3e

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->c:J

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-wide v2, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2c

    const-string v2, "latest_check_update_date"

    iget-wide v3, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->c:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_2c
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->l:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->j:Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->l:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #msg:Landroid/os/Message;
    :cond_3e
    return-void

    :catchall_3f
    move-exception v2

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->g:Landroid/os/Binder;

    return-object v0
.end method

.method public onCreate()V
    .registers 8

    .prologue
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->d:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->e:Landroid/app/NotificationManager;

    new-instance v0, Lcom/virsir/android/chinamobile10086/utils/b;

    invoke-direct {v0, p0}, Lcom/virsir/android/chinamobile10086/utils/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->a:Lcom/virsir/android/chinamobile10086/utils/b;

    new-instance v6, Lcom/virsir/android/chinamobile10086/CheckUpdateService$a;

    const-string v0, ""

    invoke-direct {v6, p0, v0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService$a;-><init>(Lcom/virsir/android/chinamobile10086/CheckUpdateService;Ljava/lang/String;)V

    .local v6, childThread:Lcom/virsir/android/chinamobile10086/CheckUpdateService$a;
    invoke-virtual {v6}, Lcom/virsir/android/chinamobile10086/CheckUpdateService$a;->start()V

    invoke-virtual {v6}, Lcom/virsir/android/chinamobile10086/CheckUpdateService$a;->a()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->k:Ljava/util/Timer;

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->k:Ljava/util/Timer;

    new-instance v1, Lcom/virsir/android/chinamobile10086/CheckUpdateService$1;

    invoke-direct {v1, p0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService$1;-><init>(Lcom/virsir/android/chinamobile10086/CheckUpdateService;)V

    const-wide/16 v2, 0x64

    iget v4, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->f:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->k:Ljava/util/Timer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_9
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
