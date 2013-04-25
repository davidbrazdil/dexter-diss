.class Lcom/wiyun/ad/r;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:I

.field i:F

.field j:Ljava/lang/String;

.field k:I

.field l:Ljava/lang/String;

.field m:I

.field n:I

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Landroid/graphics/Bitmap;

.field s:Landroid/graphics/Bitmap;

.field t:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4150

    iput v0, p0, Lcom/wiyun/ad/r;->i:F

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/wiyun/ad/r;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/wiyun/ad/r;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/wiyun/ad/r;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12
    iput-object v1, p0, Lcom/wiyun/ad/r;->s:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/wiyun/ad/r;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/wiyun/ad/r;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/wiyun/ad/r;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_25
    iput-object v1, p0, Lcom/wiyun/ad/r;->r:Landroid/graphics/Bitmap;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v1, p1, Lcom/wiyun/ad/r;

    if-eqz v1, :cond_22

    move-object v0, p1

    check-cast v0, Lcom/wiyun/ad/r;

    move-object v1, v0

    iget-object v1, v1, Lcom/wiyun/ad/r;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/wiyun/ad/r;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    check-cast p1, Lcom/wiyun/ad/r;

    iget-object v1, p1, Lcom/wiyun/ad/r;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/wiyun/ad/r;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f

    :cond_22
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1f
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/wiyun/ad/r;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
