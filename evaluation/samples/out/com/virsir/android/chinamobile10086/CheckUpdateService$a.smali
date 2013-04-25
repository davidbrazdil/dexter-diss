.class Lcom/virsir/android/chinamobile10086/CheckUpdateService$a;
.super Landroid/os/HandlerThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/virsir/android/chinamobile10086/CheckUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/virsir/android/chinamobile10086/CheckUpdateService;


# direct methods
.method public constructor <init>(Lcom/virsir/android/chinamobile10086/CheckUpdateService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "name"

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService$a;->a:Lcom/virsir/android/chinamobile10086/CheckUpdateService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService$a;->a:Lcom/virsir/android/chinamobile10086/CheckUpdateService;

    new-instance v2, Lcom/virsir/android/chinamobile10086/CheckUpdateService$a$1;

    invoke-direct {v2, p0, v0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService$a$1;-><init>(Lcom/virsir/android/chinamobile10086/CheckUpdateService$a;Landroid/os/Looper;)V

    invoke-static {v1, v2}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->a(Lcom/virsir/android/chinamobile10086/CheckUpdateService;Landroid/os/Handler;)Landroid/os/Handler;

    return-void
.end method
