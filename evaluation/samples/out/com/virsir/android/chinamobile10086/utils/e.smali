.class public Lcom/virsir/android/chinamobile10086/utils/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "MZMKE5EC2C564DQJ1D2A"

    sput-object v0, Lcom/virsir/android/chinamobile10086/utils/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;I)V
    .registers 6
    .parameter "activity"
    .parameter "adViewId"

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_12

    :try_start_6
    move-object v0, v2

    check-cast v0, Lcom/wiyun/ad/AdView;

    move-object v1, v0

    .local v1, adView:Lcom/wiyun/ad/AdView;
    new-instance v3, Lcom/virsir/android/chinamobile10086/utils/e$1;

    invoke-direct {v3}, Lcom/virsir/android/chinamobile10086/utils/e$1;-><init>()V

    invoke-virtual {v1, v3}, Lcom/wiyun/ad/AdView;->setListener(Lcom/wiyun/ad/AdView$AdListener;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_13

    .end local v1           #adView:Lcom/wiyun/ad/AdView;
    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v3

    goto :goto_12
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/virsir/android/chinamobile10086/utils/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .local v0, name:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityCreate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 2
    .parameter "context"
    .parameter "adViewId"

    .prologue
    if-eqz p1, :cond_7

    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-static {p0, p1}, Lcom/virsir/android/chinamobile10086/utils/e;->a(Landroid/app/Activity;I)V

    :cond_7
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    sget-object v1, Lcom/virsir/android/chinamobile10086/utils/e;->a:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->onPageView()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/virsir/android/chinamobile10086/utils/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .local v0, name:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/virsir/android/chinamobile10086/utils/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .local v0, name:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityStop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
