.class Lcom/virsir/android/chinamobile10086/SearchOfficesView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virsir/android/chinamobile10086/SearchOfficesView;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView$1;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/SearchOfficesView$1;->a:Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->openOptionsMenu()V

    return-void
.end method
