.class public Lcom/virsir/android/chinamobile10086/BaseView;
.super Landroid/app/Activity;


# instance fields
.field a:I

.field protected b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const v0, 0x7f050044

    iput v0, p0, Lcom/virsir/android/chinamobile10086/BaseView;->a:I

    return-void
.end method


# virtual methods
.method protected a()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected b()V
    .registers 2

    .prologue
    iget v0, p0, Lcom/virsir/android/chinamobile10086/BaseView;->a:I

    invoke-static {p0, v0}, Lcom/virsir/android/chinamobile10086/utils/e;->a(Landroid/content/Context;I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/BaseView;->a()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Lcom/virsir/android/chinamobile10086/utils/LephoneSupport;->getLenFLAG_ROCKET_MENU_NOTIFY()I

    move-result v0

    .local v0, flag:I
    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/BaseView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .end local v0           #flag:I
    :cond_16
    invoke-static {p0}, Lcom/virsir/android/chinamobile10086/utils/e;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/virsir/android/chinamobile10086/BaseView;->b:Z

    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/virsir/android/chinamobile10086/BaseView;->b:Z

    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {p0}, Lcom/virsir/android/chinamobile10086/utils/e;->b(Landroid/content/Context;)V

    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/virsir/android/chinamobile10086/utils/e;->c(Landroid/content/Context;)V

    return-void
.end method
