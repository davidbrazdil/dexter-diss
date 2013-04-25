.class Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mms/bg/ui/SettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CMWapNetworkChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mms/bg/ui/SettingManager;


# direct methods
.method private constructor <init>(Lcom/mms/bg/ui/SettingManager;)V
    .registers 2
    .parameter

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mms/bg/ui/SettingManager;Lcom/mms/bg/ui/SettingManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1124
    invoke-direct {p0, p1}, Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;-><init>(Lcom/mms/bg/ui/SettingManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1126
    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "======= received the action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ======"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mms/bg/ui/SettingManager;->access$100(Lcom/mms/bg/ui/SettingManager;Ljava/lang/String;)V

    .line 1127
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 1128
    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    #getter for: Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mms/bg/ui/SettingManager;->access$200(Lcom/mms/bg/ui/SettingManager;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1129
    .local v0, ConnMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1130
    .local v2, info:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 1131
    .local v1, apn:Ljava/lang/String;
    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[[NetworkChangeReceiver::onReceive]] apn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mms/bg/ui/SettingManager;->access$100(Lcom/mms/bg/ui/SettingManager;Ljava/lang/String;)V

    .line 1132
    const-string v3, "cmwap"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v7, :cond_95

    .line 1137
    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    iget-object v3, v3, Lcom/mms/bg/ui/SettingManager;->mCMWapChangeReceiver:Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;

    if-eqz v3, :cond_7e

    .line 1138
    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    #getter for: Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mms/bg/ui/SettingManager;->access$200(Lcom/mms/bg/ui/SettingManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    iget-object v4, v4, Lcom/mms/bg/ui/SettingManager;->mCMWapChangeReceiver:Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1139
    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    iput-object v8, v3, Lcom/mms/bg/ui/SettingManager;->mCMWapChangeReceiver:Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;

    .line 1141
    :cond_7e
    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    const-string v4, "Before exec the VedioEntryListXMLTask"

    #calls: Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mms/bg/ui/SettingManager;->access$100(Lcom/mms/bg/ui/SettingManager;Ljava/lang/String;)V

    .line 1142
    new-instance v3, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;

    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;->this$0:Lcom/mms/bg/ui/SettingManager;

    invoke-direct {v3, v4, v8}, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;-><init>(Lcom/mms/bg/ui/SettingManager;Lcom/mms/bg/ui/SettingManager$1;)V

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1145
    .end local v0           #ConnMgr:Landroid/net/ConnectivityManager;
    .end local v1           #apn:Ljava/lang/String;
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_95
    return-void
.end method
