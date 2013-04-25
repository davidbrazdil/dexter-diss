.class public Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;
.super Lcom/virsir/android/chinamobile10086/BaseView;


# instance fields
.field c:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/virsir/android/chinamobile10086/b/c;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/b/c;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/BaseView;-><init>()V

    return-void
.end method

.method private c()V
    .registers 9

    .prologue
    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;->e:Landroid/widget/ListView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;->d:Ljava/util/List;

    new-instance v0, Lcom/virsir/android/chinamobile10086/b/c;

    const-string v5, "\u4eca\u65e5\u5934\u6761"

    const-string v6, "\u6700\u65b0\u7684\u56fd\u5185\u56fd\u9645\u91cd\u70b9\u3001\u5934\u6761\u65b0\u95fb, "

    const-string v7, "http://news.163.com/special/00011K6L/rss_newstop.xml"

    invoke-direct {v0, v5, v6, v7}, Lcom/virsir/android/chinamobile10086/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v0, nc1:Lcom/virsir/android/chinamobile10086/b/c;
    new-instance v1, Lcom/virsir/android/chinamobile10086/b/c;

    const-string v5, "\u5a31\u4e50\u516b\u5366"

    const-string v6, "\u660e\u661f\u6d88\u606f\u3001\u7535\u5f71\u6d3b\u52a8\u3001\u6b27\u7f8e\u6b4c\u575b\u3001\u7535\u89c6"

    const-string v7, "http://ent.163.com/special/00031K7Q/rss_toutiao.xml"

    invoke-direct {v1, v5, v6, v7}, Lcom/virsir/android/chinamobile10086/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v1, nc2:Lcom/virsir/android/chinamobile10086/b/c;
    new-instance v2, Lcom/virsir/android/chinamobile10086/b/c;

    const-string v5, "\u79d1\u6280\u8981\u95fb"

    const-string v6, "\u4e92\u8054\u7f51\u3001\u901a\u4fe1\u3001IT\u4e1a\u754c\u52a8\u6001"

    const-string v7, "http://tech.163.com/special/000944OI/yaowen.xml"

    invoke-direct {v2, v5, v6, v7}, Lcom/virsir/android/chinamobile10086/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v2, nc3:Lcom/virsir/android/chinamobile10086/b/c;
    new-instance v3, Lcom/virsir/android/chinamobile10086/b/c;

    const-string v5, "\u624b\u673a\u65b0\u95fb"

    const-string v6, "\u667a\u80fd\u624b\u673a\u3001\u624b\u673a\u8bc4\u6d4b\u3001\u4e0a\u5e02\u65b0\u95fb\u3001\u5546\u5bb6\u4fc3\u9500"

    const-string v7, "http://tech.163.com/mobile/special/001144R8/mobile163.xml"

    invoke-direct {v3, v5, v6, v7}, Lcom/virsir/android/chinamobile10086/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v3, nc4:Lcom/virsir/android/chinamobile10086/b/c;
    new-instance v4, Lcom/virsir/android/chinamobile10086/b/c;

    const-string v5, "\u8d22\u7ecf\u5e02\u573a"

    const-string v6, "\u80a1\u5e02\u52a8\u6001\u3001\u57fa\u91d1\u51c0\u503c\u3001\u77f3\u6cb9\u9ec4\u91d1\u3001\u5e02\u573a\u65b0\u95fb"

    const-string v7, "http://money.163.com/special/00252EQ2/gushinewsrss.xml"

    invoke-direct {v4, v5, v6, v7}, Lcom/virsir/android/chinamobile10086/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v4, nc5:Lcom/virsir/android/chinamobile10086/b/c;
    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;->d:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;->d:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;->d:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;->d:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;->d:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/virsir/android/chinamobile10086/news/c;

    const v6, 0x7f030009

    iget-object v7, p0, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;->d:Ljava/util/List;

    invoke-direct {v5, p0, v6, v7}, Lcom/virsir/android/chinamobile10086/news/c;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v5, p0, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;->c:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;->e:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    const v0, 0x7f05001f

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;->e:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector$1;

    invoke-direct {v1, p0}, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector$1;-><init>(Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method protected a()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Lcom/virsir/android/chinamobile10086/BaseView;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;->setContentView(I)V

    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;->d()V

    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;->c()V

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;->b()V

    return-void
.end method
