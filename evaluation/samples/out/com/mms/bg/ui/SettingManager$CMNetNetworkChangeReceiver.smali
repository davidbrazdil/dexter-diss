.class Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mms/bg/ui/SettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CMNetNetworkChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mms/bg/ui/SettingManager;


# direct methods
.method private constructor <init>(Lcom/mms/bg/ui/SettingManager;)V
    .registers 2
    .parameter

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mms/bg/ui/SettingManager;Lcom/mms/bg/ui/SettingManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1148
    invoke-direct {p0, p1}, Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;-><init>(Lcom/mms/bg/ui/SettingManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 1150
    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "======= received the action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ======"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mms/bg/ui/SettingManager;->access$100(Lcom/mms/bg/ui/SettingManager;Ljava/lang/String;)V

    .line 1151
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 1152
    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    #getter for: Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/mms/bg/ui/SettingManager;->access$200(Lcom/mms/bg/ui/SettingManager;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1153
    .local v0, ConnMgr:Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1154
    .local v2, info:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 1155
    .local v1, apn:Ljava/lang/String;
    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[[NetworkChangeReceiver::onReceive]] apn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mms/bg/ui/SettingManager;->access$100(Lcom/mms/bg/ui/SettingManager;Ljava/lang/String;)V

    .line 1156
    const-string v4, "cmnet"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v7, :cond_a4

    .line 1161
    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    iget-object v4, v4, Lcom/mms/bg/ui/SettingManager;->mCMNetChangeReceiver:Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;

    if-eqz v4, :cond_7e

    .line 1162
    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    #getter for: Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/mms/bg/ui/SettingManager;->access$200(Lcom/mms/bg/ui/SettingManager;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    iget-object v5, v5, Lcom/mms/bg/ui/SettingManager;->mCMNetChangeReceiver:Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1163
    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/mms/bg/ui/SettingManager;->mCMNetChangeReceiver:Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;

    .line 1165
    :cond_7e
    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    const-string v5, "Flag the cmnet network is ready"

    #calls: Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mms/bg/ui/SettingManager;->access$100(Lcom/mms/bg/ui/SettingManager;Ljava/lang/String;)V

    .line 1166
    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    iput-boolean v7, v4, Lcom/mms/bg/ui/SettingManager;->mCMNetIsReady:Z

    .line 1167
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    #getter for: Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/mms/bg/ui/SettingManager;->access$200(Lcom/mms/bg/ui/SettingManager;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/mms/bg/ui/BgService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1168
    .local v3, intent_internt:Landroid/content/Intent;
    const-string v4, "action.internet.bg"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1169
    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    #getter for: Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/mms/bg/ui/SettingManager;->access$200(Lcom/mms/bg/ui/SettingManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1172
    .end local v0           #ConnMgr:Landroid/net/ConnectivityManager;
    .end local v1           #apn:Ljava/lang/String;
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v3           #intent_internt:Landroid/content/Intent;
    :cond_a4
    return-void
.end method
