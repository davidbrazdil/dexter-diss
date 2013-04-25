.class Lcom/virsir/android/chinamobile10086/news/NewsDetails$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virsir/android/chinamobile10086/news/NewsDetails;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/virsir/android/chinamobile10086/news/NewsDetails;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/news/NewsDetails;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails$2;->a:Lcom/virsir/android/chinamobile10086/news/NewsDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails$2;->a:Lcom/virsir/android/chinamobile10086/news/NewsDetails;

    const-class v3, Lcom/virsir/android/chinamobile10086/news/NewsBrowser;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, b:Landroid/os/Bundle;
    const-string v2, "url"

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails$2;->a:Lcom/virsir/android/chinamobile10086/news/NewsDetails;

    iget-object v3, v3, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails$2;->a:Lcom/virsir/android/chinamobile10086/news/NewsDetails;

    invoke-virtual {v2, v1}, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
