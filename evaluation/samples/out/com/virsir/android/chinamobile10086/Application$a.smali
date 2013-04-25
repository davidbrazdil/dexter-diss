.class Lcom/virsir/android/chinamobile10086/Application$a;
.super Landroid/os/HandlerThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/virsir/android/chinamobile10086/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/virsir/android/chinamobile10086/Application;


# direct methods
.method public constructor <init>(Lcom/virsir/android/chinamobile10086/Application;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "name"

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/Application$a;->a:Lcom/virsir/android/chinamobile10086/Application;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/Application$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/Application$a;->a:Lcom/virsir/android/chinamobile10086/Application;

    new-instance v2, Lcom/virsir/android/chinamobile10086/Application$a$1;

    invoke-direct {v2, p0, v0}, Lcom/virsir/android/chinamobile10086/Application$a$1;-><init>(Lcom/virsir/android/chinamobile10086/Application$a;Landroid/os/Looper;)V

    iput-object v2, v1, Lcom/virsir/android/chinamobile10086/Application;->a:Landroid/os/Handler;

    return-void
.end method
