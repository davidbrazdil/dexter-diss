.class Lcom/virsir/android/chinamobile10086/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/virsir/android/chinamobile10086/MainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/virsir/android/chinamobile10086/MainView;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/MainView;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/j;->a:Lcom/virsir/android/chinamobile10086/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://search?q=pub:virsir.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/j;->a:Lcom/virsir/android/chinamobile10086/MainView;

    invoke-virtual {v2, v1}, Lcom/virsir/android/chinamobile10086/MainView;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .end local v1           #intent:Landroid/content/Intent;
    :goto_12
    return-void

    :catch_13
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/j;->a:Lcom/virsir/android/chinamobile10086/MainView;

    const-string v3, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u7684\u8f6f\u4ef6\u4e0d\u652f\u6301\u7535\u5b50\u5e02\u573a"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_12
.end method
