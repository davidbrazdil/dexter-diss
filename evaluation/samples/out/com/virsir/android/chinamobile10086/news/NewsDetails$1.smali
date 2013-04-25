.class Lcom/virsir/android/chinamobile10086/news/NewsDetails$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virsir/android/chinamobile10086/news/NewsDetails;->onResume()V
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
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails$1;->a:Lcom/virsir/android/chinamobile10086/news/NewsDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails$1;->a:Lcom/virsir/android/chinamobile10086/news/NewsDetails;

    iget-object v0, v0, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->j:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails$1;->a:Lcom/virsir/android/chinamobile10086/news/NewsDetails;

    iget-object v0, v0, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->j:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocusFromTouch()Z

    return-void
.end method
