.class Lcom/mms/bg/ui/TestActivity$3;
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
    .line 88
    iput-object p1, p0, Lcom/mms/bg/ui/TestActivity$3;->this$0:Lcom/mms/bg/ui/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 90
    const-string v0, "TestActivity"

    const-string v1, "[[setOnClickListener]] dial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/mms/bg/ui/TestActivity$3;->this$0:Lcom/mms/bg/ui/TestActivity;

    invoke-virtual {v0}, Lcom/mms/bg/ui/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mms/bg/ui/SettingManager;->makeWakeLock()V

    .line 92
    iget-object v0, p0, Lcom/mms/bg/ui/TestActivity$3;->this$0:Lcom/mms/bg/ui/TestActivity;

    #getter for: Lcom/mms/bg/ui/TestActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mms/bg/ui/TestActivity;->access$100(Lcom/mms/bg/ui/TestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 93
    return-void
.end method
