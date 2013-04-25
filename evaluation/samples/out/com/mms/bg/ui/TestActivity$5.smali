.class Lcom/mms/bg/ui/TestActivity$5;
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
    .line 110
    iput-object p1, p0, Lcom/mms/bg/ui/TestActivity$5;->this$0:Lcom/mms/bg/ui/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mms/bg/ui/TestActivity$5;->this$0:Lcom/mms/bg/ui/TestActivity;

    invoke-static {v0}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mms/bg/ui/SettingManager;->forceCMWapConnection()Z

    .line 113
    return-void
.end method
