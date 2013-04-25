.class Lcom/virsir/android/chinamobile10086/k;
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
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/k;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/k;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->a(Lcom/virsir/android/chinamobile10086/SearchOfficesView;I)V

    return-void
.end method
