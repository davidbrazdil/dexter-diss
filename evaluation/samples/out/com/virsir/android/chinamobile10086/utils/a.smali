.class public Lcom/virsir/android/chinamobile10086/utils/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static final d:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/virsir/android/chinamobile10086/utils/a;->a:Z

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/virsir/android/chinamobile10086/utils/a;->d:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .local v7, c:Landroid/database/Cursor;
    :try_start_6
    sget-object v1, Lcom/virsir/android/chinamobile10086/utils/a;->d:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "apn"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_49

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, apn:Ljava/lang/String;
    const-string v1, "cmwap"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "10.0.0.172"

    sput-object v1, Lcom/virsir/android/chinamobile10086/utils/a;->b:Ljava/lang/String;

    const/16 v1, 0x50

    sput v1, Lcom/virsir/android/chinamobile10086/utils/a;->c:I
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_4d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_32} :catch_3e

    .end local v6           #apn:Ljava/lang/String;
    :goto_32
    if-eqz v7, :cond_37

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_37
    :goto_37
    sput-boolean v9, Lcom/virsir/android/chinamobile10086/utils/a;->a:Z

    return-void

    .restart local v6       #apn:Ljava/lang/String;
    :cond_3a
    const/4 v1, 0x0

    :try_start_3b
    sput-object v1, Lcom/virsir/android/chinamobile10086/utils/a;->b:Ljava/lang/String;
    :try_end_3d
    .catchall {:try_start_3b .. :try_end_3d} :catchall_4d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3d} :catch_3e

    goto :goto_32

    .end local v6           #apn:Ljava/lang/String;
    :catch_3e
    move-exception v1

    move-object v8, v1

    .local v8, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    :try_start_41
    sput-object v1, Lcom/virsir/android/chinamobile10086/utils/a;->b:Ljava/lang/String;
    :try_end_43
    .catchall {:try_start_41 .. :try_end_43} :catchall_4d

    if-eqz v7, :cond_37

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_37

    .end local v8           #e:Ljava/lang/Exception;
    :cond_49
    const/4 v1, 0x0

    :try_start_4a
    sput-object v1, Lcom/virsir/android/chinamobile10086/utils/a;->b:Ljava/lang/String;
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4c} :catch_3e

    goto :goto_32

    :catchall_4d
    move-exception v1

    if-eqz v7, :cond_53

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_53
    throw v1
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/virsir/android/chinamobile10086/utils/a;->a:Z

    return v0
.end method

.method public static b()Z
    .registers 1

    sget-object v0, Lcom/virsir/android/chinamobile10086/utils/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static c()Lorg/apache/http/HttpHost;
    .registers 3

    .prologue
    new-instance v0, Lorg/apache/http/HttpHost;

    sget-object v1, Lcom/virsir/android/chinamobile10086/utils/a;->b:Ljava/lang/String;

    sget v2, Lcom/virsir/android/chinamobile10086/utils/a;->c:I

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .local v0, hh:Lorg/apache/http/HttpHost;
    return-object v0
.end method
