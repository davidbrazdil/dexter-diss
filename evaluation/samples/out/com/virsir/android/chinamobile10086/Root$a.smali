.class Lcom/virsir/android/chinamobile10086/Root$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/virsir/android/chinamobile10086/Root;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/virsir/android/chinamobile10086/Root;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/Root;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/Root$a;->a:Lcom/virsir/android/chinamobile10086/Root;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 6
    .parameter "paramString"

    .prologue
    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/Root$a;->a:Lcom/virsir/android/chinamobile10086/Root;

    iget v0, v2, Lcom/virsir/android/chinamobile10086/Root;->a:I

    .local v0, i:I
    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/Root$a;->a:Lcom/virsir/android/chinamobile10086/Root;

    invoke-virtual {v2, p1}, Lcom/virsir/android/chinamobile10086/Root;->a(Ljava/lang/String;)I

    move-result v1

    .local v1, j:I
    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/Root$a;->a:Lcom/virsir/android/chinamobile10086/Root;

    invoke-static {v2, v1}, Lcom/virsir/android/chinamobile10086/Root;->a(Lcom/virsir/android/chinamobile10086/Root;I)V

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/Root$a;->a:Lcom/virsir/android/chinamobile10086/Root;

    invoke-static {v2, v0}, Lcom/virsir/android/chinamobile10086/Root;->a(Lcom/virsir/android/chinamobile10086/Root;I)V

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/Root$a;->a:Lcom/virsir/android/chinamobile10086/Root;

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/Root$a;->a:Lcom/virsir/android/chinamobile10086/Root;

    invoke-static {v3}, Lcom/virsir/android/chinamobile10086/Root;->a(Lcom/virsir/android/chinamobile10086/Root;)Lcom/virsir/android/chinamobile10086/CustomTabHost;

    move-result-object v3

    invoke-virtual {v3}, Lcom/virsir/android/chinamobile10086/CustomTabHost;->getCurrentTab()I

    move-result v3

    iput v3, v2, Lcom/virsir/android/chinamobile10086/Root;->a:I

    return-void
.end method
