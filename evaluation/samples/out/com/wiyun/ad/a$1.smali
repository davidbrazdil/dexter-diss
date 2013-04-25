.class Lcom/wiyun/ad/a$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wiyun/ad/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wiyun/ad/a;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/wiyun/ad/a;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/wiyun/ad/a$1;->a:Lcom/wiyun/ad/a;

    iput-object p2, p0, Lcom/wiyun/ad/a$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/wiyun/ad/a$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/wiyun/ad/a$1;->a:Lcom/wiyun/ad/a;

    invoke-static {v1}, Lcom/wiyun/ad/a;->a(Lcom/wiyun/ad/a;)Lcom/wiyun/ad/r;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wiyun/ad/d;->a(Landroid/content/Context;Lcom/wiyun/ad/r;)V

    return-void
.end method
