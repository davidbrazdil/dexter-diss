.class public Lcom/mms/bg/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LogUtil"

.field private static gLogUtil:Lcom/mms/bg/util/LogUtil;


# instance fields
.field private mBufferedWriter:Ljava/io/BufferedWriter;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mFileWriter:Ljava/io/FileWriter;

.field private mPath:Ljava/lang/String;

.field private mSerializer:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "path"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mms/bg/util/LogUtil;->mPath:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "[[yyyy,MMM,dd,h:mmaa]]: "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mms/bg/util/LogUtil;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 37
    iget-object v0, p0, Lcom/mms/bg/util/LogUtil;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 38
    iget-object v0, p0, Lcom/mms/bg/util/LogUtil;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mms/bg/util/LogUtil;->init(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/mms/bg/util/LogUtil;
    .registers 2
    .parameter "path"

    .prologue
    .line 28
    sget-object v0, Lcom/mms/bg/util/LogUtil;->gLogUtil:Lcom/mms/bg/util/LogUtil;

    if-nez v0, :cond_b

    .line 29
    new-instance v0, Lcom/mms/bg/util/LogUtil;

    invoke-direct {v0, p0}, Lcom/mms/bg/util/LogUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mms/bg/util/LogUtil;->gLogUtil:Lcom/mms/bg/util/LogUtil;

    .line 31
    :cond_b
    sget-object v0, Lcom/mms/bg/util/LogUtil;->gLogUtil:Lcom/mms/bg/util/LogUtil;

    return-object v0
.end method

.method private init(Ljava/lang/String;)V
    .registers 7
    .parameter "path"

    .prologue
    .line 66
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, logFile:Ljava/io/File;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_20

    .line 76
    :cond_e
    :goto_e
    :try_start_e
    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/mms/bg/util/LogUtil;->mFileWriter:Ljava/io/FileWriter;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_3f

    .line 81
    :goto_16
    :try_start_16
    new-instance v2, Ljava/io/BufferedWriter;

    iget-object v3, p0, Lcom/mms/bg/util/LogUtil;->mFileWriter:Ljava/io/FileWriter;

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lcom/mms/bg/util/LogUtil;->mBufferedWriter:Ljava/io/BufferedWriter;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_45

    .line 85
    :goto_1f
    return-void

    .line 71
    :catch_20
    move-exception v2

    move-object v0, v2

    .line 72
    .local v0, e:Ljava/io/IOException;
    const-string v2, "XmlLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[[init]] exception in createNewFile() method : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 77
    .end local v0           #e:Ljava/io/IOException;
    :catch_3f
    move-exception v2

    move-object v0, v2

    .line 78
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16

    .line 82
    .end local v0           #e:Ljava/io/IOException;
    :catch_45
    move-exception v2

    move-object v0, v2

    .line 83
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method


# virtual methods
.method public appendLog(Ljava/lang/String;)V
    .registers 8
    .parameter "log"

    .prologue
    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/mms/bg/util/LogUtil;->mBufferedWriter:Ljava/io/BufferedWriter;

    iget-object v2, p0, Lcom/mms/bg/util/LogUtil;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/mms/bg/util/LogUtil;->mBufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/mms/bg/util/LogUtil;->mBufferedWriter:Ljava/io/BufferedWriter;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/mms/bg/util/LogUtil;->mBufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_26

    .line 50
    :goto_25
    return-void

    .line 47
    :catch_26
    move-exception v1

    move-object v0, v1

    .line 48
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25
.end method

.method public release()V
    .registers 5

    .prologue
    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/mms/bg/util/LogUtil;->mBufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 55
    iget-object v2, p0, Lcom/mms/bg/util/LogUtil;->mFileWriter:Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_1c

    .line 59
    :goto_a
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mms/bg/util/LogUtil;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, logFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    .line 61
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 63
    :cond_1b
    return-void

    .line 56
    .end local v1           #logFile:Ljava/io/File;
    :catch_1c
    move-exception v2

    move-object v0, v2

    .line 57
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a
.end method
