.class Lcom/virsir/android/chinamobile10086/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/virsir/android/chinamobile10086/SearchOfficesView;
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
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/l;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/l;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    invoke-static {v0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->b(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_27

    :goto_a
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/l;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    invoke-static {v0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->c(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/l;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    new-instance v1, Lcom/virsir/android/chinamobile10086/l$1;

    invoke-direct {v1, p0}, Lcom/virsir/android/chinamobile10086/l$1;-><init>(Lcom/virsir/android/chinamobile10086/l;)V

    invoke-virtual {v0, v1}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_26
    return-void

    :catch_27
    move-exception v0

    goto :goto_a
.end method
