.class public Lcom/mms/bg/transaction/WorkingMessage;
.super Ljava/lang/Object;
.source "WorkingMessage.java"


# static fields
.field public static final ACTION_SENT_SMS:Ljava/lang/String; = "android.intent.action.SMS_SENT"

.field private static final DEBUG:Z = false

.field public static final EXTRA_SMS_NUM:Ljava/lang/String; = "android.sms.num"

.field public static final EXTRA_SMS_TEXT:Ljava/lang/String; = "android.sms.text"

.field private static final TAG:Ljava/lang/String; = "WorkingMessage"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDestNum:Ljava/lang/String;

.field private mSMSCenter:Ljava/lang/String;

.field private mSMSWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/mms/bg/transaction/WorkingMessage;->mContext:Landroid/content/Context;

    .line 80
    const-string v1, ""

    iput-object v1, p0, Lcom/mms/bg/transaction/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 81
    new-instance v0, Landroid/telephony/SmsMessage;

    invoke-direct {v0}, Landroid/telephony/SmsMessage;-><init>()V

    .line 82
    .local v0, smsMessage:Landroid/telephony/SmsMessage;
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mms/bg/transaction/WorkingMessage;->mSMSCenter:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public static createEmpty(Landroid/content/Context;)Lcom/mms/bg/transaction/WorkingMessage;
    .registers 2
    .parameter "activity"

    .prologue
    .line 90
    new-instance v0, Lcom/mms/bg/transaction/WorkingMessage;

    invoke-direct {v0, p0}, Lcom/mms/bg/transaction/WorkingMessage;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, msg:Lcom/mms/bg/transaction/WorkingMessage;
    return-object v0
.end method

.method private preSendSmsWorker(Ljava/lang/String;)V
    .registers 5
    .parameter "msgText"

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/mms/bg/transaction/WorkingMessage;->sendMessage()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 145
    :goto_3
    return-void

    .line 142
    :catch_4
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WorkingMessage"

    const-string v2, "[[preSendSmsWorker]] send sms failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mms/bg/transaction/WorkingMessage;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasText()Z
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mms/bg/transaction/WorkingMessage;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mms/bg/transaction/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public send()V
    .registers 3

    .prologue
    .line 127
    iget-object v1, p0, Lcom/mms/bg/transaction/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, msgText:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mms/bg/transaction/WorkingMessage;->preSendSmsWorker(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public sendMessage()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 148
    iget-object v1, p0, Lcom/mms/bg/transaction/WorkingMessage;->mText:Ljava/lang/CharSequence;

    if-nez v1, :cond_d

    .line 149
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Null message body or have multiple destinations."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_d
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 152
    .local v0, smsManager:Landroid/telephony/SmsManager;
    iget-object v1, p0, Lcom/mms/bg/transaction/WorkingMessage;->mDestNum:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mms/bg/transaction/WorkingMessage;->mDestNum:Ljava/lang/String;

    .line 154
    new-instance v7, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mms/bg/transaction/WorkingMessage;->mContext:Landroid/content/Context;

    const-class v2, Lcom/mms/bg/transaction/SmsReceiver;

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.SMS_SENT"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v1, "android.sms.text"

    iget-object v2, p0, Lcom/mms/bg/transaction/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 157
    const-string v1, "android.sms.num"

    iget-object v2, p0, Lcom/mms/bg/transaction/WorkingMessage;->mDestNum:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    iget-object v1, p0, Lcom/mms/bg/transaction/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v7, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 161
    .local v4, pIntent:Landroid/app/PendingIntent;
    :try_start_3f
    iget-object v1, p0, Lcom/mms/bg/transaction/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v1

    const-string v2, "WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMessage text = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/mms/bg/transaction/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " num = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/mms/bg/transaction/WorkingMessage;->mDestNum:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/mms/bg/transaction/WorkingMessage;->mDestNum:Ljava/lang/String;

    iget-object v2, p0, Lcom/mms/bg/transaction/WorkingMessage;->mSMSCenter:Ljava/lang/String;

    iget-object v3, p0, Lcom/mms/bg/transaction/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_7d} :catch_7f

    .line 163
    const/4 v1, 0x1

    return v1

    .line 164
    :catch_7f
    move-exception v1

    move-object v6, v1

    .line 165
    .local v6, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmsMessageSender.sendMessage: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from SmsManager.sendTextMessage()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDestNum(Ljava/lang/String;)V
    .registers 2
    .parameter "num"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mms/bg/transaction/WorkingMessage;->mDestNum:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mms/bg/transaction/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 103
    return-void
.end method
