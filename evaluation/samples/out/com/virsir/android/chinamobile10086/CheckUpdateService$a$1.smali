.class Lcom/virsir/android/chinamobile10086/CheckUpdateService$a$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virsir/android/chinamobile10086/CheckUpdateService$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/virsir/android/chinamobile10086/CheckUpdateService$a;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/CheckUpdateService$a;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService$a$1;->a:Lcom/virsir/android/chinamobile10086/CheckUpdateService$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService$a$1;->a:Lcom/virsir/android/chinamobile10086/CheckUpdateService$a;

    iget-object v0, v0, Lcom/virsir/android/chinamobile10086/CheckUpdateService$a;->a:Lcom/virsir/android/chinamobile10086/CheckUpdateService;

    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->a()V

    return-void
.end method
