.class Lcom/virsir/android/chinamobile10086/news/News$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/news/News$1;->a:Lcom/virsir/android/chinamobile10086/news/News;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "arg0"
    .parameter "v"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/news/News$1;->a:Lcom/virsir/android/chinamobile10086/news/News;

    iget-object p0, v0, Lcom/virsir/android/chinamobile10086/news/News;->i:Landroid/widget/ArrayAdapter;

    .end local p0
    check-cast p0, Lcom/virsir/android/chinamobile10086/news/b;

    invoke-virtual {p0, p3, p2}, Lcom/virsir/android/chinamobile10086/news/b;->a(ILandroid/view/View;)V

    return-void
.end method
