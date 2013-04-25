.class public Lcom/virsir/android/chinamobile10086/news/b;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/virsir/android/chinamobile10086/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 6
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "list"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/b/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Lcom/virsir/android/chinamobile10086/news/b;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/news/b;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/b;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/news/b;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;)V
    .registers 9
    .parameter "position"
    .parameter "v"

    .prologue
    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/news/b;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/virsir/android/chinamobile10086/b/d;

    .local v2, item:Lcom/virsir/android/chinamobile10086/b/d;
    invoke-virtual {v2}, Lcom/virsir/android/chinamobile10086/b/d;->a()Ljava/lang/String;

    move-result-object v3

    .local v3, title:Ljava/lang/String;
    if-nez v3, :cond_16

    iget-object p0, p0, Lcom/virsir/android/chinamobile10086/news/b;->c:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/virsir/android/chinamobile10086/news/News;

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/news/News;->d()V

    :goto_15
    return-void

    .restart local p0
    :cond_16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bd:Landroid/os/Bundle;
    const-string v4, "title"

    invoke-virtual {v2}, Lcom/virsir/android/chinamobile10086/b/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "desc"

    invoke-virtual {v2}, Lcom/virsir/android/chinamobile10086/b/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "link"

    invoke-virtual {v2}, Lcom/virsir/android/chinamobile10086/b/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/news/b;->c:Landroid/content/Context;

    const-class v5, Lcom/virsir/android/chinamobile10086/news/NewsDetails;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/news/b;->c:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_15
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/news/b;->b:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/virsir/android/chinamobile10086/b/d;

    .local v0, item:Lcom/virsir/android/chinamobile10086/b/d;
    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/b/d;->a()Ljava/lang/String;

    move-result-object v1

    .local v1, title:Ljava/lang/String;
    if-nez v1, :cond_19

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/news/b;->a:Landroid/view/LayoutInflater;

    const v4, 0x7f03000d

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :goto_18
    return-object p2

    :cond_19
    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/news/b;->a:Landroid/view/LayoutInflater;

    const v4, 0x7f03000c

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v3, 0x7f050010

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, titleView:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18
.end method
