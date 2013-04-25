.class Lcom/virsir/android/chinamobile10086/Application$a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virsir/android/chinamobile10086/Application$a$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/virsir/android/chinamobile10086/Application$a$1;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/Application$a$1;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/Application$a$1$1;->b:Lcom/virsir/android/chinamobile10086/Application$a$1;

    iput p2, p0, Lcom/virsir/android/chinamobile10086/Application$a$1$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/Application$a$1$1;->b:Lcom/virsir/android/chinamobile10086/Application$a$1;

    iget-object v1, v1, Lcom/virsir/android/chinamobile10086/Application$a$1;->a:Lcom/virsir/android/chinamobile10086/Application$a;

    iget-object v1, v1, Lcom/virsir/android/chinamobile10086/Application$a;->a:Lcom/virsir/android/chinamobile10086/Application;

    iget-object v1, v1, Lcom/virsir/android/chinamobile10086/Application;->e:Ljava/util/Map;

    iget v2, p0, Lcom/virsir/android/chinamobile10086/Application$a$1$1;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, status:Ljava/lang/Object;
    if-eqz v0, :cond_1c

    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #status:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_27

    :cond_1c
    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/Application$a$1$1;->b:Lcom/virsir/android/chinamobile10086/Application$a$1;

    iget-object v1, v1, Lcom/virsir/android/chinamobile10086/Application$a$1;->a:Lcom/virsir/android/chinamobile10086/Application$a;

    iget-object v1, v1, Lcom/virsir/android/chinamobile10086/Application$a;->a:Lcom/virsir/android/chinamobile10086/Application;

    iget v2, p0, Lcom/virsir/android/chinamobile10086/Application$a$1$1;->a:I

    invoke-virtual {v1, v2}, Lcom/virsir/android/chinamobile10086/Application;->d(I)V

    :cond_27
    return-void
.end method
