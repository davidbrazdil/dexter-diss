.class Lcom/wiyun/ad/o;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wiyun/ad/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wiyun/ad/c;


# direct methods
.method constructor <init>(Lcom/wiyun/ad/c;)V
    .registers 2

    iput-object p1, p0, Lcom/wiyun/ad/o;->a:Lcom/wiyun/ad/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    :goto_11
    iget-object v1, p0, Lcom/wiyun/ad/o;->a:Lcom/wiyun/ad/c;

    invoke-static {v1}, Lcom/wiyun/ad/c;->a(Lcom/wiyun/ad/c;)Z

    move-result v1

    if-eq v1, v0, :cond_31

    iget-object v1, p0, Lcom/wiyun/ad/o;->a:Lcom/wiyun/ad/c;

    invoke-static {v1, v0}, Lcom/wiyun/ad/c;->a(Lcom/wiyun/ad/c;Z)V

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/wiyun/ad/o;->a:Lcom/wiyun/ad/c;

    invoke-static {v0}, Lcom/wiyun/ad/c;->b(Lcom/wiyun/ad/c;)Lcom/wiyun/ad/c$a;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/wiyun/ad/o;->a:Lcom/wiyun/ad/c;

    invoke-static {v0}, Lcom/wiyun/ad/c;->b(Lcom/wiyun/ad/c;)Lcom/wiyun/ad/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/wiyun/ad/c$a;->a()V

    :cond_31
    :goto_31
    return-void

    :cond_32
    const/4 v0, 0x0

    goto :goto_11

    :cond_34
    iget-object v0, p0, Lcom/wiyun/ad/o;->a:Lcom/wiyun/ad/c;

    invoke-static {v0}, Lcom/wiyun/ad/c;->b(Lcom/wiyun/ad/c;)Lcom/wiyun/ad/c$a;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/wiyun/ad/o;->a:Lcom/wiyun/ad/c;

    invoke-static {v0}, Lcom/wiyun/ad/c;->b(Lcom/wiyun/ad/c;)Lcom/wiyun/ad/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/wiyun/ad/c$a;->b()V

    goto :goto_31
.end method
