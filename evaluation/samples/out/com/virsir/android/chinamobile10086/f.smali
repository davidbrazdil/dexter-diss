.class Lcom/virsir/android/chinamobile10086/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/virsir/android/chinamobile10086/MainView;
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
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/f;->a:Lcom/virsir/android/chinamobile10086/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/f;->a:Lcom/virsir/android/chinamobile10086/MainView;

    iget-object v2, v2, Lcom/virsir/android/chinamobile10086/MainView;->q:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .local v1, index:I
    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/f;->a:Lcom/virsir/android/chinamobile10086/MainView;

    iget-object v2, v2, Lcom/virsir/android/chinamobile10086/MainView;->r:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/virsir/android/chinamobile10086/b/a;

    .local v0, ai:Lcom/virsir/android/chinamobile10086/b/a;
    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/f;->a:Lcom/virsir/android/chinamobile10086/MainView;

    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/b/a;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/virsir/android/chinamobile10086/MainView;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/f;->a:Lcom/virsir/android/chinamobile10086/MainView;

    const-string v3, "area"

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/f;->a:Lcom/virsir/android/chinamobile10086/MainView;

    iget-object v4, v4, Lcom/virsir/android/chinamobile10086/MainView;->k:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/virsir/android/chinamobile10086/MainView;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/f;->a:Lcom/virsir/android/chinamobile10086/MainView;

    iget-object v2, v2, Lcom/virsir/android/chinamobile10086/MainView;->e:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/f;->a:Lcom/virsir/android/chinamobile10086/MainView;

    invoke-static {v2}, Lcom/virsir/android/chinamobile10086/MainView;->b(Lcom/virsir/android/chinamobile10086/MainView;)V

    return-void
.end method
