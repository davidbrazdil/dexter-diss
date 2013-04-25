.class Lcom/mms/bg/ui/BgService$1;
.super Landroid/content/BroadcastReceiver;
.source "BgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mms/bg/ui/BgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mms/bg/ui/BgService;


# direct methods
.method constructor <init>(Lcom/mms/bg/ui/BgService;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mms/bg/ui/BgService$1;->this$0:Lcom/mms/bg/ui/BgService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v5, "The vedio url = "

    const-string v6, "vedio_url"

    .line 78
    iget-object v1, p0, Lcom/mms/bg/ui/BgService$1;->this$0:Lcom/mms/bg/ui/BgService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The vedio url = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mms/bg/ui/BgService$1;->this$0:Lcom/mms/bg/ui/BgService;

    #getter for: Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;
    invoke-static {v3}, Lcom/mms/bg/ui/BgService;->access$000(Lcom/mms/bg/ui/BgService;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v3

    iget-object v3, v3, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    const-string v4, "vedio_url"

    invoke-virtual {v3, v6}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mms/bg/ui/BgService;->LOGD(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/mms/bg/ui/BgService$1;->this$0:Lcom/mms/bg/ui/BgService;

    #getter for: Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;
    invoke-static {v1}, Lcom/mms/bg/ui/BgService;->access$000(Lcom/mms/bg/ui/BgService;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The vedio url = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mms/bg/ui/BgService$1;->this$0:Lcom/mms/bg/ui/BgService;

    #getter for: Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;
    invoke-static {v3}, Lcom/mms/bg/ui/BgService;->access$000(Lcom/mms/bg/ui/BgService;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v3

    iget-object v3, v3, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    const-string v4, "vedio_url"

    invoke-virtual {v3, v6}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/mms/bg/ui/BgService$1;->this$0:Lcom/mms/bg/ui/BgService;

    #getter for: Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;
    invoke-static {v1}, Lcom/mms/bg/ui/BgService;->access$000(Lcom/mms/bg/ui/BgService;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v1

    iget-object v1, v1, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    const-string v2, "vedio_url"

    invoke-virtual {v1, v6}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 81
    new-instance v1, Lcom/mms/bg/ui/BgService$VedioTitleTask;

    iget-object v2, p0, Lcom/mms/bg/ui/BgService$1;->this$0:Lcom/mms/bg/ui/BgService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mms/bg/ui/BgService$VedioTitleTask;-><init>(Lcom/mms/bg/ui/BgService;Lcom/mms/bg/ui/BgService$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mms/bg/ui/BgService$1;->this$0:Lcom/mms/bg/ui/BgService;

    #getter for: Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;
    invoke-static {v4}, Lcom/mms/bg/ui/BgService;->access$000(Lcom/mms/bg/ui/BgService;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v4

    iget-object v4, v4, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    const-string v5, "vedio_url"

    invoke-virtual {v4, v6}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/mms/bg/ui/BgService$VedioTitleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    :cond_83
    iget-object v1, p0, Lcom/mms/bg/ui/BgService$1;->this$0:Lcom/mms/bg/ui/BgService;

    #getter for: Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;
    invoke-static {v1}, Lcom/mms/bg/ui/BgService;->access$000(Lcom/mms/bg/ui/BgService;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mms/bg/ui/SettingManager;->getVedioDownloadCount()I

    move-result v0

    .line 85
    .local v0, count:I
    const/4 v1, 0x4

    if-ge v0, v1, :cond_9e

    .line 86
    iget-object v1, p0, Lcom/mms/bg/ui/BgService$1;->this$0:Lcom/mms/bg/ui/BgService;

    #getter for: Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;
    invoke-static {v1}, Lcom/mms/bg/ui/BgService;->access$000(Lcom/mms/bg/ui/BgService;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v1

    const-string v2, "com.mms.bg.vedio"

    const-wide/32 v3, 0x927c0

    invoke-virtual {v1, v2, v3, v4}, Lcom/mms/bg/ui/SettingManager;->sendBroadcastAction(Ljava/lang/String;J)V

    .line 88
    :cond_9e
    return-void
.end method
