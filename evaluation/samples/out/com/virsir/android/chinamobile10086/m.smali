.class Lcom/virsir/android/chinamobile10086/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/virsir/android/chinamobile10086/SearchOfficesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/m;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/16 v3, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/m;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    invoke-static {v2}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->g(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)Z

    move-result v2

    if-nez v2, :cond_45

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/m;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v2, v2, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/m;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v2, v2, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/m;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v2, v2, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->g:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/m;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v2, v2, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->f:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/m;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v2, v2, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/m;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    const v4, 0x7f070003

    invoke-virtual {v3, v4}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/m;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    const v3, 0x7f070008

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_44
    return-void

    :cond_45
    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/m;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v2, v2, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->j:Lcom/virsir/android/chinamobile10086/a/a;

    invoke-virtual {v2}, Lcom/virsir/android/chinamobile10086/a/a;->e()Ljava/util/List;

    move-result-object v1

    .local v1, list:Ljava/util/List;
    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/m;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v2, v2, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->k:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .local v0, count:I
    if-lez v0, :cond_6f

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/m;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v2, v2, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->k:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/m;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v3, v3, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->k:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/m;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v4, v4, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->k:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    :cond_6f
    new-instance v2, Lcom/virsir/android/chinamobile10086/a/c;

    invoke-direct {v2}, Lcom/virsir/android/chinamobile10086/a/c;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/m;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v2, v2, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->k:Landroid/widget/ArrayAdapter;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/m;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v2, v2, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->k:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_44
.end method
