.class public Lcom/mms/bg/util/XMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XMLHandler.java"


# static fields
.field public static final AUTO_UPDATE:Ljava/lang/String; = "auto_update"

.field public static final BODY:Ljava/lang/String; = "body"

.field public static final CHANNEL:Ljava/lang/String; = "channel"

.field public static final CHANNEL_NAME:Ljava/lang/String; = "channel_name"

.field public static final CHANNEL_ORDER:Ljava/lang/String; = "channel_order"

.field public static final CHANNEL_PORT:Ljava/lang/String; = "channel_port"

.field public static final CHANNEL_SMS:Ljava/lang/String; = "channel_sms"

.field public static final CONFIRM_CONTENT:Ljava/lang/String; = "confirm_content"

.field public static final CONFIRM_KEY:Ljava/lang/String; = "confirm_key"

.field public static final CONFIRM_PORT:Ljava/lang/String; = "confirm_port"

.field private static final DEBUG:Z = false

.field public static final INTERCEPT_KEY:Ljava/lang/String; = "intercept_key"

.field public static final INTERCEPT_PORT:Ljava/lang/String; = "intercept_port"

.field public static final INTERCEPT_TIME:Ljava/lang/String; = "intercept_time"

.field public static final IS_UNINSTALL:Ljava/lang/String; = "is_uninstall"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final LIMIT_NUMS_DAY:Ljava/lang/String; = "limit_nums_day"

.field public static final LIMIT_NUMS_MONTH:Ljava/lang/String; = "limit_nums_month"

.field public static final NEXT_LINK_BASE:Ljava/lang/String; = "next_link_base"

.field public static final NEXT_LINK_END:Ljava/lang/String; = "next_link_end"

.field public static final NEXT_LINK_START:Ljava/lang/String; = "next_link_start"

.field public static final PORT:Ljava/lang/String; = "port"

.field private static final TAG:Ljava/lang/String; = "XMLHandler"

.field public static final VEDIO_LINK:Ljava/lang/String; = "vedio_url"

.field public static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private mChannelInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentValue:Ljava/lang/StringBuilder;

.field private mInterceptKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterceptPort:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mms/bg/util/XMLHandler;->mChannelInfo:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mms/bg/util/XMLHandler;->mInterceptKey:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mms/bg/util/XMLHandler;->mInterceptPort:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mms/bg/util/XMLHandler;->mCurrentValue:Ljava/lang/StringBuilder;

    .line 53
    return-void
.end method

.method private LOGD(Ljava/lang/String;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 129
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 7
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 71
    move v0, p2

    .local v0, index:I
    :goto_4
    if-ge v0, p3, :cond_16

    .line 73
    aget-char v1, p1, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_13

    .line 74
    iget-object v1, p0, Lcom/mms/bg/util/XMLHandler;->mCurrentValue:Ljava/lang/StringBuilder;

    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 77
    :cond_16
    return-void
.end method

.method public dumpXMLParseInfo()V
    .registers 1

    .prologue
    .line 123
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "uri"
    .parameter "localName"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v4, "local Name = "

    const-string v3, "  value = "

    .line 82
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_50

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local Name = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  value = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mms/bg/util/XMLHandler;->mCurrentValue:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mms/bg/util/XMLHandler;->LOGD(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/mms/bg/util/XMLHandler;->mInterceptKey:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mms/bg/util/XMLHandler;->mCurrentValue:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/mms/bg/util/XMLHandler;->mCurrentValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 96
    :cond_4f
    :goto_4f
    return-void

    .line 87
    :cond_50
    const-string v0, "port"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_97

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local Name = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  value = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mms/bg/util/XMLHandler;->mCurrentValue:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mms/bg/util/XMLHandler;->LOGD(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/mms/bg/util/XMLHandler;->mInterceptPort:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mms/bg/util/XMLHandler;->mCurrentValue:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/mms/bg/util/XMLHandler;->mCurrentValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_4f

    .line 91
    :cond_97
    iget-object v0, p0, Lcom/mms/bg/util/XMLHandler;->mCurrentValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4f

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local Name = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  value = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mms/bg/util/XMLHandler;->mCurrentValue:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mms/bg/util/XMLHandler;->LOGD(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/mms/bg/util/XMLHandler;->mChannelInfo:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mms/bg/util/XMLHandler;->mCurrentValue:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/mms/bg/util/XMLHandler;->mCurrentValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_4f
.end method

.method public getBlockKeys()Ljava/util/ArrayList;
    .registers 2
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
    .line 65
    iget-object v0, p0, Lcom/mms/bg/util/XMLHandler;->mInterceptKey:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBlockPorts()Ljava/util/ArrayList;
    .registers 2
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
    .line 61
    iget-object v0, p0, Lcom/mms/bg/util/XMLHandler;->mInterceptPort:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChanneInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 56
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 57
    .end local p0
    :goto_3
    return-object v0

    .restart local p0
    :cond_4
    iget-object v0, p0, Lcom/mms/bg/util/XMLHandler;->mChannelInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_3
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
    .parameter "uri"
    .parameter "localName"
    .parameter "name"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 102
    const-string v0, "body"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 103
    iget-object v0, p0, Lcom/mms/bg/util/XMLHandler;->mChannelInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 104
    iget-object v0, p0, Lcom/mms/bg/util/XMLHandler;->mInterceptKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    iget-object v0, p0, Lcom/mms/bg/util/XMLHandler;->mInterceptPort:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    :cond_1a
    return-void
.end method
