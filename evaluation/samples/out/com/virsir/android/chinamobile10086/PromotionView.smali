.class public Lcom/virsir/android/chinamobile10086/PromotionView;
.super Lcom/virsir/android/chinamobile10086/BaseView;


# static fields
.field static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "http://apps.virsir.com/10010.html"

    sput-object v0, Lcom/virsir/android/chinamobile10086/PromotionView;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/BaseView;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Lcom/virsir/android/chinamobile10086/BaseView;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f03000f

    invoke-virtual {p0, v1}, Lcom/virsir/android/chinamobile10086/PromotionView;->setContentView(I)V

    const v1, 0x7f050031

    invoke-virtual {p0, v1}, Lcom/virsir/android/chinamobile10086/PromotionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .local v0, button:Landroid/widget/Button;
    const-string v1, "\u6211\u8981\u4e0b\u8f7d \u8054\u901a10010\u67e5\u8be2 !"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/virsir/android/chinamobile10086/PromotionView$1;

    invoke-direct {v1, p0}, Lcom/virsir/android/chinamobile10086/PromotionView$1;-><init>(Lcom/virsir/android/chinamobile10086/PromotionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/PromotionView;->b()V

    return-void
.end method
