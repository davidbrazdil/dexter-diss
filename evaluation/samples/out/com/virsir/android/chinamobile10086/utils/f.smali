.class public Lcom/virsir/android/chinamobile10086/utils/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/utils/f;->a:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/utils/f;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, netInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_14

    move v1, v4

    :goto_13
    return v1

    :cond_14
    move v1, v3

    goto :goto_13

    :cond_16
    move v1, v3

    goto :goto_13
.end method

.method public b()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/utils/f;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, netInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_13

    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    move v1, v3

    goto :goto_12

    :cond_15
    move v1, v3

    goto :goto_12
.end method

.method public c()Z
    .registers 2

    .prologue
    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/utils/f;->a()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/utils/f;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
