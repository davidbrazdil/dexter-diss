.class Lcom/virsir/android/chinamobile10086/b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/virsir/android/chinamobile10086/CheckUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/virsir/android/chinamobile10086/CheckUpdateService;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/CheckUpdateService;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/b;->a:Lcom/virsir/android/chinamobile10086/CheckUpdateService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;

    .local v3, sm:Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;
    const/4 v2, 0x0

    .local v2, pinfo:Landroid/content/pm/PackageInfo;
    :try_start_8
    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/b;->a:Lcom/virsir/android/chinamobile10086/CheckUpdateService;

    invoke-virtual {v5}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/virsir/android/chinamobile10086/b;->a:Lcom/virsir/android/chinamobile10086/CheckUpdateService;

    invoke-virtual {v6}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_18} :catch_42

    move-result-object v2

    :goto_19
    if-eqz v2, :cond_41

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .local v0, currVersionCode:I
    invoke-virtual {v3}, Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;->b()I

    move-result v1

    .local v1, lastestVersionCode:I
    if-le v1, v0, :cond_41

    invoke-virtual {v3}, Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;->c()Ljava/lang/String;

    move-result-object v4

    .local v4, url:Ljava/lang/String;
    invoke-static {v4}, Lcom/virsir/android/chinamobile10086/utils/d;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_41

    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/b;->a:Lcom/virsir/android/chinamobile10086/CheckUpdateService;

    invoke-virtual {v3}, Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->a(Lcom/virsir/android/chinamobile10086/CheckUpdateService;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/b;->a:Lcom/virsir/android/chinamobile10086/CheckUpdateService;

    iget-object v6, p0, Lcom/virsir/android/chinamobile10086/b;->a:Lcom/virsir/android/chinamobile10086/CheckUpdateService;

    invoke-static {v6}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->a(Lcom/virsir/android/chinamobile10086/CheckUpdateService;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/virsir/android/chinamobile10086/CheckUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0           #currVersionCode:I
    .end local v1           #lastestVersionCode:I
    .end local v4           #url:Ljava/lang/String;
    :cond_41
    return-void

    :catch_42
    move-exception v5

    goto :goto_19
.end method
