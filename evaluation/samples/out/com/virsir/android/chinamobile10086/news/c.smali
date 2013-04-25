.class public Lcom/virsir/android/chinamobile10086/news/c;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/virsir/android/chinamobile10086/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 4
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
            "Lcom/virsir/android/chinamobile10086/b/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Lcom/virsir/android/chinamobile10086/news/c;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/news/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;)V
    .registers 8
    .parameter "position"
    .parameter "v"

    .prologue
    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/news/c;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/virsir/android/chinamobile10086/b/c;

    .local v2, nc:Lcom/virsir/android/chinamobile10086/b/c;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, b:Landroid/os/Bundle;
    const-string v3, "index"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "url"

    invoke-virtual {v2}, Lcom/virsir/android/chinamobile10086/b/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "name"

    invoke-virtual {v2}, Lcom/virsir/android/chinamobile10086/b/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/news/c;->b:Landroid/content/Context;

    const-class v4, Lcom/virsir/android/chinamobile10086/news/News;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/news/c;->b:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    if-nez p2, :cond_14

    iget-object v6, p0, Lcom/virsir/android/chinamobile10086/news/c;->b:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .local v5, vi:Landroid/view/LayoutInflater;
    const v6, 0x7f030009

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local v5           #vi:Landroid/view/LayoutInflater;
    :cond_14
    iget-object v6, p0, Lcom/virsir/android/chinamobile10086/news/c;->a:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/virsir/android/chinamobile10086/b/c;

    .local v0, item:Lcom/virsir/android/chinamobile10086/b/c;
    if-eqz v0, :cond_6c

    const v6, 0x7f050010

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .local v4, titleView:Landroid/widget/TextView;
    const v6, 0x7f050011

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, subTitleView:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/b/c;->b()Ljava/lang/String;

    move-result-object v3

    .local v3, title:Ljava/lang/String;
    if-nez v3, :cond_38

    const-string v3, ""

    :cond_38
    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/b/c;->a()Ljava/lang/String;

    move-result-object v1

    .local v1, subTitle:Ljava/lang/String;
    if-nez v1, :cond_40

    const-string v1, ""

    :cond_40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_69
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v1           #subTitle:Ljava/lang/String;
    .end local v2           #subTitleView:Landroid/widget/TextView;
    .end local v3           #title:Ljava/lang/String;
    .end local v4           #titleView:Landroid/widget/TextView;
    :cond_6c
    return-object p2

    .restart local v1       #subTitle:Ljava/lang/String;
    .restart local v2       #subTitleView:Landroid/widget/TextView;
    .restart local v3       #title:Ljava/lang/String;
    .restart local v4       #titleView:Landroid/widget/TextView;
    :cond_6d
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_69
.end method
