.class Lcom/virsir/android/chinamobile10086/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/e;->a:Lcom/virsir/android/chinamobile10086/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/e;->a:Lcom/virsir/android/chinamobile10086/MainView;

    invoke-static {v0}, Lcom/virsir/android/chinamobile10086/MainView;->a(Lcom/virsir/android/chinamobile10086/MainView;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_25

    :goto_5
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/e;->a:Lcom/virsir/android/chinamobile10086/MainView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/virsir/android/chinamobile10086/MainView;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/e;->a:Lcom/virsir/android/chinamobile10086/MainView;

    iget-object v0, v0, Lcom/virsir/android/chinamobile10086/MainView;->k:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/e;->a:Lcom/virsir/android/chinamobile10086/MainView;

    invoke-static {v0}, Lcom/virsir/android/chinamobile10086/MainView;->b(Lcom/virsir/android/chinamobile10086/MainView;)V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/e;->a:Lcom/virsir/android/chinamobile10086/MainView;

    new-instance v1, Lcom/virsir/android/chinamobile10086/e$1;

    invoke-direct {v1, p0}, Lcom/virsir/android/chinamobile10086/e$1;-><init>(Lcom/virsir/android/chinamobile10086/e;)V

    invoke-virtual {v0, v1}, Lcom/virsir/android/chinamobile10086/MainView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_19

    :catch_25
    move-exception v0

    goto :goto_5
.end method
