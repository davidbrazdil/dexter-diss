.class Lcom/virsir/android/chinamobile10086/news/News$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virsir/android/chinamobile10086/news/News;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/virsir/android/chinamobile10086/news/News;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/news/News;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/news/News$2;->a:Lcom/virsir/android/chinamobile10086/news/News;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News$2;->a:Lcom/virsir/android/chinamobile10086/news/News;

    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/news/News;->c()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News$2;->a:Lcom/virsir/android/chinamobile10086/news/News;

    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/news/News;->e()V

    :cond_d
    return-void
.end method
