.class public Lcom/wiyun/ad/s;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C

.field private static final b:[C


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x10

    new-array v0, v1, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/wiyun/ad/s;->a:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_26

    sput-object v0, Lcom/wiyun/ad/s;->b:[C

    return-void

    nop

    :array_12
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data

    :array_26
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/wiyun/ad/s;->c:Ljava/lang/String;

    return-void
.end method

.method public static a([B)[C
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/wiyun/ad/s;->a([BZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static a([BZ)[C
    .registers 3

    if-eqz p1, :cond_9

    sget-object v0, Lcom/wiyun/ad/s;->a:[C

    :goto_4
    invoke-static {p0, v0}, Lcom/wiyun/ad/s;->a([B[C)[C

    move-result-object v0

    return-object v0

    :cond_9
    sget-object v0, Lcom/wiyun/ad/s;->b:[C

    goto :goto_4
.end method

.method protected static a([B[C)[C
    .registers 8

    const/4 v2, 0x0

    array-length v0, p0

    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    move v3, v2

    :goto_7
    if-lt v3, v0, :cond_a

    return-object v1

    :cond_a
    add-int/lit8 v4, v2, 0x1

    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    aget-byte v5, p0, v3

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_7
.end method

.method public static b([B)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/wiyun/ad/s;->a([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[charsetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wiyun/ad/s;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
