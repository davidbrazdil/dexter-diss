.class public Lcom/virsir/android/chinamobile10086/SearchOfficesView;
.super Lcom/virsir/android/chinamobile10086/BaseView;


# instance fields
.field c:Landroid/widget/ListView;

.field d:Landroid/widget/FrameLayout;

.field e:Landroid/widget/FrameLayout;

.field f:Landroid/view/View;

.field g:Landroid/view/View;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Lcom/virsir/android/chinamobile10086/a/a;

.field k:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/virsir/android/chinamobile10086/a/c;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/lang/Runnable;

.field private m:Landroid/location/LocationManager;

.field private n:Landroid/location/LocationListener;

.field private o:Landroid/location/Location;

.field private p:Z

.field private q:Z

.field private r:J

.field private s:I

.field private t:Z

.field private u:Ljava/lang/Runnable;

.field private v:Ljava/lang/Runnable;

.field private w:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/BaseView;-><init>()V

    iput-boolean v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->p:Z

    iput-boolean v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->q:Z

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->s:I

    iput-boolean v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->t:Z

    new-instance v0, Lcom/virsir/android/chinamobile10086/k;

    invoke-direct {v0, p0}, Lcom/virsir/android/chinamobile10086/k;-><init>(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->u:Ljava/lang/Runnable;

    new-instance v0, Lcom/virsir/android/chinamobile10086/l;

    invoke-direct {v0, p0}, Lcom/virsir/android/chinamobile10086/l;-><init>(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->l:Ljava/lang/Runnable;

    new-instance v0, Lcom/virsir/android/chinamobile10086/m;

    invoke-direct {v0, p0}, Lcom/virsir/android/chinamobile10086/m;-><init>(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->v:Ljava/lang/Runnable;

    new-instance v0, Lcom/virsir/android/chinamobile10086/n;

    invoke-direct {v0, p0}, Lcom/virsir/android/chinamobile10086/n;-><init>(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->w:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/virsir/android/chinamobile10086/SearchOfficesView;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->r:J

    return-wide p1
.end method

.method static synthetic a(Lcom/virsir/android/chinamobile10086/SearchOfficesView;Landroid/location/Location;)Landroid/location/Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->o:Landroid/location/Location;

    return-object p1
.end method

.method private a(Landroid/location/Location;I)Lcom/virsir/android/chinamobile10086/a/a;
    .registers 8
    .parameter "location"
    .parameter "page"

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, map:Ljava/util/Map;
    const-string v1, "sll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sspn"

    const-string v2, "0.05, 0.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "llsep"

    const-string v2, "500, 500"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/virsir/android/chinamobile10086/a/d;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/virsir/android/chinamobile10086/a/a;

    move-result-object v1

    return-object v1
.end method

.method private a(I)V
    .registers 9
    .parameter "start"

    .prologue
    const/4 v2, 0x0

    .local v2, tried:I
    const/4 v1, 0x2

    .local v1, retryTime:I
    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->o:Landroid/location/Location;

    invoke-direct {p0, v3, p1}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->a(Landroid/location/Location;I)Lcom/virsir/android/chinamobile10086/a/a;

    move-result-object v0

    .local v0, _result:Lcom/virsir/android/chinamobile10086/a/a;
    :goto_8
    if-nez v0, :cond_1d

    if-ge v2, v1, :cond_1d

    :try_start_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v3, 0xbb8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->o:Landroid/location/Location;

    invoke-direct {p0, v3, p1}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->a(Landroid/location/Location;I)Lcom/virsir/android/chinamobile10086/a/a;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_67

    move-result-object v0

    goto :goto_8

    :cond_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->r:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2c

    :goto_2b
    return-void

    :cond_2c
    if-nez v0, :cond_34

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->v:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2b

    :cond_34
    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->j:Lcom/virsir/android/chinamobile10086/a/a;

    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/a/a;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/virsir/android/chinamobile10086/a/a;->a(I)V

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->j:Lcom/virsir/android/chinamobile10086/a/a;

    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/a/a;->e()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/virsir/android/chinamobile10086/a/a;->a(Ljava/util/List;)V

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->j:Lcom/virsir/android/chinamobile10086/a/a;

    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/a/a;->c()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/virsir/android/chinamobile10086/a/a;->a(Z)V

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->j:Lcom/virsir/android/chinamobile10086/a/a;

    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/a/a;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/virsir/android/chinamobile10086/a/a;->c(I)V

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->j:Lcom/virsir/android/chinamobile10086/a/a;

    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/a/a;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/virsir/android/chinamobile10086/a/a;->b(I)V

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->w:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2b

    :catch_67
    move-exception v3

    goto :goto_8
.end method

.method private a(Landroid/location/Location;)V
    .registers 5
    .parameter "location"

    .prologue
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->o:Landroid/location/Location;

    if-nez p1, :cond_2c

    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->f:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->i:Landroid/widget/TextView;

    const v2, 0x7f070005

    invoke-virtual {p0, v2}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2b
    return-void

    :cond_2c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->q:Z

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->h:Landroid/widget/TextView;

    const v2, 0x7f070002

    invoke-virtual {p0, v2}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->u:Ljava/lang/Runnable;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->r:J

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2b
.end method

.method static synthetic a(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)V
    .registers 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/virsir/android/chinamobile10086/SearchOfficesView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/virsir/android/chinamobile10086/SearchOfficesView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)I
    .registers 2
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->s:I

    return v0
.end method

.method static synthetic b(Lcom/virsir/android/chinamobile10086/SearchOfficesView;Landroid/location/Location;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->a(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic c(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)J
    .registers 3
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->r:J

    return-wide v0
.end method

.method private d()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->r:J

    iput-boolean v3, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->t:Z

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->k:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->j:Lcom/virsir/android/chinamobile10086/a/a;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/virsir/android/chinamobile10086/a/a;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->j:Lcom/virsir/android/chinamobile10086/a/a;

    invoke-virtual {v1, v3}, Lcom/virsir/android/chinamobile10086/a/a;->a(Z)V

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->j:Lcom/virsir/android/chinamobile10086/a/a;

    invoke-virtual {v1, v3}, Lcom/virsir/android/chinamobile10086/a/a;->a(I)V

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->k:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->f:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->g:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->q:Z

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->h:Landroid/widget/TextView;

    const v2, 0x7f070002

    invoke-virtual {p0, v2}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->u:Ljava/lang/Runnable;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->r:J

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .end local v0           #t:Ljava/lang/Thread;
    :goto_5d
    return-void

    :cond_5e
    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->h:Landroid/widget/TextView;

    const v2, 0x7f070004

    invoke-virtual {p0, v2}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->g()V

    goto :goto_5d
.end method

.method static synthetic d(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)V
    .registers 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->i()V

    return-void
.end method

.method static synthetic e(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)Landroid/location/LocationManager;
    .registers 2
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->m:Landroid/location/LocationManager;

    return-object v0
.end method

.method private e()V
    .registers 4

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->c:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    new-instance v0, Lcom/virsir/android/chinamobile10086/a/a;

    invoke-direct {v0}, Lcom/virsir/android/chinamobile10086/a/a;-><init>()V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->j:Lcom/virsir/android/chinamobile10086/a/a;

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->j:Lcom/virsir/android/chinamobile10086/a/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/virsir/android/chinamobile10086/a/a;->a(Ljava/util/List;)V

    new-instance v0, Lcom/virsir/android/chinamobile10086/a/b;

    const v1, 0x7f03000e

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->j:Lcom/virsir/android/chinamobile10086/a/a;

    invoke-virtual {v2}, Lcom/virsir/android/chinamobile10086/a/a;->e()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/virsir/android/chinamobile10086/a/b;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->k:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->k:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/virsir/android/chinamobile10086/SearchOfficesView$2;

    invoke-direct {v1, p0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView$2;-><init>(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->k:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic f(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)Landroid/location/Location;
    .registers 2
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->o:Landroid/location/Location;

    return-object v0
.end method

.method private f()V
    .registers 3

    .prologue
    const v0, 0x7f05001f

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->c:Landroid/widget/ListView;

    const v0, 0x7f050016

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->d:Landroid/widget/FrameLayout;

    const v0, 0x7f050032

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->e:Landroid/widget/FrameLayout;

    const v0, 0x7f050033

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->f:Landroid/view/View;

    const v0, 0x7f050035

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->g:Landroid/view/View;

    const v0, 0x7f050034

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->h:Landroid/widget/TextView;

    const v0, 0x7f050036

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->g:Landroid/view/View;

    new-instance v1, Lcom/virsir/android/chinamobile10086/SearchOfficesView$3;

    invoke-direct {v1, p0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView$3;-><init>(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private g()V
    .registers 10

    .prologue
    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->r:J

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->m:Landroid/location/LocationManager;

    new-instance v8, Landroid/location/Criteria;

    invoke-direct {v8}, Landroid/location/Criteria;-><init>()V

    .local v8, fine:Landroid/location/Criteria;
    invoke-virtual {v8, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    .local v7, coarse:Landroid/location/Criteria;
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    :try_start_20
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->m:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v8, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v6

    .local v6, bestProvider:Ljava/lang/String;
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->m:Landroid/location/LocationManager;

    invoke-virtual {v0, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->o:Landroid/location/Location;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2f} :catch_6e

    .end local v6           #bestProvider:Ljava/lang/String;
    :goto_2f
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->h:Landroid/widget/TextView;

    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->n:Landroid/location/LocationListener;

    if-nez v0, :cond_6b

    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->j()V

    :try_start_4f
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->m:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->n:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->m:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->m:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v7, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    const/high16 v4, 0x447a

    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->n:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_68} :catch_6c

    :goto_68
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->h()V

    :cond_6b
    return-void

    :catch_6c
    move-exception v0

    goto :goto_68

    :catch_6e
    move-exception v0

    goto :goto_2f
.end method

.method static synthetic g(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->t:Z

    return v0
.end method

.method private h()V
    .registers 4

    .prologue
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->l:Ljava/lang/Runnable;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->r:J

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private i()V
    .registers 3

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->n:Landroid/location/LocationListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->m:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->n:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_b
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->o:Landroid/location/Location;

    invoke-direct {p0, v0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->a(Landroid/location/Location;)V

    return-void
.end method

.method private j()V
    .registers 2

    .prologue
    new-instance v0, Lcom/virsir/android/chinamobile10086/SearchOfficesView$4;

    invoke-direct {v0, p0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView$4;-><init>(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->n:Landroid/location/LocationListener;

    return-void
.end method


# virtual methods
.method public c()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->t:Z

    new-instance v0, Lcom/virsir/android/chinamobile10086/SearchOfficesView$5;

    invoke-direct {v0, p0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView$5;-><init>(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)V

    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->r:J

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Lcom/virsir/android/chinamobile10086/BaseView;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f030010

    invoke-virtual {p0, v1}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->setContentView(I)V

    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->f()V

    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->e()V

    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->g()V

    const v1, 0x7f050013

    invoke-virtual {p0, v1}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, menuButtonWrapper:Landroid/view/View;
    if-eqz v0, :cond_23

    new-instance v1, Lcom/virsir/android/chinamobile10086/SearchOfficesView$1;

    invoke-direct {v1, p0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView$1;-><init>(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_23
    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->b()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x2

    const v1, 0x7f07000f

    invoke-virtual {p0, v1}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    const/4 v0, 0x0

    :goto_8
    return v0

    :pswitch_9
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->d()V

    const/4 v0, 0x1

    goto :goto_8

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_9
    .end packed-switch
.end method

.method protected onStop()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->r:J

    invoke-super {p0}, Lcom/virsir/android/chinamobile10086/BaseView;->onStop()V

    return-void
.end method
