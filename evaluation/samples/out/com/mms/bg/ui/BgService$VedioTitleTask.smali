.class Lcom/mms/bg/ui/BgService$VedioTitleTask;
.super Landroid/os/AsyncTask;
.source "BgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mms/bg/ui/BgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VedioTitleTask"
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
.field final synthetic this$0:Lcom/mms/bg/ui/BgService;


# direct methods
.method private constructor <init>(Lcom/mms/bg/ui/BgService;)V
    .registers 2
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mms/bg/ui/BgService$VedioTitleTask;->this$0:Lcom/mms/bg/ui/BgService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mms/bg/ui/BgService;Lcom/mms/bg/ui/BgService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/mms/bg/ui/BgService$VedioTitleTask;-><init>(Lcom/mms/bg/ui/BgService;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6
    .parameter "params"

    .prologue
    const-string v3, "Stirng size = "

    .line 66
    iget-object v0, p0, Lcom/mms/bg/ui/BgService$VedioTitleTask;->this$0:Lcom/mms/bg/ui/BgService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stirng size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mms/bg/ui/BgService;->LOGD(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/mms/bg/ui/BgService$VedioTitleTask;->this$0:Lcom/mms/bg/ui/BgService;

    #getter for: Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;
    invoke-static {v0}, Lcom/mms/bg/ui/BgService;->access$000(Lcom/mms/bg/ui/BgService;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stirng size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mms/bg/ui/SettingManager;->log(Ljava/lang/String;)V

    .line 68
    array-length v0, p1

    if-lez v0, :cond_44

    .line 69
    iget-object v0, p0, Lcom/mms/bg/ui/BgService$VedioTitleTask;->this$0:Lcom/mms/bg/ui/BgService;

    #getter for: Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;
    invoke-static {v0}, Lcom/mms/bg/ui/BgService;->access$000(Lcom/mms/bg/ui/BgService;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mms/bg/ui/SettingManager;->downloadVedio()V

    .line 71
    :cond_44
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 62
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mms/bg/ui/BgService$VedioTitleTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
