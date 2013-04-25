.class Lcom/virsir/android/chinamobile10086/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virsir/android/chinamobile10086/l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/virsir/android/chinamobile10086/l;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/l;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/l$1;->a:Lcom/virsir/android/chinamobile10086/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/l$1;->a:Lcom/virsir/android/chinamobile10086/l;

    iget-object v0, v0, Lcom/virsir/android/chinamobile10086/l;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    invoke-static {v0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->d(Lcom/virsir/android/chinamobile10086/SearchOfficesView;)V

    return-void
.end method
