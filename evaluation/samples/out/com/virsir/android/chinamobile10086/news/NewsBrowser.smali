.class public Lcom/virsir/android/chinamobile10086/news/NewsBrowser;
.super Lcom/virsir/android/chinamobile10086/BaseView;


# instance fields
.field c:Landroid/widget/ProgressBar;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/Button;

.field f:Landroid/widget/Button;

.field g:Landroid/widget/Button;

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/BaseView;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "url2"

    .prologue
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://gate.baidu.com/tc?src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    move-result-object v1

    :goto_19
    return-object v1

    :catch_1a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/Exception;
    move-object v1, p1

    goto :goto_19
.end method


# virtual methods
.method protected a()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Lcom/virsir/android/chinamobile10086/BaseView;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->h:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->h:Ljava/lang/String;

    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->setContentView(I)V

    const v2, 0x7f050022

    invoke-virtual {p0, v2}, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->e:Landroid/widget/Button;

    const v2, 0x7f050023

    invoke-virtual {p0, v2}, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->f:Landroid/widget/Button;

    const v2, 0x7f050024

    invoke-virtual {p0, v2}, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->g:Landroid/widget/Button;

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v4, 0x7f07

    invoke-virtual {p0, v4}, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u65b0\u95fb\u9875\u9762"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f050026

    invoke-virtual {p0, v2}, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .local v1, webView:Landroid/webkit/WebView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const v2, 0x7f050021

    invoke-virtual {p0, v2}, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->c:Landroid/widget/ProgressBar;

    new-instance v2, Lcom/virsir/android/chinamobile10086/news/NewsBrowser$1;

    invoke-direct {v2, p0}, Lcom/virsir/android/chinamobile10086/news/NewsBrowser$1;-><init>(Lcom/virsir/android/chinamobile10086/news/NewsBrowser;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v2, Lcom/virsir/android/chinamobile10086/news/NewsBrowser$2;

    invoke-direct {v2, p0}, Lcom/virsir/android/chinamobile10086/news/NewsBrowser$2;-><init>(Lcom/virsir/android/chinamobile10086/news/NewsBrowser;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->e:Landroid/widget/Button;

    new-instance v3, Lcom/virsir/android/chinamobile10086/news/NewsBrowser$3;

    invoke-direct {v3, p0, v1}, Lcom/virsir/android/chinamobile10086/news/NewsBrowser$3;-><init>(Lcom/virsir/android/chinamobile10086/news/NewsBrowser;Landroid/webkit/WebView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->f:Landroid/widget/Button;

    new-instance v3, Lcom/virsir/android/chinamobile10086/news/NewsBrowser$4;

    invoke-direct {v3, p0, v1}, Lcom/virsir/android/chinamobile10086/news/NewsBrowser$4;-><init>(Lcom/virsir/android/chinamobile10086/news/NewsBrowser;Landroid/webkit/WebView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->g:Landroid/widget/Button;

    new-instance v3, Lcom/virsir/android/chinamobile10086/news/NewsBrowser$5;

    invoke-direct {v3, p0}, Lcom/virsir/android/chinamobile10086/news/NewsBrowser$5;-><init>(Lcom/virsir/android/chinamobile10086/news/NewsBrowser;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->b()V

    return-void
.end method
