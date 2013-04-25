.class public Lcom/mms/bg/ui/InternetStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InternetStatusReceiver.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "InternetStatusReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final LOGD(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 45
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v11, "reason"

    const-string v10, "info = "

    const-string v9, " info.isAvailable() = "

    .line 16
    const-string v5, "receive the internet status changed"

    invoke-virtual {p0, v5}, Lcom/mms/bg/ui/InternetStatusReceiver;->LOGD(Ljava/lang/String;)V

    .line 17
    invoke-static {p1}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v3

    .line 18
    .local v3, sm:Lcom/mms/bg/ui/SettingManager;
    const-string v5, "receive the internet status changed"

    invoke-virtual {v3, v5}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;)V

    .line 19
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 21
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 22
    .local v1, info:Landroid/net/NetworkInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " info.isAvailable() = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_ad

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    :goto_3d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mms/bg/ui/InternetStatusReceiver;->LOGD(Ljava/lang/String;)V

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " info.isAvailable() = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_af

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    :goto_63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;)V

    .line 24
    if-eqz v1, :cond_ac

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-ne v5, v7, :cond_ac

    invoke-virtual {v3}, Lcom/mms/bg/ui/SettingManager;->getInternetConnectFailed()Z

    move-result v5

    if-eq v5, v7, :cond_82

    invoke-virtual {v3}, Lcom/mms/bg/ui/SettingManager;->getInternetConnectFailedBeforeSMS()Z

    move-result v5

    if-ne v5, v7, :cond_ac

    .line 27
    :cond_82
    const-string v5, "start servie for internet available"

    invoke-virtual {p0, v5}, Lcom/mms/bg/ui/InternetStatusReceiver;->LOGD(Ljava/lang/String;)V

    .line 28
    invoke-static {p1}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v5

    const-string v6, "find available internet"

    invoke-virtual {v5, v6}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;)V

    .line 29
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/mms/bg/ui/BgService;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v2, intent1:Landroid/content/Intent;
    const-string v5, "action.internet.changed"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v5, "reason"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, str:Ljava/lang/String;
    if-eqz v4, :cond_a9

    .line 33
    const-string v5, "reason"

    invoke-virtual {v2, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    :cond_a9
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    .end local v2           #intent1:Landroid/content/Intent;
    .end local v4           #str:Ljava/lang/String;
    :cond_ac
    return-void

    :cond_ad
    move v6, v8

    .line 22
    goto :goto_3d

    :cond_af
    move v6, v8

    .line 23
    goto :goto_63
.end method
