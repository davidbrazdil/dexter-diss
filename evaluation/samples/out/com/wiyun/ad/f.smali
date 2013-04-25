.class public Lcom/wiyun/ad/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/security/MessageDigest;
    .registers 1

    const-string v0, "MD5"

    invoke-static {v0}, Lcom/wiyun/ad/f;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a([B)[B
    .registers 2

    invoke-static {}, Lcom/wiyun/ad/f;->a()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b([B)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/wiyun/ad/f;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/wiyun/ad/s;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)[B
    .registers 2

    invoke-static {p0}, Lcom/wiyun/ad/f;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/wiyun/ad/f;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/wiyun/ad/f;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/wiyun/ad/s;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)[B
    .registers 2

    invoke-static {p0}, Lcom/wiyun/ad/n;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
