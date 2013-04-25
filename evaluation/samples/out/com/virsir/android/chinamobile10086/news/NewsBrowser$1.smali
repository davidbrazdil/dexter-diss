.class Lcom/virsir/android/chinamobile10086/news/NewsBrowser$1;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/virsir/android/chinamobile10086/news/NewsBrowser;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/news/NewsBrowser;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser$1;->a:Lcom/virsir/android/chinamobile10086/news/NewsBrowser;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4
    .parameter "view"
    .parameter "progress"

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser$1;->a:Lcom/virsir/android/chinamobile10086/news/NewsBrowser;

    iget-object v0, v0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
