.class Lcom/virsir/android/chinamobile10086/Application$a$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virsir/android/chinamobile10086/Application$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/virsir/android/chinamobile10086/Application$a;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/Application$a;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/Application$a$1;->a:Lcom/virsir/android/chinamobile10086/Application$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, type:I
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/virsir/android/chinamobile10086/Application$a$1$1;

    invoke-direct {v2, p0, v0}, Lcom/virsir/android/chinamobile10086/Application$a$1$1;-><init>(Lcom/virsir/android/chinamobile10086/Application$a$1;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
