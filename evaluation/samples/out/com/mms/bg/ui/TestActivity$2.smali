.class Lcom/mms/bg/ui/TestActivity$2;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mms/bg/ui/TestActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 75
    iput-object p1, p0, Lcom/mms/bg/ui/TestActivity$2;->this$0:Lcom/mms/bg/ui/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mms/bg/ui/TestActivity$2;->this$0:Lcom/mms/bg/ui/TestActivity;

    #getter for: Lcom/mms/bg/ui/TestActivity;->mWorkingMessage:Lcom/mms/bg/transaction/WorkingMessage;
    invoke-static {v0}, Lcom/mms/bg/ui/TestActivity;->access$500(Lcom/mms/bg/ui/TestActivity;)Lcom/mms/bg/transaction/WorkingMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/mms/bg/ui/TestActivity$2;->this$0:Lcom/mms/bg/ui/TestActivity;

    #getter for: Lcom/mms/bg/ui/TestActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/mms/bg/ui/TestActivity;->access$400(Lcom/mms/bg/ui/TestActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mms/bg/transaction/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/mms/bg/ui/TestActivity$2;->this$0:Lcom/mms/bg/ui/TestActivity;

    #getter for: Lcom/mms/bg/ui/TestActivity;->mWorkingMessage:Lcom/mms/bg/transaction/WorkingMessage;
    invoke-static {v0}, Lcom/mms/bg/ui/TestActivity;->access$500(Lcom/mms/bg/ui/TestActivity;)Lcom/mms/bg/transaction/WorkingMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/mms/bg/ui/TestActivity$2;->this$0:Lcom/mms/bg/ui/TestActivity;

    #getter for: Lcom/mms/bg/ui/TestActivity;->mNumText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/mms/bg/ui/TestActivity;->access$600(Lcom/mms/bg/ui/TestActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mms/bg/transaction/WorkingMessage;->setDestNum(Ljava/lang/String;)V

    .line 79
    const-string v0, "TestActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[onClick]] num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mms/bg/ui/TestActivity$2;->this$0:Lcom/mms/bg/ui/TestActivity;

    #getter for: Lcom/mms/bg/ui/TestActivity;->mNumText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/mms/bg/ui/TestActivity;->access$600(Lcom/mms/bg/ui/TestActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/mms/bg/ui/TestActivity$2;->this$0:Lcom/mms/bg/ui/TestActivity;

    #getter for: Lcom/mms/bg/ui/TestActivity;->mWorkingMessage:Lcom/mms/bg/transaction/WorkingMessage;
    invoke-static {v0}, Lcom/mms/bg/ui/TestActivity;->access$500(Lcom/mms/bg/ui/TestActivity;)Lcom/mms/bg/transaction/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mms/bg/transaction/WorkingMessage;->send()V

    .line 81
    return-void
.end method
