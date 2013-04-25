.class Lcom/virsir/android/chinamobile10086/MainView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virsir/android/chinamobile10086/MainView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/virsir/android/chinamobile10086/MainView;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/MainView;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/MainView$2;->a:Lcom/virsir/android/chinamobile10086/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"
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
    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/MainView$2;->a:Lcom/virsir/android/chinamobile10086/MainView;

    iget-object v1, v1, Lcom/virsir/android/chinamobile10086/MainView;->f:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/virsir/android/chinamobile10086/b/b;

    .local v0, item:Lcom/virsir/android/chinamobile10086/b/b;
    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/MainView$2;->a:Lcom/virsir/android/chinamobile10086/MainView;

    const-string v2, "10086"

    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/b/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/virsir/android/chinamobile10086/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method
