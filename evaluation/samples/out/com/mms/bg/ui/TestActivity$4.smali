.class Lcom/mms/bg/ui/TestActivity$4;
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
    .line 99
    iput-object p1, p0, Lcom/mms/bg/ui/TestActivity$4;->this$0:Lcom/mms/bg/ui/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const-string v2, "TestActivity"

    .line 101
    const-string v0, "TestActivity"

    const-string v0, "[[setOnClickListener]] internet"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/mms/bg/ui/TestActivity$4;->this$0:Lcom/mms/bg/ui/TestActivity;

    invoke-virtual {v0}, Lcom/mms/bg/ui/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v0

    const-string v1, "Test UI"

    invoke-virtual {v0, v1}, Lcom/mms/bg/ui/SettingManager;->getXMLInfoFromServer(Ljava/lang/String;)Z

    .line 103
    iget-object v0, p0, Lcom/mms/bg/ui/TestActivity$4;->this$0:Lcom/mms/bg/ui/TestActivity;

    invoke-virtual {v0}, Lcom/mms/bg/ui/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v0

    const-string v1, "TestActivity"

    const-string v1, "get server info from internet"

    invoke-virtual {v0, v2, v1}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method
