.class Lcom/virsir/android/chinamobile10086/MainView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virsir/android/chinamobile10086/MainView;->h()V
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
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/MainView$3;->a:Lcom/virsir/android/chinamobile10086/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/MainView$3;->a:Lcom/virsir/android/chinamobile10086/MainView;

    iget-object v0, v0, Lcom/virsir/android/chinamobile10086/MainView;->h:Landroid/widget/ListView;

    new-instance v1, Lcom/virsir/android/chinamobile10086/c;

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/MainView$3;->a:Lcom/virsir/android/chinamobile10086/MainView;

    const v3, 0x7f030005

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/MainView$3;->a:Lcom/virsir/android/chinamobile10086/MainView;

    iget-object v4, v4, Lcom/virsir/android/chinamobile10086/MainView;->f:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Lcom/virsir/android/chinamobile10086/c;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
