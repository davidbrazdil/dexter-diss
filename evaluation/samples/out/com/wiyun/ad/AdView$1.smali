.class Lcom/wiyun/ad/AdView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wiyun/ad/AdView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wiyun/ad/AdView;

.field private final synthetic b:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/wiyun/ad/AdView;Landroid/widget/LinearLayout;)V
    .registers 3

    iput-object p1, p0, Lcom/wiyun/ad/AdView$1;->a:Lcom/wiyun/ad/AdView;

    iput-object p2, p0, Lcom/wiyun/ad/AdView$1;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/wiyun/ad/AdView$1;)Lcom/wiyun/ad/AdView;
    .registers 2

    iget-object v0, p0, Lcom/wiyun/ad/AdView$1;->a:Lcom/wiyun/ad/AdView;

    return-object v0
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5

    if-eqz p2, :cond_b

    new-instance v0, Lcom/wiyun/ad/AdView$1$1;

    invoke-direct {v0, p0, p1}, Lcom/wiyun/ad/AdView$1$1;-><init>(Lcom/wiyun/ad/AdView$1;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a
    :goto_a
    return-void

    :cond_b
    new-instance v0, Lcom/wiyun/ad/AdView$1$2;

    invoke-direct {v0, p0, p1}, Lcom/wiyun/ad/AdView$1$2;-><init>(Lcom/wiyun/ad/AdView$1;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/wiyun/ad/AdView$1;->a:Lcom/wiyun/ad/AdView;

    iget-object v1, p0, Lcom/wiyun/ad/AdView$1;->b:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/wiyun/ad/AdView;->a(Lcom/wiyun/ad/AdView;Landroid/widget/LinearLayout;)V

    goto :goto_a
.end method
