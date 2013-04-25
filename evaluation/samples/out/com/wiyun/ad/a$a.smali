.class final Lcom/wiyun/ad/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wiyun/ad/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f80

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/wiyun/ad/a$a;->a:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4

    iget v0, p0, Lcom/wiyun/ad/a$a;->a:F

    div-float v0, p1, v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/wiyun/ad/a$a;->a:F

    mul-float/2addr v0, v1

    return v0
.end method
