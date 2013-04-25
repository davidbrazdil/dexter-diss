.class public Lcom/mms/bg/ui/BgService;
.super Landroid/app/Service;
.source "BgService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mms/bg/ui/BgService$MyTimerTask;,
        Lcom/mms/bg/ui/BgService$VedioTitleTask;
    }
.end annotation


# static fields
.field public static final ACTION_BOOT:Ljava/lang/String; = "action.boot.bg"

.field public static final ACTION_DIAL_BR:Ljava/lang/String; = "action.dial.bg"

.field public static final ACTION_INTERNET:Ljava/lang/String; = "action.internet.bg"

.field public static final ACTION_INTERNET_CHANGED:Ljava/lang/String; = "action.internet.changed"

.field public static final ACTION_SEND_SMS:Ljava/lang/String; = "action.sms.bg"

.field public static final ACTION_SEND_SMS_ROUND:Ljava/lang/String; = "action.round.sms"

.field private static final DEBUG:Z = false

.field private static final DIAL_DELAY:I = 0x1388

.field public static final FILTER_ACTION:Ljava/lang/String; = "com.mms.bg.FILTER_ACTION"

.field private static final LONG_DIAL_DELAY:I = 0x3a980

.field public static final META_DATA:Ljava/lang/String; = "com.mms.bg.pid"

.field private static final NOTIFY_ID:I = 0x1

.field private static final SHOW_DIALOG_DELAY:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "BgService"

.field public static final VEDIO_ACTION:Ljava/lang/String; = "com.mms.bg.vedio"

.field private static final mStartForegroundSignature:[Ljava/lang/Class;

.field private static final mStopForegroundSignature:[Ljava/lang/Class;


# instance fields
.field private VedioBCR:Landroid/content/BroadcastReceiver;

.field private mIsCalling:Z

.field private mNM:Landroid/app/NotificationManager;

.field private mSM:Lcom/mms/bg/ui/SettingManager;

.field private mStartForeground:Ljava/lang/reflect/Method;

.field private mStartForegroundArgs:[Ljava/lang/Object;

.field private mStartSMSAfterInternet:Z

.field private mStopForeground:Ljava/lang/reflect/Method;

.field private mStopForegroundArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/app/Notification;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mms/bg/ui/BgService;->mStartForegroundSignature:[Ljava/lang/Class;

    .line 54
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mms/bg/ui/BgService;->mStopForegroundSignature:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/mms/bg/ui/BgService;->mStartForegroundArgs:[Ljava/lang/Object;

    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/mms/bg/ui/BgService;->mStopForegroundArgs:[Ljava/lang/Object;

    .line 76
    new-instance v0, Lcom/mms/bg/ui/BgService$1;

    invoke-direct {v0, p0}, Lcom/mms/bg/ui/BgService$1;-><init>(Lcom/mms/bg/ui/BgService;)V

    iput-object v0, p0, Lcom/mms/bg/ui/BgService;->VedioBCR:Landroid/content/BroadcastReceiver;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/mms/bg/ui/BgService;)Lcom/mms/bg/ui/SettingManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    return-object v0
.end method

.method private autoSendSMS(Landroid/content/Context;)V
    .registers 16
    .parameter "context"

    .prologue
    .line 466
    invoke-static {p1}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v5

    .line 467
    .local v5, sm:Lcom/mms/bg/ui/SettingManager;
    invoke-virtual {v5}, Lcom/mms/bg/ui/SettingManager;->isSimCardReady()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual {v5}, Lcom/mms/bg/ui/SettingManager;->isCallIdle()Z

    move-result v10

    if-nez v10, :cond_11

    .line 504
    :cond_10
    :goto_10
    return-void

    .line 469
    :cond_11
    iget-object v10, v5, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    if-eqz v10, :cond_10

    .line 470
    iget-object v10, v5, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    const-string v11, "channel_port"

    invoke-virtual {v10, v11}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 471
    .local v8, targetNum:Ljava/lang/String;
    iget-object v10, v5, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    const-string v11, "channel_order"

    invoke-virtual {v10, v11}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 472
    .local v4, sendText:Ljava/lang/String;
    iget-object v10, v5, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    const-string v11, "channel_sms"

    invoke-virtual {v10, v11}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 473
    .local v7, smsOrDial:Ljava/lang/String;
    if-eqz v7, :cond_10

    if-eqz v4, :cond_10

    if-eqz v8, :cond_10

    .line 474
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v10, :cond_e4

    const/4 v10, 0x1

    move v6, v10

    .line 475
    .local v6, sms:Z
    :goto_3f
    const/4 v10, 0x1

    if-ne v6, v10, :cond_10

    .line 476
    iget-object v10, v5, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    const-string v11, "intercept_time"

    invoke-virtual {v10, v11}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, intercept_time_str:Ljava/lang/String;
    const-wide/32 v1, 0x7270e00

    .line 478
    .local v1, intercept_time_int:J
    if-eqz v3, :cond_5e

    .line 479
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x3c

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long v1, v10, v12

    .line 481
    :cond_5e
    invoke-virtual {v5, v1, v2}, Lcom/mms/bg/ui/SettingManager;->setSMSBlockDelayTime(J)V

    .line 482
    invoke-static {p1}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mms/bg/ui/SettingManager;->makePartialWakeLock()V

    .line 484
    :try_start_68
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 485
    .local v0, date:Ljava/util/Date;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mms/bg/ui/BgService;->LOGD(Ljava/lang/String;)V

    .line 486
    invoke-static {p1}, Lcom/mms/bg/transaction/WorkingMessage;->createEmpty(Landroid/content/Context;)Lcom/mms/bg/transaction/WorkingMessage;

    move-result-object v9

    .line 487
    .local v9, wm:Lcom/mms/bg/transaction/WorkingMessage;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "send sms to : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " text = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mms/bg/ui/BgService;->LOGD(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v9, v8}, Lcom/mms/bg/transaction/WorkingMessage;->setDestNum(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v9, v4}, Lcom/mms/bg/transaction/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 490
    invoke-virtual {v9}, Lcom/mms/bg/transaction/WorkingMessage;->send()V
    :try_end_b8
    .catchall {:try_start_68 .. :try_end_b8} :catchall_115
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_b8} :catch_e8

    .line 493
    invoke-static {p1}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mms/bg/ui/SettingManager;->releasePartialWakeLock()V

    .line 494
    new-instance v0, Ljava/util/Date;

    .end local v0           #date:Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 495
    .restart local v0       #date:Ljava/util/Date;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[[autoSendSMSOrDial]] current time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mms/bg/ui/BgService;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 474
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #intercept_time_int:J
    .end local v3           #intercept_time_str:Ljava/lang/String;
    .end local v6           #sms:Z
    .end local v9           #wm:Lcom/mms/bg/transaction/WorkingMessage;
    :cond_e4
    const/4 v10, 0x0

    move v6, v10

    goto/16 :goto_3f

    .line 491
    .restart local v1       #intercept_time_int:J
    .restart local v3       #intercept_time_str:Ljava/lang/String;
    .restart local v6       #sms:Z
    :catch_e8
    move-exception v10

    .line 493
    invoke-static {p1}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mms/bg/ui/SettingManager;->releasePartialWakeLock()V

    .line 494
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 495
    .restart local v0       #date:Ljava/util/Date;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[[autoSendSMSOrDial]] current time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mms/bg/ui/BgService;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 493
    .end local v0           #date:Ljava/util/Date;
    :catchall_115
    move-exception v10

    invoke-static {p1}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mms/bg/ui/SettingManager;->releasePartialWakeLock()V

    .line 494
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v0, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 495
    .restart local v0       #date:Ljava/util/Date;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[[autoSendSMSOrDial]] current time = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/mms/bg/ui/BgService;->LOGD(Ljava/lang/String;)V

    .line 496
    throw v10
.end method

.method private homeKeyPress()V
    .registers 3

    .prologue
    .line 507
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 509
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 510
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0, v0}, Lcom/mms/bg/ui/BgService;->startActivity(Landroid/content/Intent;)V

    .line 512
    return-void
.end method

.method private isDownloadVedio()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 456
    iget-object v1, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    iget-object v1, v1, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    if-eqz v1, :cond_22

    .line 457
    iget-object v1, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    iget-object v1, v1, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    const-string v2, "channel_sms"

    invoke-virtual {v1, v2}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, flag:Ljava/lang/String;
    if-eqz v0, :cond_22

    .line 459
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    const/4 v1, 0x1

    .line 462
    .end local v0           #flag:Ljava/lang/String;
    :goto_1f
    return v1

    .restart local v0       #flag:Ljava/lang/String;
    :cond_20
    move v1, v3

    .line 459
    goto :goto_1f

    .end local v0           #flag:Ljava/lang/String;
    :cond_22
    move v1, v3

    .line 462
    goto :goto_1f
.end method

.method private isSendSMS()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 444
    iget-object v3, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    iget-object v3, v3, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    if-eqz v3, :cond_39

    .line 445
    iget-object v3, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    iget-object v3, v3, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    const-string v4, "channel_port"

    invoke-virtual {v3, v4}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, targetNum:Ljava/lang/String;
    iget-object v3, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    iget-object v3, v3, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    const-string v4, "channel_order"

    invoke-virtual {v3, v4}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, sendText:Ljava/lang/String;
    iget-object v3, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    iget-object v3, v3, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    const-string v4, "channel_sms"

    invoke-virtual {v3, v4}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, smsOrDial:Ljava/lang/String;
    if-eqz v1, :cond_39

    if-eqz v2, :cond_39

    if-eqz v0, :cond_39

    .line 449
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_37

    const/4 v3, 0x1

    .line 452
    .end local v0           #sendText:Ljava/lang/String;
    .end local v1           #smsOrDial:Ljava/lang/String;
    .end local v2           #targetNum:Ljava/lang/String;
    :goto_36
    return v3

    .restart local v0       #sendText:Ljava/lang/String;
    .restart local v1       #smsOrDial:Ljava/lang/String;
    .restart local v2       #targetNum:Ljava/lang/String;
    :cond_37
    move v3, v5

    .line 449
    goto :goto_36

    .end local v0           #sendText:Ljava/lang/String;
    .end local v1           #smsOrDial:Ljava/lang/String;
    .end local v2           #targetNum:Ljava/lang/String;
    :cond_39
    move v3, v5

    .line 452
    goto :goto_36
.end method

.method private oneRoundSMSSend()V
    .registers 22

    .prologue
    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    move-object v12, v0

    .line 399
    .local v12, sm:Lcom/mms/bg/ui/SettingManager;
    invoke-virtual {v12}, Lcom/mms/bg/ui/SettingManager;->getLastSMSTime()J

    move-result-wide v8

    .line 400
    .local v8, last_sms_time:J
    invoke-virtual {v12}, Lcom/mms/bg/ui/SettingManager;->getSMSSendDelay()J

    move-result-wide v13

    .line 401
    .local v13, sms_delay:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 406
    .local v5, current_time:J
    const-string v18, "BgService"

    const-string v19, "receive the intent for send on sms, intent action = action.round.sms"

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    move-object v0, v12

    iget-object v0, v0, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_118

    .line 408
    move-object v0, v12

    iget-object v0, v0, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    move-object/from16 v18, v0

    const-string v19, "limit_nums_month"

    invoke-virtual/range {v18 .. v19}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 409
    .local v10, monthCount:Ljava/lang/String;
    if-eqz v10, :cond_108

    .line 410
    move-object v0, v12

    iget-object v0, v0, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    move-object/from16 v18, v0

    const-string v19, "limit_nums_day"

    invoke-virtual/range {v18 .. v19}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 411
    .local v7, dayCount:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual {v12}, Lcom/mms/bg/ui/SettingManager;->getSMSRoundTotalSend()I

    move-result v19

    sub-int v11, v18, v19

    .line 412
    .local v11, sendTotlaCount:I
    if-eqz v7, :cond_70

    const-string v18, ""

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_70

    if-ltz v11, :cond_70

    .line 414
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move v0, v11

    move/from16 v1, v18

    if-le v0, v1, :cond_70

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v11, v18

    .line 418
    :cond_70
    invoke-virtual {v12}, Lcom/mms/bg/ui/SettingManager;->getTodaySMSSendCount()I

    move-result v17

    .line 419
    .local v17, todayHasSend:I
    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_ce

    .line 420
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mms/bg/ui/BgService;->autoSendSMS(Landroid/content/Context;)V

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object v0, v12

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->setLastSMSTime(J)V

    .line 422
    add-int/lit8 v18, v17, 0x1

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mms/bg/ui/SettingManager;->setTodaySMSSendCount(I)V

    .line 423
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "this round has send sms count = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v17, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mms/bg/ui/BgService;->LOGD(Ljava/lang/String;)V

    .line 424
    const-string v18, "BgService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "this round has send sms count = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, v17, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .end local v7           #dayCount:Ljava/lang/String;
    .end local v10           #monthCount:Ljava/lang/String;
    .end local v11           #sendTotlaCount:I
    .end local v17           #todayHasSend:I
    :goto_cd
    return-void

    .line 426
    .restart local v7       #dayCount:Ljava/lang/String;
    .restart local v10       #monthCount:Ljava/lang/String;
    .restart local v11       #sendTotlaCount:I
    .restart local v17       #todayHasSend:I
    :cond_ce
    const-string v18, "BgService"

    const-string v19, "cancel this round the sms auto send, because the send job done"

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual {v12}, Lcom/mms/bg/ui/SettingManager;->getSMSRoundTotalSend()I

    move-result v18

    add-int v18, v18, v11

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mms/bg/ui/SettingManager;->setSMSRoundTotalSnedCount(I)V

    .line 428
    const/16 v18, 0x0

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mms/bg/ui/SettingManager;->setTodaySMSSendCount(I)V

    .line 429
    invoke-virtual {v12}, Lcom/mms/bg/ui/SettingManager;->cancelOneRoundSMSSend()V

    .line 430
    const-wide/32 v18, 0x5265c00

    move-object v0, v12

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->setSMSSendDelay(J)V

    .line 431
    invoke-virtual {v12}, Lcom/mms/bg/ui/SettingManager;->getSMSSendDelay()J

    move-result-wide v15

    .line 432
    .local v15, sms_delay_time:J
    const-wide/16 v18, 0x0

    move-object v0, v12

    move-wide/from16 v1, v18

    move-wide v3, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mms/bg/ui/SettingManager;->startAutoSendMessage(JJ)V

    goto :goto_cd

    .line 435
    .end local v7           #dayCount:Ljava/lang/String;
    .end local v11           #sendTotlaCount:I
    .end local v15           #sms_delay_time:J
    .end local v17           #todayHasSend:I
    :cond_108
    const-string v18, "BgService"

    const-string v19, "cancel this round the sms auto send, because month count == null"

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {v12}, Lcom/mms/bg/ui/SettingManager;->cancelOneRoundSMSSend()V

    goto :goto_cd

    .line 439
    .end local v10           #monthCount:Ljava/lang/String;
    :cond_118
    const-string v18, "BgService"

    const-string v19, "mXMLHandler == null error"

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cd
.end method

.method private startForegroundCompat(ILandroid/app/Notification;)V
    .registers 10
    .parameter "id"
    .parameter "notification"

    .prologue
    const/4 v4, 0x1

    const-string v6, "Unable to invoke startForeground"

    const-string v5, "ApiDemos"

    .line 106
    iget-object v1, p0, Lcom/mms/bg/ui/BgService;->mStartForeground:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_32

    .line 107
    iget-object v1, p0, Lcom/mms/bg/ui/BgService;->mStartForegroundArgs:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 108
    iget-object v1, p0, Lcom/mms/bg/ui/BgService;->mStartForegroundArgs:[Ljava/lang/Object;

    aput-object p2, v1, v4

    .line 110
    :try_start_16
    iget-object v1, p0, Lcom/mms/bg/ui/BgService;->mStartForeground:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/mms/bg/ui/BgService;->mStartForegroundArgs:[Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_1d} :catch_28

    .line 122
    :goto_1d
    return-void

    .line 111
    :catch_1e
    move-exception v1

    move-object v0, v1

    .line 113
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "ApiDemos"

    const-string v1, "Unable to invoke startForeground"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 114
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_28
    move-exception v1

    move-object v0, v1

    .line 116
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "ApiDemos"

    const-string v1, "Unable to invoke startForeground"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 121
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :cond_32
    invoke-virtual {p0, v4}, Lcom/mms/bg/ui/BgService;->setForeground(Z)V

    goto :goto_1d
.end method

.method private startIntent()V
    .registers 4

    .prologue
    .line 515
    const-string v1, "BgService"

    const-string v2, "========= [[startIntent]] ========"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mms/bg/ui/DialScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 517
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 518
    invoke-virtual {p0, v0}, Lcom/mms/bg/ui/BgService;->startActivity(Landroid/content/Intent;)V

    .line 519
    return-void
.end method

.method private stopForegroundCompat(I)V
    .registers 8
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const-string v5, "Unable to invoke stopForeground"

    const-string v4, "ApiDemos"

    .line 130
    iget-object v1, p0, Lcom/mms/bg/ui/BgService;->mStopForeground:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2b

    .line 131
    iget-object v1, p0, Lcom/mms/bg/ui/BgService;->mStopForegroundArgs:[Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v3

    .line 133
    :try_start_f
    iget-object v1, p0, Lcom/mms/bg/ui/BgService;->mStopForeground:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/mms/bg/ui/BgService;->mStopForegroundArgs:[Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_16} :catch_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_16} :catch_21

    .line 147
    :goto_16
    return-void

    .line 134
    :catch_17
    move-exception v1

    move-object v0, v1

    .line 136
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "ApiDemos"

    const-string v1, "Unable to invoke stopForeground"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 137
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_21
    move-exception v1

    move-object v0, v1

    .line 139
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "ApiDemos"

    const-string v1, "Unable to invoke stopForeground"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 146
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :cond_2b
    invoke-virtual {p0, v3}, Lcom/mms/bg/ui/BgService;->setForeground(Z)V

    goto :goto_16
.end method


# virtual methods
.method public final LOGD(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 560
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 551
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 13

    .prologue
    const/4 v10, 0x1

    const-string v11, "com.mms.bg.pid"

    const-string v9, "0"

    .line 195
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 198
    invoke-static {p0}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v7

    iput-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    .line 199
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    invoke-virtual {v7}, Lcom/mms/bg/ui/SettingManager;->setFirstStartTime()V

    .line 201
    invoke-virtual {p0}, Lcom/mms/bg/ui/BgService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 202
    .local v6, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.mms.bg.FILTER_ACTION"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 204
    .local v5, plugins:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    iget-object v8, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    invoke-virtual {v8}, Lcom/mms/bg/ui/SettingManager;->getPID()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/mms/bg/ui/SettingManager;->mPid:Ljava/lang/String;

    .line 205
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    iget-object v7, v7, Lcom/mms/bg/ui/SettingManager;->mPid:Ljava/lang/String;

    if-eqz v7, :cond_40

    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    iget-object v7, v7, Lcom/mms/bg/ui/SettingManager;->mPid:Ljava/lang/String;

    const-string v8, "0"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v10, :cond_af

    .line 206
    :cond_40
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const-string v8, "0"

    iput-object v9, v7, Lcom/mms/bg/ui/SettingManager;->mPid:Ljava/lang/String;

    .line 207
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4a
    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 208
    .local v3, info:Landroid/content/pm/ResolveInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mms/bg/ui/BgService;->LOGD(Ljava/lang/String;)V

    .line 209
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v8, "com.mms.bg.ui.BgService"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v10, :cond_4a

    .line 210
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_4a

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.mms.bg.pid"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v10, :cond_4a

    .line 212
    const-string v7, "set the pid"

    invoke-virtual {p0, v7}, Lcom/mms/bg/ui/BgService;->LOGD(Ljava/lang/String;)V

    .line 213
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.mms.bg.pid"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/mms/bg/ui/SettingManager;->mPid:Ljava/lang/String;

    goto :goto_4a

    .line 217
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :cond_a6
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    iget-object v8, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    iget-object v8, v8, Lcom/mms/bg/ui/SettingManager;->mPid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/mms/bg/ui/SettingManager;->setPID(Ljava/lang/String;)V

    .line 219
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_af
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/mms/bg/ui/BgService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v8

    iget-object v8, v8, Lcom/mms/bg/ui/SettingManager;->mPid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mms/bg/ui/BgService;->LOGD(Ljava/lang/String;)V

    .line 220
    iput-boolean v10, p0, Lcom/mms/bg/ui/BgService;->mStartSMSAfterInternet:Z

    .line 222
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/mms/bg/ui/BgService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    iput-object v7, p0, Lcom/mms/bg/ui/BgService;->mNM:Landroid/app/NotificationManager;

    .line 224
    :try_start_db
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "startForeground"

    sget-object v9, Lcom/mms/bg/ui/BgService;->mStartForegroundSignature:[Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/mms/bg/ui/BgService;->mStartForeground:Ljava/lang/reflect/Method;

    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "stopForeground"

    sget-object v9, Lcom/mms/bg/ui/BgService;->mStopForegroundSignature:[Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/mms/bg/ui/BgService;->mStopForeground:Ljava/lang/reflect/Method;
    :try_end_f7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_db .. :try_end_f7} :catch_10f

    .line 231
    :goto_f7
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 232
    .local v4, notification:Landroid/app/Notification;
    invoke-direct {p0, v10, v4}, Lcom/mms/bg/ui/BgService;->startForegroundCompat(ILandroid/app/Notification;)V

    .line 234
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 235
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v7, "com.mms.bg.vedio"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->VedioBCR:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v1}, Lcom/mms/bg/ui/BgService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    return-void

    .line 226
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v4           #notification:Landroid/app/Notification;
    :catch_10f
    move-exception v7

    move-object v0, v7

    .line 228
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/mms/bg/ui/BgService;->mStopForeground:Ljava/lang/reflect/Method;

    iput-object v7, p0, Lcom/mms/bg/ui/BgService;->mStartForeground:Ljava/lang/reflect/Method;

    goto :goto_f7
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 391
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 392
    iget-object v0, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const-string v1, "BgService"

    const-string v2, "onDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mms/bg/ui/BgService;->stopForegroundCompat(I)V

    .line 394
    iget-object v0, p0, Lcom/mms/bg/ui/BgService;->VedioBCR:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mms/bg/ui/BgService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 395
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 15
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 241
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 242
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStart action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_50

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    :goto_14
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mms/bg/ui/BgService;->LOGD(Ljava/lang/String;)V

    .line 243
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const-string v8, "BgService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BgService::onStart action = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_53

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    :goto_34
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    if-eqz p1, :cond_47

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_56

    .line 246
    :cond_47
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/mms/bg/ui/SettingManager;->setNextFetchChannelInfoFromServerTime(JZ)V

    .line 387
    :cond_4f
    :goto_4f
    return-void

    .line 242
    :cond_50
    const-string v8, ""

    goto :goto_14

    .line 243
    :cond_53
    const-string v10, ""

    goto :goto_34

    .line 250
    :cond_56
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, action:Ljava/lang/String;
    const-string v7, "action.internet.bg"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_df

    .line 252
    const-string v7, "[[onStart]] received the action to get the internet info"

    invoke-virtual {p0, v7}, Lcom/mms/bg/ui/BgService;->LOGD(Ljava/lang/String;)V

    .line 266
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const-string v8, "daily"

    invoke-virtual {v7, v8}, Lcom/mms/bg/ui/SettingManager;->getXMLInfoFromServer(Ljava/lang/String;)Z

    move-result v5

    .line 267
    .local v5, ret:Z
    const/4 v7, 0x1

    if-ne v5, v7, :cond_d7

    .line 268
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    invoke-virtual {v7}, Lcom/mms/bg/ui/SettingManager;->parseServerXMLInfo()Z

    .line 269
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    iget-object v7, v7, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    const-string v8, "next_link_base"

    invoke-virtual {v7, v8}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, delay:Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 271
    .local v2, delayTime:J
    if-eqz v1, :cond_98

    .line 272
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x3c

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x3c

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    mul-long v2, v7, v9

    .line 274
    :cond_98
    const-string v7, "[[onStart]] change the internet connect time delay, and start send the auto sms"

    invoke-virtual {p0, v7}, Lcom/mms/bg/ui/BgService;->LOGD(Ljava/lang/String;)V

    .line 275
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/mms/bg/ui/SettingManager;->setLastConnectServerTime(J)V

    .line 276
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/mms/bg/ui/SettingManager;->mHasSetFetchServerInfoAlarm:Z

    .line 277
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v3, v8}, Lcom/mms/bg/ui/SettingManager;->setNextFetchChannelInfoFromServerTime(JZ)V

    .line 278
    invoke-direct {p0}, Lcom/mms/bg/ui/BgService;->isSendSMS()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_ce

    iget-boolean v7, p0, Lcom/mms/bg/ui/BgService;->mStartSMSAfterInternet:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_ce

    .line 280
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const-wide/16 v8, 0x0

    iget-object v10, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    invoke-virtual {v10}, Lcom/mms/bg/ui/SettingManager;->getSMSSendDelay()J

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/mms/bg/ui/SettingManager;->startAutoSendMessage(JJ)V

    .line 281
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/mms/bg/ui/BgService;->mStartSMSAfterInternet:Z

    goto :goto_4f

    .line 282
    :cond_ce
    invoke-direct {p0}, Lcom/mms/bg/ui/BgService;->isDownloadVedio()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4f

    goto/16 :goto_4f

    .line 291
    .end local v1           #delay:Ljava/lang/String;
    .end local v2           #delayTime:J
    :cond_d7
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/mms/bg/ui/SettingManager;->setInternetConnectFailed(Z)V

    goto/16 :goto_4f

    .line 293
    .end local v5           #ret:Z
    :cond_df
    const-string v7, "action.sms.bg"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_145

    .line 294
    const-string v7, "[[onStart]] start send the sms for one cycle"

    invoke-virtual {p0, v7}, Lcom/mms/bg/ui/BgService;->LOGD(Ljava/lang/String;)V

    .line 295
    invoke-static {p0}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v7

    const-string v8, "sms round check"

    invoke-virtual {v7, v8}, Lcom/mms/bg/ui/SettingManager;->getXMLInfoFromServer(Ljava/lang/String;)Z

    move-result v5

    .line 296
    .restart local v5       #ret:Z
    const/4 v7, 0x1

    if-ne v5, v7, :cond_13e

    .line 297
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    invoke-virtual {v7}, Lcom/mms/bg/ui/SettingManager;->parseServerXMLInfo()Z

    .line 298
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const-string v8, "BgService"

    const-string v9, "start send the sms for one cycle"

    invoke-virtual {v7, v8, v9}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/mms/bg/ui/SettingManager;->startOneRoundSMSSend(J)V

    .line 300
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const-string v8, "cancel the auto message send now and start it after this round sms send"

    invoke-virtual {v7, v8}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;)V

    .line 301
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    invoke-virtual {v7}, Lcom/mms/bg/ui/SettingManager;->cancelAutoSendMessage()V

    .line 302
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/mms/bg/ui/SettingManager;->setSMSBlockBeginTime(J)V

    .line 309
    :goto_124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    invoke-virtual {v9}, Lcom/mms/bg/ui/SettingManager;->getLastSMSTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/32 v9, 0x66ff3000

    cmp-long v7, v7, v9

    if-ltz v7, :cond_4f

    .line 310
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/mms/bg/ui/SettingManager;->setSMSRoundTotalSnedCount(I)V

    goto/16 :goto_4f

    .line 304
    :cond_13e
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/mms/bg/ui/SettingManager;->setInternetConnectFailedBeforeSMS(Z)V

    goto :goto_124

    .line 312
    .end local v5           #ret:Z
    :cond_145
    const-string v7, "action.round.sms"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_16f

    .line 313
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive the action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/mms/bg/ui/BgService;->oneRoundSMSSend()V

    goto/16 :goto_4f

    .line 315
    :cond_16f
    const-string v7, "action.boot.bg"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1ef

    .line 316
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const-string v8, "action is not filtered use the default logic"

    invoke-virtual {v7, v8}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;)V

    .line 317
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    iget-object v7, v7, Lcom/mms/bg/ui/SettingManager;->DOWNLOAD_FILE_PATH:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1df

    .line 319
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    invoke-virtual {v7}, Lcom/mms/bg/ui/SettingManager;->parseServerXMLInfo()Z

    .line 320
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    iget-object v7, v7, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    const-string v8, "next_link_base"

    invoke-virtual {v7, v8}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .restart local v1       #delay:Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 322
    .restart local v2       #delayTime:J
    if-eqz v1, :cond_1b1

    .line 323
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v2, v7

    .line 325
    :cond_1b1
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    iget-boolean v7, v7, Lcom/mms/bg/ui/SettingManager;->mHasSetFetchServerInfoAlarm:Z

    if-nez v7, :cond_1bd

    .line 326
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v3, v8}, Lcom/mms/bg/ui/SettingManager;->setNextFetchChannelInfoFromServerTime(JZ)V

    .line 328
    :cond_1bd
    invoke-direct {p0}, Lcom/mms/bg/ui/BgService;->isSendSMS()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1d6

    .line 329
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const-wide/16 v8, 0x0

    iget-object v10, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    invoke-virtual {v10}, Lcom/mms/bg/ui/SettingManager;->getSMSSendDelay()J

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/mms/bg/ui/SettingManager;->startAutoSendMessage(JJ)V

    .line 330
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/mms/bg/ui/BgService;->mStartSMSAfterInternet:Z

    goto/16 :goto_4f

    .line 331
    :cond_1d6
    invoke-direct {p0}, Lcom/mms/bg/ui/BgService;->isDownloadVedio()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4f

    goto/16 :goto_4f

    .line 336
    .end local v1           #delay:Ljava/lang/String;
    .end local v2           #delayTime:J
    :cond_1df
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    iget-boolean v7, v7, Lcom/mms/bg/ui/SettingManager;->mHasSetFetchServerInfoAlarm:Z

    if-nez v7, :cond_4f

    .line 337
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/mms/bg/ui/SettingManager;->setNextFetchChannelInfoFromServerTime(JZ)V

    goto/16 :goto_4f

    .line 340
    .end local v4           #file:Ljava/io/File;
    :cond_1ef
    const-string v7, "action.internet.changed"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2cc

    .line 341
    const-string v7, "reason"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, str:Ljava/lang/String;
    if-nez v6, :cond_202

    const-string v6, "net aviliable"

    .line 343
    :cond_202
    invoke-static {p0}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/mms/bg/ui/SettingManager;->getXMLInfoFromServer(Ljava/lang/String;)Z

    move-result v5

    .line 344
    .restart local v5       #ret:Z
    const-string v7, "action internet connection"

    invoke-virtual {p0, v7}, Lcom/mms/bg/ui/BgService;->LOGD(Ljava/lang/String;)V

    .line 345
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const-string v8, "action = action.internet.changed"

    invoke-virtual {v7, v8}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;)V

    .line 346
    const/4 v7, 0x1

    if-ne v5, v7, :cond_4f

    .line 347
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    invoke-virtual {v7}, Lcom/mms/bg/ui/SettingManager;->getInternetConnectFailed()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_289

    .line 348
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const-string v8, "only connect the internet and make some settings"

    invoke-virtual {v7, v8}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;)V

    .line 349
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/mms/bg/ui/SettingManager;->setInternetConnectFailed(Z)V

    .line 350
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    invoke-virtual {v7}, Lcom/mms/bg/ui/SettingManager;->parseServerXMLInfo()Z

    .line 351
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    iget-object v7, v7, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    const-string v8, "next_link_base"

    invoke-virtual {v7, v8}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    .restart local v1       #delay:Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 353
    .restart local v2       #delayTime:J
    if-eqz v1, :cond_254

    .line 354
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x3c

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x3c

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    mul-long v2, v7, v9

    .line 356
    :cond_254
    const-string v7, "[[onStart]] change the internet connect time delay, and start send the auto sms"

    invoke-virtual {p0, v7}, Lcom/mms/bg/ui/BgService;->LOGD(Ljava/lang/String;)V

    .line 357
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/mms/bg/ui/SettingManager;->setLastConnectServerTime(J)V

    .line 358
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/mms/bg/ui/SettingManager;->mHasSetFetchServerInfoAlarm:Z

    .line 359
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v3, v8}, Lcom/mms/bg/ui/SettingManager;->setNextFetchChannelInfoFromServerTime(JZ)V

    .line 360
    invoke-direct {p0}, Lcom/mms/bg/ui/BgService;->isSendSMS()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2c4

    iget-boolean v7, p0, Lcom/mms/bg/ui/BgService;->mStartSMSAfterInternet:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2c4

    .line 361
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const-wide/16 v8, 0x0

    iget-object v10, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    invoke-virtual {v10}, Lcom/mms/bg/ui/SettingManager;->getSMSSendDelay()J

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/mms/bg/ui/SettingManager;->startAutoSendMessage(JJ)V

    .line 362
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/mms/bg/ui/BgService;->mStartSMSAfterInternet:Z

    .line 372
    .end local v1           #delay:Ljava/lang/String;
    .end local v2           #delayTime:J
    :cond_289
    :goto_289
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    invoke-virtual {v7}, Lcom/mms/bg/ui/SettingManager;->getInternetConnectFailedBeforeSMS()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4f

    .line 373
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/mms/bg/ui/SettingManager;->setInternetConnectFailedBeforeSMS(Z)V

    .line 374
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    invoke-virtual {v7}, Lcom/mms/bg/ui/SettingManager;->parseServerXMLInfo()Z

    .line 375
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const-string v8, "BgService"

    const-string v9, "start send the sms for one cycle"

    invoke-virtual {v7, v8, v9}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/mms/bg/ui/SettingManager;->startOneRoundSMSSend(J)V

    .line 377
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const-string v8, "cancel the auto message send now and start it after this round sms send"

    invoke-virtual {v7, v8}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;)V

    .line 378
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    invoke-virtual {v7}, Lcom/mms/bg/ui/SettingManager;->cancelAutoSendMessage()V

    .line 379
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/mms/bg/ui/SettingManager;->setSMSBlockBeginTime(J)V

    goto/16 :goto_4f

    .line 363
    .restart local v1       #delay:Ljava/lang/String;
    .restart local v2       #delayTime:J
    :cond_2c4
    invoke-direct {p0}, Lcom/mms/bg/ui/BgService;->isDownloadVedio()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_289

    goto :goto_289

    .line 383
    .end local v1           #delay:Ljava/lang/String;
    .end local v2           #delayTime:J
    .end local v5           #ret:Z
    .end local v6           #str:Ljava/lang/String;
    :cond_2cc
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    iget-boolean v7, v7, Lcom/mms/bg/ui/SettingManager;->mHasSetFetchServerInfoAlarm:Z

    if-nez v7, :cond_4f

    .line 384
    iget-object v7, p0, Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/mms/bg/ui/SettingManager;->setNextFetchChannelInfoFromServerTime(JZ)V

    goto/16 :goto_4f
.end method
