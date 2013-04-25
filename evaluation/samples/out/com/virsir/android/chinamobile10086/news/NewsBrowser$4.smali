.class Lcom/virsir/android/chinamobile10086/news/NewsBrowser$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/virsir/android/chinamobile10086/news/NewsBrowser;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/news/NewsBrowser;Landroid/webkit/WebView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser$4;->b:Lcom/virsir/android/chinamobile10086/news/NewsBrowser;

    iput-object p2, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser$4;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser$4;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser$4;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser$4;->b:Lcom/virsir/android/chinamobile10086/news/NewsBrowser;

    iget-object v1, v1, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
