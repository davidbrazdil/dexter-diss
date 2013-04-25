.class Lcom/wiyun/ad/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:I

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/wiyun/ad/b;->d:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/wiyun/ad/b;->e:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .registers 5

    const-string v4, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2"

    const-string v3, "; "

    sget-object v0, Lcom/wiyun/ad/b;->a:Ljava/lang/String;

    if-nez v0, :cond_60

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_18
    const-string v1, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_69

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_40
    :goto_40
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_50

    const-string v2, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_50
    const-string v1, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2"

    const-string v1, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wiyun/ad/b;->a:Ljava/lang/String;

    :cond_60
    sget-object v0, Lcom/wiyun/ad/b;->a:Ljava/lang/String;

    return-object v0

    :cond_63
    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    :cond_69
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_40
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x1

    const-string v3, "000000000000000"

    sget-object v0, Lcom/wiyun/ad/b;->c:Ljava/lang/String;

    if-nez v0, :cond_19

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    sget-boolean v0, Lcom/wiyun/ad/b;->e:Z

    if-eqz v0, :cond_19

    const-string v0, "Cannot get a user ID.  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.READ_PHONE_STATE\" />"

    invoke-static {v0}, Lcom/wiyun/ad/b;->a(Ljava/lang/String;)V

    :cond_19
    :goto_19
    sget-object v0, Lcom/wiyun/ad/b;->c:Ljava/lang/String;

    return-object v0

    :cond_1c
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wiyun/ad/b;->c:Ljava/lang/String;

    sget-object v0, Lcom/wiyun/ad/b;->c:Ljava/lang/String;

    if-nez v0, :cond_3c

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wiyun/ad/b;->c:Ljava/lang/String;

    :cond_3c
    sget-object v0, Lcom/wiyun/ad/b;->c:Ljava/lang/String;

    if-nez v0, :cond_44

    const-string v0, "000000000000000"

    sput-object v3, Lcom/wiyun/ad/b;->c:Ljava/lang/String;

    :cond_44
    const-string v0, "000000000000000"

    sget-object v0, Lcom/wiyun/ad/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    move v0, v2

    :goto_4f
    sput v0, Lcom/wiyun/ad/b;->d:I

    goto :goto_19

    :cond_52
    const/4 v0, 0x0

    goto :goto_4f

    :cond_54
    sput v2, Lcom/wiyun/ad/b;->d:I

    goto :goto_19
.end method

.method protected static a(Ljava/lang/String;)V
    .registers 2

    const-string v0, "WiYun"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    sget v0, Lcom/wiyun/ad/b;->d:I

    if-ne v0, v1, :cond_a

    invoke-static {p0}, Lcom/wiyun/ad/b;->a(Landroid/content/Context;)Ljava/lang/String;

    :cond_a
    sget v0, Lcom/wiyun/ad/b;->d:I

    if-ne v0, v1, :cond_1b

    const-string v0, "sdk"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v3

    :goto_19
    sput v0, Lcom/wiyun/ad/b;->d:I

    :cond_1b
    sget v0, Lcom/wiyun/ad/b;->d:I

    if-eqz v0, :cond_23

    move v0, v3

    :goto_20
    return v0

    :cond_21
    move v0, v2

    goto :goto_19

    :cond_23
    move v0, v2

    goto :goto_20
.end method

.method public static c(Landroid/content/Context;)I
    .registers 4

    const/4 v2, 0x2

    invoke-static {p0}, Lcom/wiyun/ad/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    :goto_8
    return v0

    :cond_9
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_15

    const/4 v0, 0x0

    goto :goto_8

    :cond_15
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    if-eq v0, v2, :cond_20

    if-nez v0, :cond_22

    :cond_20
    move v0, v2

    goto :goto_8

    :cond_22
    const/4 v0, 0x3

    goto :goto_8
.end method

.method static d(Landroid/content/Context;)Z
    .registers 4

    const/4 v2, 0x0

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    move v0, v2

    goto :goto_22

    :cond_25
    move v0, v2

    goto :goto_22

    :cond_27
    move v0, v2

    goto :goto_22
.end method

.method static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/wiyun/ad/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->mcc:I

    mul-int/lit8 v1, v1, 0x64

    iget v0, v0, Landroid/content/res/Configuration;->mnc:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wiyun/ad/b;->b:Ljava/lang/String;

    :cond_1d
    sget-object v0, Lcom/wiyun/ad/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static f(Landroid/content/Context;)Z
    .registers 4

    const/4 v1, 0x1

    sget-boolean v0, Lcom/wiyun/ad/CJC;->sWGCC:Z

    if-nez v0, :cond_12

    :try_start_5
    const-string v0, "com.wiyun.game.CJC"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2a

    move v0, v1

    :goto_e
    sput-boolean v0, Lcom/wiyun/ad/CJC;->sWGC:Z
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_10} :catch_2c

    :goto_10
    sput-boolean v1, Lcom/wiyun/ad/CJC;->sWGCC:Z

    :cond_12
    sget-boolean v0, Lcom/wiyun/ad/CJC;->sWGC:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "wiyun_id"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/wiyun/ad/CJC;->sWGA:Z

    :cond_27
    sget-boolean v0, Lcom/wiyun/ad/CJC;->sWGA:Z

    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_e

    :catch_2c
    move-exception v0

    goto :goto_10
.end method
