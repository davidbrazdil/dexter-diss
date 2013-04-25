.class Lcom/virsir/android/chinamobile10086/SearchOfficesView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virsir/android/chinamobile10086/SearchOfficesView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView$2;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "a"
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
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView$2;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object p0, v0, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->k:Landroid/widget/ArrayAdapter;

    .end local p0
    check-cast p0, Lcom/virsir/android/chinamobile10086/a/b;

    invoke-virtual {p0, p3, p2}, Lcom/virsir/android/chinamobile10086/a/b;->a(ILandroid/view/View;)V

    return-void
.end method
