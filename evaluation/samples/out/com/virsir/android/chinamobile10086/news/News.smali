.class public Lcom/virsir/android/chinamobile10086/news/News;
.super Lcom/virsir/android/chinamobile10086/BaseView;


# instance fields
.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field g:Lcom/virsir/android/chinamobile10086/Application;

.field h:Landroid/content/SharedPreferences;

.field i:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/virsir/android/chinamobile10086/b/d;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/b/d;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/b/d;",
            ">;"
        }
    .end annotation
.end field

.field l:Landroid/widget/Button;

.field m:Landroid/widget/Button;

.field n:Landroid/widget/ListView;

.field o:Landroid/widget/TextView;

.field p:Landroid/widget/TextView;

.field q:Landroid/widget/ProgressBar;

.field r:Landroid/view/View;

.field s:Z

.field t:I

.field u:I

.field v:Z

.field private w:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/BaseView;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->t:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->u:I

    new-instance v0, Lcom/virsir/android/chinamobile10086/news/a;

    invoke-direct {v0, p0}, Lcom/virsir/android/chinamobile10086/news/a;-><init>(Lcom/virsir/android/chinamobile10086/news/News;)V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->w:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/virsir/android/chinamobile10086/news/News;)Z
    .registers 2
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/virsir/android/chinamobile10086/news/News;)V
    .registers 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/news/News;->f()V

    return-void
.end method

.method private b(Z)V
    .registers 4
    .parameter "hasMore"

    .prologue
    iput-boolean p1, p0, Lcom/virsir/android/chinamobile10086/news/News;->v:Z

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->m:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/virsir/android/chinamobile10086/news/News;->s:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/virsir/android/chinamobile10086/news/News;->v:Z

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private c(Z)V
    .registers 4
    .parameter "b"

    .prologue
    iput-boolean p1, p0, Lcom/virsir/android/chinamobile10086/news/News;->s:Z

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->m:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/virsir/android/chinamobile10086/news/News;->s:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/virsir/android/chinamobile10086/news/News;->v:Z

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private f()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "MM-dd HH:mm"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v1, format:Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .local v0, dateString:Ljava/lang/String;
    iget-object v6, p0, Lcom/virsir/android/chinamobile10086/news/News;->o:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u65b0\u95fb\u66f4\u65b0\u4e8e: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/virsir/android/chinamobile10086/news/News;->k:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/news/News;->j:Ljava/util/List;

    .local v3, news:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, size:I
    const/4 v2, 0x0

    .local v2, hasMore:Z
    iput v10, p0, Lcom/virsir/android/chinamobile10086/news/News;->u:I

    iget v6, p0, Lcom/virsir/android/chinamobile10086/news/News;->u:I

    sub-int v7, v4, v9

    if-gt v6, v7, :cond_6d

    iget v6, p0, Lcom/virsir/android/chinamobile10086/news/News;->t:I

    iget v7, p0, Lcom/virsir/android/chinamobile10086/news/News;->u:I

    sub-int v7, v4, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, theStep:I
    iget-object v6, p0, Lcom/virsir/android/chinamobile10086/news/News;->k:Ljava/util/List;

    iget v7, p0, Lcom/virsir/android/chinamobile10086/news/News;->u:I

    iget v8, p0, Lcom/virsir/android/chinamobile10086/news/News;->u:I

    add-int/2addr v8, v5

    invoke-interface {v3, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget v6, p0, Lcom/virsir/android/chinamobile10086/news/News;->u:I

    add-int/2addr v6, v5

    if-eq v6, v4, :cond_79

    move v2, v9

    :goto_5c
    if-eqz v2, :cond_68

    iget-object v6, p0, Lcom/virsir/android/chinamobile10086/news/News;->k:Ljava/util/List;

    new-instance v7, Lcom/virsir/android/chinamobile10086/b/d;

    invoke-direct {v7}, Lcom/virsir/android/chinamobile10086/b/d;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_68
    iget v6, p0, Lcom/virsir/android/chinamobile10086/news/News;->u:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/virsir/android/chinamobile10086/news/News;->u:I

    .end local v5           #theStep:I
    :cond_6d
    iget-object v6, p0, Lcom/virsir/android/chinamobile10086/news/News;->i:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    invoke-direct {p0, v2}, Lcom/virsir/android/chinamobile10086/news/News;->b(Z)V

    invoke-direct {p0, v9}, Lcom/virsir/android/chinamobile10086/news/News;->c(Z)V

    return-void

    .restart local v5       #theStep:I
    :cond_79
    move v2, v10

    goto :goto_5c
.end method

.method private g()V
    .registers 4

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->n:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->k:Ljava/util/List;

    new-instance v0, Lcom/virsir/android/chinamobile10086/news/b;

    const v1, 0x7f03000c

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/News;->k:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/virsir/android/chinamobile10086/news/b;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->i:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->n:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/news/News;->i:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->i:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private h()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/news/News;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/news/News;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->q:Landroid/widget/ProgressBar;

    const v0, 0x7f050019

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/news/News;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->o:Landroid/widget/TextView;

    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/news/News;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->p:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v2, 0x7f07

    invoke-virtual {p0, v2}, Lcom/virsir/android/chinamobile10086/news/News;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/News;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f05001f

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/news/News;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->n:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->n:Landroid/widget/ListView;

    new-instance v1, Lcom/virsir/android/chinamobile10086/news/News$1;

    invoke-direct {v1, p0}, Lcom/virsir/android/chinamobile10086/news/News$1;-><init>(Lcom/virsir/android/chinamobile10086/news/News;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f05001e

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/news/News;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->l:Landroid/widget/Button;

    const v0, 0x7f05001c

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/news/News;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->m:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/news/News;->c()Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->l:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_86
    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/news/News;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->r:Landroid/view/View;

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->r:Landroid/view/View;

    new-instance v1, Lcom/virsir/android/chinamobile10086/news/News$2;

    invoke-direct {v1, p0}, Lcom/virsir/android/chinamobile10086/news/News$2;-><init>(Lcom/virsir/android/chinamobile10086/news/News;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->l:Landroid/widget/Button;

    new-instance v1, Lcom/virsir/android/chinamobile10086/news/News$3;

    invoke-direct {v1, p0}, Lcom/virsir/android/chinamobile10086/news/News$3;-><init>(Lcom/virsir/android/chinamobile10086/news/News;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->m:Landroid/widget/Button;

    new-instance v1, Lcom/virsir/android/chinamobile10086/news/News$4;

    invoke-direct {v1, p0}, Lcom/virsir/android/chinamobile10086/news/News$4;-><init>(Lcom/virsir/android/chinamobile10086/news/News;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .registers 6
    .parameter "loading"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->q:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1c

    move v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->r:Landroid/view/View;

    if-nez p1, :cond_1e

    move v1, v2

    :goto_10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->l:Landroid/widget/Button;

    if-nez p1, :cond_20

    const/4 v1, 0x1

    :goto_18
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_1c
    move v1, v3

    goto :goto_8

    :cond_1e
    move v1, v3

    goto :goto_10

    :cond_20
    move v1, v2

    goto :goto_18
.end method

.method protected a()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method c()Z
    .registers 3

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->g:Lcom/virsir/android/chinamobile10086/Application;

    iget v1, p0, Lcom/virsir/android/chinamobile10086/news/News;->f:I

    invoke-virtual {v0, v1}, Lcom/virsir/android/chinamobile10086/Application;->c(I)Z

    move-result v0

    return v0
.end method

.method public d()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .local v0, hasMore:Z
    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/news/News;->j:Ljava/util/List;

    .local v1, news:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, size:I
    iget v4, p0, Lcom/virsir/android/chinamobile10086/news/News;->u:I

    sub-int v5, v2, v7

    if-gt v4, v5, :cond_52

    iget v4, p0, Lcom/virsir/android/chinamobile10086/news/News;->u:I

    if-lez v4, :cond_1e

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/news/News;->k:Ljava/util/List;

    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/news/News;->k:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1e
    iget v4, p0, Lcom/virsir/android/chinamobile10086/news/News;->t:I

    iget v5, p0, Lcom/virsir/android/chinamobile10086/news/News;->u:I

    sub-int v5, v2, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, theStep:I
    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/news/News;->k:Ljava/util/List;

    iget v5, p0, Lcom/virsir/android/chinamobile10086/news/News;->u:I

    iget v6, p0, Lcom/virsir/android/chinamobile10086/news/News;->u:I

    add-int/2addr v6, v3

    invoke-interface {v1, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget v4, p0, Lcom/virsir/android/chinamobile10086/news/News;->u:I

    add-int/2addr v4, v3

    if-eq v4, v2, :cond_59

    move v0, v7

    :goto_3c
    if-eqz v0, :cond_48

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/news/News;->k:Ljava/util/List;

    new-instance v5, Lcom/virsir/android/chinamobile10086/b/d;

    invoke-direct {v5}, Lcom/virsir/android/chinamobile10086/b/d;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    iget v4, p0, Lcom/virsir/android/chinamobile10086/news/News;->u:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/virsir/android/chinamobile10086/news/News;->u:I

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/news/News;->i:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .end local v3           #theStep:I
    :cond_52
    invoke-direct {p0, v7}, Lcom/virsir/android/chinamobile10086/news/News;->c(Z)V

    invoke-direct {p0, v0}, Lcom/virsir/android/chinamobile10086/news/News;->b(Z)V

    return-void

    .restart local v3       #theStep:I
    :cond_59
    const/4 v4, 0x0

    move v0, v4

    goto :goto_3c
.end method

.method protected e()V
    .registers 3

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->g:Lcom/virsir/android/chinamobile10086/Application;

    iget v1, p0, Lcom/virsir/android/chinamobile10086/news/News;->f:I

    invoke-virtual {v0, v1}, Lcom/virsir/android/chinamobile10086/Application;->f(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Lcom/virsir/android/chinamobile10086/BaseView;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/news/News;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/virsir/android/chinamobile10086/Application;

    iput-object v1, p0, Lcom/virsir/android/chinamobile10086/news/News;->g:Lcom/virsir/android/chinamobile10086/Application;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/virsir/android/chinamobile10086/news/News;->h:Landroid/content/SharedPreferences;

    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/virsir/android/chinamobile10086/news/News;->setContentView(I)V

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/news/News;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .local v0, b:Landroid/os/Bundle;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/virsir/android/chinamobile10086/news/News;->c:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/virsir/android/chinamobile10086/news/News;->d:Ljava/lang/String;

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/virsir/android/chinamobile10086/news/News;->e:I

    iget v1, p0, Lcom/virsir/android/chinamobile10086/news/News;->e:I

    add-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/virsir/android/chinamobile10086/news/News;->f:I

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/news/News;->g:Lcom/virsir/android/chinamobile10086/Application;

    iget v2, p0, Lcom/virsir/android/chinamobile10086/news/News;->f:I

    new-instance v3, Lcom/virsir/android/chinamobile10086/news/d;

    new-instance v4, Lcom/virsir/android/chinamobile10086/utils/b;

    invoke-direct {v4, p0}, Lcom/virsir/android/chinamobile10086/utils/b;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/news/News;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/virsir/android/chinamobile10086/news/d;-><init>(Lcom/virsir/android/chinamobile10086/utils/b;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/virsir/android/chinamobile10086/Application;->a(ILcom/virsir/android/chinamobile10086/d;)V

    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/news/News;->h()V

    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/news/News;->g()V

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/news/News;->g:Lcom/virsir/android/chinamobile10086/Application;

    iget v2, p0, Lcom/virsir/android/chinamobile10086/news/News;->f:I

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/news/News;->w:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/virsir/android/chinamobile10086/Application;->a(ILandroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/news/News;->e()V

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/news/News;->b()V

    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    invoke-super {p0}, Lcom/virsir/android/chinamobile10086/BaseView;->onDestroy()V

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News;->g:Lcom/virsir/android/chinamobile10086/Application;

    iget v1, p0, Lcom/virsir/android/chinamobile10086/news/News;->f:I

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/News;->w:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/virsir/android/chinamobile10086/Application;->b(ILandroid/os/Handler;)Z

    return-void
.end method
