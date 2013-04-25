.class Lcom/virsir/android/chinamobile10086/SearchOfficesView$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virsir/android/chinamobile10086/SearchOfficesView;->c()V
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
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView$5;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView$5;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView$5;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    iget-object v1, v1, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->j:Lcom/virsir/android/chinamobile10086/a/a;

    invoke-virtual {v1}, Lcom/virsir/android/chinamobile10086/a/a;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->a(Lcom/virsir/android/chinamobile10086/SearchOfficesView;I)V

    return-void
.end method
