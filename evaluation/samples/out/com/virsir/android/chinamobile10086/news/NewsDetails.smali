.class public Lcom/virsir/android/chinamobile10086/news/NewsDetails;
.super Lcom/virsir/android/chinamobile10086/BaseView;


# instance fields
.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Landroid/widget/Button;

.field k:Landroid/widget/Button;

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/BaseView;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->l:Landroid/os/Handler;

    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    const v0, 0x7f050019

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->c:Landroid/widget/TextView;

    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v2, 0x7f07

    invoke-virtual {p0, v2}, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u65b0\u95fb\u8be6\u7ec6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->e:Landroid/widget/TextView;

    const v0, 0x7f050028

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->f:Landroid/widget/TextView;

    const v0, 0x7f050027

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->j:Landroid/widget/Button;

    const v0, 0x7f050024

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->j:Landroid/widget/Button;

    new-instance v1, Lcom/virsir/android/chinamobile10086/news/NewsDetails$2;

    invoke-direct {v1, p0}, Lcom/virsir/android/chinamobile10086/news/NewsDetails$2;-><init>(Lcom/virsir/android/chinamobile10086/news/NewsDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->k:Landroid/widget/Button;

    new-instance v1, Lcom/virsir/android/chinamobile10086/news/NewsDetails$3;

    invoke-direct {v1, p0}, Lcom/virsir/android/chinamobile10086/news/NewsDetails$3;-><init>(Lcom/virsir/android/chinamobile10086/news/NewsDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Lcom/virsir/android/chinamobile10086/BaseView;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->setContentView(I)V

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->g:Ljava/lang/String;

    const-string v1, "desc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->h:Ljava/lang/String;

    const-string v1, "link"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->i:Ljava/lang/String;

    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->c()V

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->b()V

    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    invoke-super {p0}, Lcom/virsir/android/chinamobile10086/BaseView;->onResume()V

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->l:Landroid/os/Handler;

    new-instance v1, Lcom/virsir/android/chinamobile10086/news/NewsDetails$1;

    invoke-direct {v1, p0}, Lcom/virsir/android/chinamobile10086/news/NewsDetails$1;-><init>(Lcom/virsir/android/chinamobile10086/news/NewsDetails;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
