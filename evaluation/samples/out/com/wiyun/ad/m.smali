.class Lcom/wiyun/ad/m;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Shader;

.field private c:F

.field private d:J

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .registers 13

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/16 v6, 0xff

    const/16 v4, 0x78

    invoke-direct {p0, p3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x4248

    iput v0, p0, Lcom/wiyun/ad/m;->c:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wiyun/ad/m;->d:J

    iput-boolean v7, p0, Lcom/wiyun/ad/m;->e:Z

    iput-object p1, p0, Lcom/wiyun/ad/m;->f:Ljava/lang/String;

    iput p2, p0, Lcom/wiyun/ad/m;->g:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wiyun/ad/m;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/wiyun/ad/m;->a:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/wiyun/ad/m;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/wiyun/ad/m;->a:Landroid/graphics/Paint;

    const/high16 v2, 0x41d0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v3, 0x4348

    const/4 v2, 0x3

    new-array v5, v2, [I

    invoke-static {v6, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v5, v7

    invoke-static {v6, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v5, v8

    const/4 v2, 0x2

    invoke-static {v6, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, v5, v2

    const/4 v2, 0x3

    new-array v6, v2, [F

    fill-array-data v6, :array_66

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/wiyun/ad/m;->b:Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/wiyun/ad/m;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/wiyun/ad/m;->b:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :array_66
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x33t 0x33t 0x33t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private b(I)I
    .registers 5

    const/16 v2, 0x32

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sparse-switch v0, :sswitch_data_1a

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_11
    return v0

    :sswitch_12
    move v0, v1

    goto :goto_11

    :sswitch_14
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_11

    nop

    :sswitch_data_1a
    .sparse-switch
        -0x80000000 -> :sswitch_14
        0x40000000 -> :sswitch_12
    .end sparse-switch
.end method

.method private c(I)I
    .registers 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(F)V
    .registers 3

    iget-object v0, p0, Lcom/wiyun/ad/m;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/wiyun/ad/m;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/wiyun/ad/m;->e:Z

    invoke-virtual {p0}, Lcom/wiyun/ad/m;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/wiyun/ad/m;->d:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x4090

    div-float/2addr v2, v3

    iget v3, p0, Lcom/wiyun/ad/m;->c:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/wiyun/ad/m;->c:F

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget-boolean v3, p0, Lcom/wiyun/ad/m;->e:Z

    if-eqz v3, :cond_5d

    iget v3, p0, Lcom/wiyun/ad/m;->c:F

    invoke-virtual {v2, v3, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    const-wide/16 v3, 0x32

    invoke-virtual {p0, v3, v4}, Lcom/wiyun/ad/m;->postInvalidateDelayed(J)V

    :goto_25
    iget-object v3, p0, Lcom/wiyun/ad/m;->b:Landroid/graphics/Shader;

    invoke-virtual {v3, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/wiyun/ad/m;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/wiyun/ad/m;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/wiyun/ad/m;->a:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v6, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    iget-object v5, p0, Lcom/wiyun/ad/m;->a:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/wiyun/ad/m;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/wiyun/ad/m;->g:I

    packed-switch v6, :pswitch_data_80

    iget-object v3, p0, Lcom/wiyun/ad/m;->f:Ljava/lang/String;

    int-to-float v2, v2

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/wiyun/ad/m;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_5a
    iput-wide v0, p0, Lcom/wiyun/ad/m;->d:J

    return-void

    :cond_5d
    invoke-virtual {v2, v7, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_25

    :pswitch_61
    iget-object v6, p0, Lcom/wiyun/ad/m;->f:Ljava/lang/String;

    sub-int/2addr v3, v5

    int-to-float v3, v3

    int-to-float v2, v2

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/wiyun/ad/m;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5a

    :pswitch_6f
    iget-object v6, p0, Lcom/wiyun/ad/m;->f:Ljava/lang/String;

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    int-to-float v2, v2

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/wiyun/ad/m;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5a

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_61
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/wiyun/ad/m;->b(I)I

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0, p1}, Lcom/wiyun/ad/m;->c(I)I

    move-result v0

    :cond_b
    invoke-virtual {p0, v0, v1}, Lcom/wiyun/ad/m;->setMeasuredDimension(II)V

    return-void
.end method
