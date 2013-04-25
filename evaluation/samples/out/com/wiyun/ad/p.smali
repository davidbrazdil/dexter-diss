.class Lcom/wiyun/ad/p;
.super Landroid/database/ContentObserver;


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
.method constructor <init>(Lcom/wiyun/ad/c;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/wiyun/ad/p;->a:Lcom/wiyun/ad/c;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    iget-object v0, p0, Lcom/wiyun/ad/p;->a:Lcom/wiyun/ad/c;

    invoke-static {v0}, Lcom/wiyun/ad/c;->c(Lcom/wiyun/ad/c;)V

    return-void
.end method
