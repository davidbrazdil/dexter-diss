.class public Lcom/wiyun/ad/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wiyun/ad/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/wiyun/ad/c;

.field private static final g:Landroid/net/Uri;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/wiyun/ad/c$a;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Landroid/os/Handler;

.field private j:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/wiyun/ad/c;->g:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/wiyun/ad/c$a;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/wiyun/ad/o;

    invoke-direct {v0, p0}, Lcom/wiyun/ad/o;-><init>(Lcom/wiyun/ad/c;)V

    iput-object v0, p0, Lcom/wiyun/ad/c;->h:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wiyun/ad/c;->i:Landroid/os/Handler;

    new-instance v0, Lcom/wiyun/ad/p;

    iget-object v1, p0, Lcom/wiyun/ad/c;->i:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/wiyun/ad/p;-><init>(Lcom/wiyun/ad/c;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/wiyun/ad/c;->j:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/wiyun/ad/c;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/wiyun/ad/c;->f:Lcom/wiyun/ad/c$a;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wiyun/ad/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/wiyun/ad/c;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/wiyun/ad/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/wiyun/ad/c;->j:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {p1}, Lcom/wiyun/ad/b;->d(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wiyun/ad/c;->c:Z

    invoke-direct {p0}, Lcom/wiyun/ad/c;->e()V

    return-void
.end method

.method public static a()V
    .registers 3

    const/4 v2, 0x0

    sget-object v0, Lcom/wiyun/ad/c;->a:Lcom/wiyun/ad/c;

    if-eqz v0, :cond_29

    sget-object v0, Lcom/wiyun/ad/c;->a:Lcom/wiyun/ad/c;

    iget-object v0, v0, Lcom/wiyun/ad/c;->b:Landroid/content/Context;

    sget-object v1, Lcom/wiyun/ad/c;->a:Lcom/wiyun/ad/c;

    iget-object v1, v1, Lcom/wiyun/ad/c;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/wiyun/ad/c;->a:Lcom/wiyun/ad/c;

    iget-object v1, v1, Lcom/wiyun/ad/c;->j:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v0, Lcom/wiyun/ad/c;->a:Lcom/wiyun/ad/c;

    iput-object v2, v0, Lcom/wiyun/ad/c;->b:Landroid/content/Context;

    sget-object v0, Lcom/wiyun/ad/c;->a:Lcom/wiyun/ad/c;

    iput-object v2, v0, Lcom/wiyun/ad/c;->i:Landroid/os/Handler;

    sget-object v0, Lcom/wiyun/ad/c;->a:Lcom/wiyun/ad/c;

    iput-object v2, v0, Lcom/wiyun/ad/c;->f:Lcom/wiyun/ad/c$a;

    sput-object v2, Lcom/wiyun/ad/c;->a:Lcom/wiyun/ad/c;

    :cond_29
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/wiyun/ad/c$a;)V
    .registers 3

    sget-object v0, Lcom/wiyun/ad/c;->a:Lcom/wiyun/ad/c;

    if-nez v0, :cond_b

    new-instance v0, Lcom/wiyun/ad/c;

    invoke-direct {v0, p0, p1}, Lcom/wiyun/ad/c;-><init>(Landroid/content/Context;Lcom/wiyun/ad/c$a;)V

    sput-object v0, Lcom/wiyun/ad/c;->a:Lcom/wiyun/ad/c;

    :cond_b
    return-void
.end method

.method static synthetic a(Lcom/wiyun/ad/c;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/wiyun/ad/c;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/wiyun/ad/c;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/wiyun/ad/c;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/wiyun/ad/c;)Lcom/wiyun/ad/c$a;
    .registers 2

    iget-object v0, p0, Lcom/wiyun/ad/c;->f:Lcom/wiyun/ad/c$a;

    return-object v0
.end method

.method public static b()Z
    .registers 1

    sget-object v0, Lcom/wiyun/ad/c;->a:Lcom/wiyun/ad/c;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    sget-object v0, Lcom/wiyun/ad/c;->a:Lcom/wiyun/ad/c;

    iget-boolean v0, v0, Lcom/wiyun/ad/c;->c:Z

    goto :goto_5
.end method

.method static synthetic c(Lcom/wiyun/ad/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/wiyun/ad/c;->e()V

    return-void
.end method

.method public static c()Z
    .registers 2

    const/4 v1, 0x0

    sget-object v0, Lcom/wiyun/ad/c;->a:Lcom/wiyun/ad/c;

    if-nez v0, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    sget-object v0, Lcom/wiyun/ad/c;->a:Lcom/wiyun/ad/c;

    iget-object v0, v0, Lcom/wiyun/ad/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_6

    :cond_13
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public static d()Lorg/apache/http/HttpHost;
    .registers 3

    sget-object v0, Lcom/wiyun/ad/c;->a:Lcom/wiyun/ad/c;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Lorg/apache/http/HttpHost;

    sget-object v1, Lcom/wiyun/ad/c;->a:Lcom/wiyun/ad/c;

    iget-object v1, v1, Lcom/wiyun/ad/c;->d:Ljava/lang/String;

    sget-object v2, Lcom/wiyun/ad/c;->a:Lcom/wiyun/ad/c;

    iget v2, v2, Lcom/wiyun/ad/c;->e:I

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_5
.end method

.method private e()V
    .registers 9

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/wiyun/ad/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_7
    sget-object v1, Lcom/wiyun/ad/c;->g:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "apn"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_55
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_58

    move-result-object v0

    :try_start_18
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cmwap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "10.0.0.172"

    iput-object v1, p0, Lcom/wiyun/ad/c;->d:Ljava/lang/String;

    const/16 v1, 0x50

    iput v1, p0, Lcom/wiyun/ad/c;->e:I
    :try_end_33
    .catchall {:try_start_18 .. :try_end_33} :catchall_4b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_33} :catch_3d

    :goto_33
    if-eqz v0, :cond_38

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_38
    :goto_38
    return-void

    :cond_39
    const/4 v1, 0x0

    :try_start_3a
    iput-object v1, p0, Lcom/wiyun/ad/c;->d:Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_4b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3c} :catch_3d

    goto :goto_33

    :catch_3d
    move-exception v1

    :goto_3e
    const/4 v1, 0x0

    :try_start_3f
    iput-object v1, p0, Lcom/wiyun/ad/c;->d:Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_4b

    if-eqz v0, :cond_38

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_38

    :cond_47
    const/4 v1, 0x0

    :try_start_48
    iput-object v1, p0, Lcom/wiyun/ad/c;->d:Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4a} :catch_3d

    goto :goto_33

    :catchall_4b
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_4f
    if-eqz v1, :cond_54

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_54
    throw v0

    :catchall_55
    move-exception v0

    move-object v1, v6

    goto :goto_4f

    :catch_58
    move-exception v0

    move-object v0, v6

    goto :goto_3e
.end method
