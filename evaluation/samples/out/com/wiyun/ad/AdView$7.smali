.class Lcom/wiyun/ad/AdView$7;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wiyun/ad/AdView;->requestAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wiyun/ad/AdView;


# direct methods
.method constructor <init>(Lcom/wiyun/ad/AdView;)V
    .registers 2

    iput-object p1, p0, Lcom/wiyun/ad/AdView$7;->a:Lcom/wiyun/ad/AdView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/wiyun/ad/AdView$7;)Lcom/wiyun/ad/AdView;
    .registers 2

    iget-object v0, p0, Lcom/wiyun/ad/AdView$7;->a:Lcom/wiyun/ad/AdView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/wiyun/ad/AdView$7;->a:Lcom/wiyun/ad/AdView;

    invoke-virtual {v0}, Lcom/wiyun/ad/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wiyun/ad/AdView$7;->a:Lcom/wiyun/ad/AdView;

    iget-object v2, p0, Lcom/wiyun/ad/AdView$7;->a:Lcom/wiyun/ad/AdView;

    invoke-static {v0, v2}, Lcom/wiyun/ad/d;->a(Landroid/content/Context;Lcom/wiyun/ad/AdView;)Lcom/wiyun/ad/r;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/wiyun/ad/AdView;->a(Lcom/wiyun/ad/AdView;Lcom/wiyun/ad/r;)V

    iget-object v0, p0, Lcom/wiyun/ad/AdView$7;->a:Lcom/wiyun/ad/AdView;

    invoke-virtual {v0}, Lcom/wiyun/ad/AdView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/wiyun/ad/AdView$7$1;

    invoke-direct {v1, p0}, Lcom/wiyun/ad/AdView$7$1;-><init>(Lcom/wiyun/ad/AdView$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    const-string v1, "WiYun"

    const-string v2, "Unhandled exception requesting a fresh ad."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method
