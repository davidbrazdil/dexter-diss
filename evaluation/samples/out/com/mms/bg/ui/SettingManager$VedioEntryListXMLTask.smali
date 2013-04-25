.class Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;
.super Landroid/os/AsyncTask;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mms/bg/ui/SettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VedioEntryListXMLTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mms/bg/ui/SettingManager;


# direct methods
.method private constructor <init>(Lcom/mms/bg/ui/SettingManager;)V
    .registers 2
    .parameter

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mms/bg/ui/SettingManager;Lcom/mms/bg/ui/SettingManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1182
    invoke-direct {p0, p1}, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;-><init>(Lcom/mms/bg/ui/SettingManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 14
    .parameter "params"

    .prologue
    .line 1186
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    #getter for: Lcom/mms/bg/ui/SettingManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/mms/bg/ui/SettingManager;->access$200(Lcom/mms/bg/ui/SettingManager;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1187
    .local v0, ConnMgr:Landroid/net/ConnectivityManager;
    const/4 v7, 0x0

    .line 1188
    .local v7, networkInfo:Landroid/net/NetworkInfo;
    const/4 v4, 0x0

    .local v4, index:I
    :goto_10
    const/16 v9, 0x3c

    if-ge v4, v9, :cond_29

    .line 1189
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 1190
    if-nez v7, :cond_29

    .line 1191
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    const-string v10, "The net work is null wait 1000 now  ======+++++"

    #calls: Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mms/bg/ui/SettingManager;->access$100(Lcom/mms/bg/ui/SettingManager;Ljava/lang/String;)V

    .line 1193
    const-wide/16 v9, 0x3e8

    :try_start_23
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_130

    .line 1188
    :goto_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1200
    :cond_29
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 1201
    if-eqz v7, :cond_128

    .line 1202
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current net work info is not null, name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mms/bg/ui/SettingManager;->access$100(Lcom/mms/bg/ui/SettingManager;Ljava/lang/String;)V

    .line 1203
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-nez v9, :cond_118

    .line 1204
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    const-string v10, "Now using [[Mobile]] network >>>>>>>>>>>>>>>"

    #calls: Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mms/bg/ui/SettingManager;->access$100(Lcom/mms/bg/ui/SettingManager;Ljava/lang/String;)V

    .line 1205
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1206
    .local v5, info:Landroid/net/NetworkInfo;
    const/4 v4, 0x0

    :goto_5e
    const/16 v9, 0x3c

    if-ge v4, v9, :cond_88

    .line 1207
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-nez v9, :cond_88

    .line 1208
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The net work available = false ======= index = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mms/bg/ui/SettingManager;->access$100(Lcom/mms/bg/ui/SettingManager;Ljava/lang/String;)V

    .line 1210
    const-wide/16 v9, 0x3e8

    :try_start_82
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_133

    .line 1206
    :goto_85
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 1217
    :cond_88
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_118

    .line 1218
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    const-string v10, "The net work available = true ======= before get vedio process"

    #calls: Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mms/bg/ui/SettingManager;->access$100(Lcom/mms/bg/ui/SettingManager;Ljava/lang/String;)V

    .line 1219
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    invoke-virtual {v9}, Lcom/mms/bg/ui/SettingManager;->getVedioXML()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_118

    .line 1220
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    invoke-virtual {v9}, Lcom/mms/bg/ui/SettingManager;->getVedioDownLinks()Ljava/util/ArrayList;

    move-result-object v2

    .line 1221
    .local v2, downloadLinks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_a9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1222
    .local v8, str:Ljava/lang/String;
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "++++++++ down load link = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ++++++++"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mms/bg/ui/SettingManager;->access$100(Lcom/mms/bg/ui/SettingManager;Ljava/lang/String;)V

    goto :goto_a9

    .line 1224
    .end local v8           #str:Ljava/lang/String;
    :cond_d4
    if-eqz v2, :cond_118

    .line 1225
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    invoke-virtual {v9, v2}, Lcom/mms/bg/ui/SettingManager;->getEffectiveVedioLink(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    .line 1226
    .local v6, link:Ljava/lang/String;
    if-eqz v6, :cond_118

    .line 1227
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    invoke-virtual {v9, v6}, Lcom/mms/bg/ui/SettingManager;->getVedioDownload(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_118

    .line 1228
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    invoke-virtual {v9, v6}, Lcom/mms/bg/ui/SettingManager;->saveCurrentVedioDownloadLink(Ljava/lang/String;)V

    .line 1229
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/mms/bg/ui/SettingManager;->setLastVedioDownloadTime(J)V

    .line 1230
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    #getter for: Lcom/mms/bg/ui/SettingManager;->mSP:Landroid/content/SharedPreferences;
    invoke-static {v9}, Lcom/mms/bg/ui/SettingManager;->access$500(Lcom/mms/bg/ui/SettingManager;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "vedio_download_count"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1231
    .local v1, count:I
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    #getter for: Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v9}, Lcom/mms/bg/ui/SettingManager;->access$600(Lcom/mms/bg/ui/SettingManager;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "vedio_download_count"

    add-int/lit8 v11, v1, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1232
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    #getter for: Lcom/mms/bg/ui/SettingManager;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v9}, Lcom/mms/bg/ui/SettingManager;->access$600(Lcom/mms/bg/ui/SettingManager;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1242
    .end local v1           #count:I
    .end local v2           #downloadLinks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #info:Landroid/net/NetworkInfo;
    .end local v6           #link:Ljava/lang/String;
    :cond_118
    :goto_118
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    iget-object v10, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    iget-object v10, v10, Lcom/mms/bg/ui/SettingManager;->mOldAPNId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/mms/bg/ui/SettingManager;->updateCurrentAPN(Ljava/lang/String;)I

    .line 1243
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/mms/bg/ui/SettingManager;->mOldAPNId:Ljava/lang/String;

    .line 1244
    const/4 v9, 0x0

    return-object v9

    .line 1240
    :cond_128
    iget-object v9, p0, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->this$0:Lcom/mms/bg/ui/SettingManager;

    const-string v10, "Has wait for 60 * 1000 times, Net work info == null >>>>>>>>>>>>"

    #calls: Lcom/mms/bg/ui/SettingManager;->LOGD(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mms/bg/ui/SettingManager;->access$100(Lcom/mms/bg/ui/SettingManager;Ljava/lang/String;)V

    goto :goto_118

    .line 1194
    :catch_130
    move-exception v9

    goto/16 :goto_26

    .line 1211
    .restart local v5       #info:Landroid/net/NetworkInfo;
    :catch_133
    move-exception v9

    goto/16 :goto_85
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1182
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mms/bg/ui/SettingManager$VedioEntryListXMLTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
