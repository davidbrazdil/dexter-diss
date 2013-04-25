.class Lcom/virsir/android/chinamobile10086/news/NewsBrowser$5;
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
.field final synthetic a:Lcom/virsir/android/chinamobile10086/news/NewsBrowser;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/news/NewsBrowser;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser$5;->a:Lcom/virsir/android/chinamobile10086/news/NewsBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsBrowser$5;->a:Lcom/virsir/android/chinamobile10086/news/NewsBrowser;

    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;->finish()V

    return-void
.end method
