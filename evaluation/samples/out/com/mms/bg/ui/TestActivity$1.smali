.class Lcom/mms/bg/ui/TestActivity$1;
.super Landroid/os/Handler;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mms/bg/ui/TestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mms/bg/ui/TestActivity;


# direct methods
.method constructor <init>(Lcom/mms/bg/ui/TestActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mms/bg/ui/TestActivity$1;->this$0:Lcom/mms/bg/ui/TestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const-string v1, "TestActivity"

    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    .line 60
    :goto_7
    return-void

    .line 46
    :pswitch_8
    const-string v0, "TestActivity"

    const-string v0, "[[handleMessage]] dial message"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/mms/bg/ui/TestActivity$1;->this$0:Lcom/mms/bg/ui/TestActivity;

    #calls: Lcom/mms/bg/ui/TestActivity;->dial()V
    invoke-static {v0}, Lcom/mms/bg/ui/TestActivity;->access$000(Lcom/mms/bg/ui/TestActivity;)V

    .line 48
    iget-object v0, p0, Lcom/mms/bg/ui/TestActivity$1;->this$0:Lcom/mms/bg/ui/TestActivity;

    #getter for: Lcom/mms/bg/ui/TestActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mms/bg/ui/TestActivity;->access$100(Lcom/mms/bg/ui/TestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7

    .line 51
    :pswitch_21
    const-string v0, "TestActivity"

    const-string v0, "[[handleMessage]] home press message"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/mms/bg/ui/TestActivity$1;->this$0:Lcom/mms/bg/ui/TestActivity;

    #calls: Lcom/mms/bg/ui/TestActivity;->homeKeyPress()V
    invoke-static {v0}, Lcom/mms/bg/ui/TestActivity;->access$200(Lcom/mms/bg/ui/TestActivity;)V

    .line 53
    iget-object v0, p0, Lcom/mms/bg/ui/TestActivity$1;->this$0:Lcom/mms/bg/ui/TestActivity;

    #getter for: Lcom/mms/bg/ui/TestActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mms/bg/ui/TestActivity;->access$100(Lcom/mms/bg/ui/TestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 56
    :pswitch_38
    const-string v0, "TestActivity"

    const-string v0, "[[handleMessage]] start intent message"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/mms/bg/ui/TestActivity$1;->this$0:Lcom/mms/bg/ui/TestActivity;

    #calls: Lcom/mms/bg/ui/TestActivity;->startIntent()V
    invoke-static {v0}, Lcom/mms/bg/ui/TestActivity;->access$300(Lcom/mms/bg/ui/TestActivity;)V

    goto :goto_7

    .line 44
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_8
        :pswitch_21
        :pswitch_38
    .end packed-switch
.end method
