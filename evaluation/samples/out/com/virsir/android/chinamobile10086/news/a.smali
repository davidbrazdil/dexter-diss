.class Lcom/virsir/android/chinamobile10086/news/a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/virsir/android/chinamobile10086/news/News;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/virsir/android/chinamobile10086/news/News;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/news/News;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/news/a;->a:Lcom/virsir/android/chinamobile10086/news/News;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_6a

    :cond_7
    :goto_7
    return-void

    :pswitch_8
    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/a;->a:Lcom/virsir/android/chinamobile10086/news/News;

    iget-object v2, v2, Lcom/virsir/android/chinamobile10086/news/News;->o:Landroid/widget/TextView;

    const-string v3, "\u65b0\u95fb\u66f4\u65b0\u4e2d..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/a;->a:Lcom/virsir/android/chinamobile10086/news/News;

    invoke-virtual {v2, v4}, Lcom/virsir/android/chinamobile10086/news/News;->a(Z)V

    goto :goto_7

    :pswitch_17
    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/a;->a:Lcom/virsir/android/chinamobile10086/news/News;

    invoke-virtual {v2, v5}, Lcom/virsir/android/chinamobile10086/news/News;->a(Z)V

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/a;->a:Lcom/virsir/android/chinamobile10086/news/News;

    iget-object v2, v2, Lcom/virsir/android/chinamobile10086/news/News;->o:Landroid/widget/TextView;

    const-string v3, "\u65b0\u95fb\u66f4\u65b0\u5931\u8d25\uff01\u8bf7\u68c0\u67e5\u7f51\u7edc\uff0c\u70b9\u51fb\u83dc\u5355\uff0c\u91cd\u65b0\u5237\u65b0\u3002"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/a;->a:Lcom/virsir/android/chinamobile10086/news/News;

    invoke-static {v2}, Lcom/virsir/android/chinamobile10086/news/News;->a(Lcom/virsir/android/chinamobile10086/news/News;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/a;->a:Lcom/virsir/android/chinamobile10086/news/News;

    const v3, 0x7f070008

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/a;->a:Lcom/virsir/android/chinamobile10086/news/News;

    iget-boolean v2, v2, Lcom/virsir/android/chinamobile10086/news/News;->s:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/a;->a:Lcom/virsir/android/chinamobile10086/news/News;

    invoke-virtual {v2}, Lcom/virsir/android/chinamobile10086/news/News;->openOptionsMenu()V

    goto :goto_7

    :pswitch_45
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .local v1, objs:[Ljava/lang/Object;
    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/a;->a:Lcom/virsir/android/chinamobile10086/news/News;

    iget-object v2, v2, Lcom/virsir/android/chinamobile10086/news/News;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/a;->a:Lcom/virsir/android/chinamobile10086/news/News;

    iget-object v3, v2, Lcom/virsir/android/chinamobile10086/news/News;->j:Ljava/util/List;

    aget-object v2, v1, v4

    check-cast v2, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/a;->a:Lcom/virsir/android/chinamobile10086/news/News;

    invoke-static {v2}, Lcom/virsir/android/chinamobile10086/news/News;->b(Lcom/virsir/android/chinamobile10086/news/News;)V

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/a;->a:Lcom/virsir/android/chinamobile10086/news/News;

    invoke-virtual {v2, v5}, Lcom/virsir/android/chinamobile10086/news/News;->a(Z)V

    goto :goto_7

    :pswitch_data_6a
    .packed-switch 0x65
        :pswitch_8
        :pswitch_45
        :pswitch_17
    .end packed-switch
.end method
