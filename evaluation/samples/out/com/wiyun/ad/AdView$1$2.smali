.class Lcom/wiyun/ad/AdView$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wiyun/ad/AdView$1;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wiyun/ad/AdView$1;

.field private final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/wiyun/ad/AdView$1;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/wiyun/ad/AdView$1$2;->a:Lcom/wiyun/ad/AdView$1;

    iput-object p2, p0, Lcom/wiyun/ad/AdView$1$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/wiyun/ad/AdView$1$2;->a:Lcom/wiyun/ad/AdView$1;

    invoke-static {v0}, Lcom/wiyun/ad/AdView$1;->a(Lcom/wiyun/ad/AdView$1;)Lcom/wiyun/ad/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wiyun/ad/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/wiyun/ad/AdView$1$2;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
