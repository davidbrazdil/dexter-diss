.class Lcom/virsir/android/chinamobile10086/n;
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
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/n;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/n;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v4, v4, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->j:Lcom/virsir/android/chinamobile10086/a/a;

    invoke-virtual {v4}, Lcom/virsir/android/chinamobile10086/a/a;->e()Ljava/util/List;

    move-result-object v2

    .local v2, list:Ljava/util/List;
    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/n;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    invoke-static {v4}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->g(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)Z

    move-result v4

    if-nez v4, :cond_19

    if-eqz v2, :cond_19

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_19

    :cond_19
    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/n;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v4, v4, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->k:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .local v0, count:I
    if-lez v0, :cond_44

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/n;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    invoke-static {v4}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->g(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)Z

    move-result v4

    if-eqz v4, :cond_44

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/n;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v4, v4, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->k:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/n;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v5, v5, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->k:Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/virsir/android/chinamobile10086/n;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v6, v6, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->k:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    :cond_44
    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/n;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v4, v4, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->j:Lcom/virsir/android/chinamobile10086/a/a;

    invoke-virtual {v4}, Lcom/virsir/android/chinamobile10086/a/a;->c()Z

    move-result v4

    if-eqz v4, :cond_56

    new-instance v4, Lcom/virsir/android/chinamobile10086/a/c;

    invoke-direct {v4}, Lcom/virsir/android/chinamobile10086/a/c;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_56
    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/n;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v4, v4, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->k:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_62
    if-ge v1, v3, :cond_72

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/n;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v4, v4, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->k:Landroid/widget/ArrayAdapter;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    :cond_72
    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/n;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v4, v4, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->k:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/n;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v4, v4, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/n;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v4, v4, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->e:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/n;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v4, v4, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
