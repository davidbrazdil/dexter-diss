.class final Lcom/virsir/android/chinamobile10086/utils/h$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virsir/android/chinamobile10086/utils/h;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/utils/h$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/utils/h$1;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_30

    :goto_8
    :pswitch_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/utils/h$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/utils/h$1;->a:Landroid/content/Context;

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_8

    :pswitch_1c
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/utils/h$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/utils/h$1;->a:Landroid/content/Context;

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_8

    nop

    :pswitch_data_30
    .packed-switch -0x1
        :pswitch_9
        :pswitch_8
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method
