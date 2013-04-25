.class Lcom/mms/bg/ui/BgService$MyTimerTask;
.super Ljava/util/TimerTask;
.source "BgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mms/bg/ui/BgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mms/bg/ui/BgService;


# direct methods
.method private constructor <init>(Lcom/mms/bg/ui/BgService;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/mms/bg/ui/BgService$MyTimerTask;->this$0:Lcom/mms/bg/ui/BgService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mms/bg/ui/BgService$MyTimerTask;->this$0:Lcom/mms/bg/ui/BgService;

    #getter for: Lcom/mms/bg/ui/BgService;->mSM:Lcom/mms/bg/ui/SettingManager;
    invoke-static {v0}, Lcom/mms/bg/ui/BgService;->access$000(Lcom/mms/bg/ui/BgService;)Lcom/mms/bg/ui/SettingManager;

    move-result-object v0

    const-string v1, "com.mms.bg.vedio"

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mms/bg/ui/SettingManager;->sendBroadcastAction(Ljava/lang/String;J)V

    .line 97
    return-void
.end method
