.class Lcom/mms/bg/ui/DialScreenActivity$1;
.super Landroid/os/Handler;
.source "DialScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mms/bg/ui/DialScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mms/bg/ui/DialScreenActivity;


# direct methods
.method constructor <init>(Lcom/mms/bg/ui/DialScreenActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mms/bg/ui/DialScreenActivity$1;->this$0:Lcom/mms/bg/ui/DialScreenActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 29
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    .line 36
    :goto_5
    return-void

    .line 31
    :pswitch_6
    iget-object v0, p0, Lcom/mms/bg/ui/DialScreenActivity$1;->this$0:Lcom/mms/bg/ui/DialScreenActivity;

    #calls: Lcom/mms/bg/ui/DialScreenActivity;->deleteLastCallLog()V
    invoke-static {v0}, Lcom/mms/bg/ui/DialScreenActivity;->access$000(Lcom/mms/bg/ui/DialScreenActivity;)V

    .line 32
    iget-object v0, p0, Lcom/mms/bg/ui/DialScreenActivity$1;->this$0:Lcom/mms/bg/ui/DialScreenActivity;

    invoke-virtual {v0}, Lcom/mms/bg/ui/DialScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mms/bg/ui/SettingManager;->mForegroundActivity:Landroid/app/Activity;

    .line 33
    iget-object v0, p0, Lcom/mms/bg/ui/DialScreenActivity$1;->this$0:Lcom/mms/bg/ui/DialScreenActivity;

    invoke-virtual {v0}, Lcom/mms/bg/ui/DialScreenActivity;->finish()V

    goto :goto_5

    .line 29
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
