.class Lcom/virsir/android/chinamobile10086/news/NewsDetails$3;
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
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails$3;->a:Lcom/virsir/android/chinamobile10086/news/NewsDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/NewsDetails$3;->a:Lcom/virsir/android/chinamobile10086/news/NewsDetails;

    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/news/NewsDetails;->finish()V

    return-void
.end method
