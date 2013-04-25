.class Lcom/virsir/android/chinamobile10086/PromotionView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virsir/android/chinamobile10086/PromotionView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/virsir/android/chinamobile10086/PromotionView;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/PromotionView;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/PromotionView$1;->a:Lcom/virsir/android/chinamobile10086/PromotionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/virsir/android/chinamobile10086/PromotionView;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/PromotionView$1;->a:Lcom/virsir/android/chinamobile10086/PromotionView;

    invoke-virtual {v1, v0}, Lcom/virsir/android/chinamobile10086/PromotionView;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .end local v0           #intent:Landroid/content/Intent;
    :goto_12
    return-void

    :catch_13
    move-exception v1

    goto :goto_12
.end method
