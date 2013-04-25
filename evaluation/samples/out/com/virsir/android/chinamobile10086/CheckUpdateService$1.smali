.class Lcom/virsir/android/chinamobile10086/CheckUpdateService$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virsir/android/chinamobile10086/CheckUpdateService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/virsir/android/chinamobile10086/CheckUpdateService;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/CheckUpdateService;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService$1;->a:Lcom/virsir/android/chinamobile10086/CheckUpdateService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService$1;->a:Lcom/virsir/android/chinamobile10086/CheckUpdateService;

    invoke-static {v0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->b(Lcom/virsir/android/chinamobile10086/CheckUpdateService;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService$1;->a:Lcom/virsir/android/chinamobile10086/CheckUpdateService;

    invoke-static {v0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->c(Lcom/virsir/android/chinamobile10086/CheckUpdateService;)V

    :cond_d
    return-void
.end method
