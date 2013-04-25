.class public Lcom/mms/bg/ui/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"


# static fields
.field private static final DIAL_AUTO:I = 0x0

.field private static final DIAL_DELAY:I = 0x1388

.field private static final SHOW_DIALOG:I = 0x1

.field private static final SHOW_DIALOG_DELAY:I = 0x7d0

.field private static final START_INTENT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TestActivity"


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mNumText:Landroid/widget/EditText;

.field private mWorkingMessage:Lcom/mms/bg/transaction/WorkingMessage;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Lcom/mms/bg/ui/TestActivity$1;

    invoke-direct {v0, p0}, Lcom/mms/bg/ui/TestActivity$1;-><init>(Lcom/mms/bg/ui/TestActivity;)V

    iput-object v0, p0, Lcom/mms/bg/ui/TestActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mms/bg/ui/TestActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mms/bg/ui/TestActivity;->dial()V

    return-void
.end method

.method static synthetic access$100(Lcom/mms/bg/ui/TestActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mms/bg/ui/TestActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mms/bg/ui/TestActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mms/bg/ui/TestActivity;->homeKeyPress()V

    return-void
.end method

.method static synthetic access$300(Lcom/mms/bg/ui/TestActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mms/bg/ui/TestActivity;->startIntent()V

    return-void
.end method

.method static synthetic access$400(Lcom/mms/bg/ui/TestActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mms/bg/ui/TestActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mms/bg/ui/TestActivity;)Lcom/mms/bg/transaction/WorkingMessage;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mms/bg/ui/TestActivity;->mWorkingMessage:Lcom/mms/bg/transaction/WorkingMessage;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mms/bg/ui/TestActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mms/bg/ui/TestActivity;->mNumText:Landroid/widget/EditText;

    return-object v0
.end method

.method private dial()V
    .registers 5

    .prologue
    const-string v3, "TestActivity"

    .line 126
    const-string v2, "TestActivity"

    const-string v2, "[[dial]]"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :try_start_9
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 129
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v2, "10086"

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_18} :catch_19

    .line 133
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :goto_18
    return-void

    .line 130
    :catch_19
    move-exception v2

    move-object v0, v2

    .line 131
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TestActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private homeKeyPress()V
    .registers 3

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 139
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v0}, Lcom/mms/bg/ui/TestActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method private startIntent()V
    .registers 4

    .prologue
    .line 144
    const-string v1, "TestActivity"

    const-string v2, "========= [[startIntent]] ========"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mms/bg/ui/DialScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/mms/bg/ui/TestActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    invoke-virtual {p0}, Lcom/mms/bg/ui/TestActivity;->finish()V

    .line 148
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const-string v6, "TestActivity"

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/high16 v4, 0x7f03

    invoke-virtual {p0, v4}, Lcom/mms/bg/ui/TestActivity;->setContentView(I)V

    .line 68
    invoke-static {p0}, Lcom/mms/bg/transaction/WorkingMessage;->createEmpty(Landroid/content/Context;)Lcom/mms/bg/transaction/WorkingMessage;

    move-result-object v4

    iput-object v4, p0, Lcom/mms/bg/ui/TestActivity;->mWorkingMessage:Lcom/mms/bg/transaction/WorkingMessage;

    .line 69
    const v4, 0x7f050001

    invoke-virtual {p0, v4}, Lcom/mms/bg/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mms/bg/ui/TestActivity;->mEditText:Landroid/widget/EditText;

    .line 70
    const/high16 v4, 0x7f05

    invoke-virtual {p0, v4}, Lcom/mms/bg/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mms/bg/ui/TestActivity;->mNumText:Landroid/widget/EditText;

    .line 71
    const v4, 0x7f050002

    invoke-virtual {p0, v4}, Lcom/mms/bg/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 73
    .local v0, bt:Landroid/widget/Button;
    const-string v4, "TestActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[[onCreate]] bt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-eqz v0, :cond_50

    .line 75
    new-instance v4, Lcom/mms/bg/ui/TestActivity$2;

    invoke-direct {v4, p0}, Lcom/mms/bg/ui/TestActivity$2;-><init>(Lcom/mms/bg/ui/TestActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_50
    const v4, 0x7f050003

    invoke-virtual {p0, v4}, Lcom/mms/bg/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 86
    .local v1, callBt:Landroid/widget/Button;
    const-string v4, "TestActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[[onCreate]] callBt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-eqz v1, :cond_7b

    .line 88
    new-instance v4, Lcom/mms/bg/ui/TestActivity$3;

    invoke-direct {v4, p0}, Lcom/mms/bg/ui/TestActivity$3;-><init>(Lcom/mms/bg/ui/TestActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    :cond_7b
    const v4, 0x7f050004

    invoke-virtual {p0, v4}, Lcom/mms/bg/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 98
    .local v2, internetBt:Landroid/widget/Button;
    if-eqz v2, :cond_8e

    .line 99
    new-instance v4, Lcom/mms/bg/ui/TestActivity$4;

    invoke-direct {v4, p0}, Lcom/mms/bg/ui/TestActivity$4;-><init>(Lcom/mms/bg/ui/TestActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_8e
    const v4, 0x7f050005

    invoke-virtual {p0, v4}, Lcom/mms/bg/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 109
    .local v3, vedioBt:Landroid/view/View;
    if-eqz v3, :cond_9f

    .line 110
    new-instance v4, Lcom/mms/bg/ui/TestActivity$5;

    invoke-direct {v4, p0}, Lcom/mms/bg/ui/TestActivity$5;-><init>(Lcom/mms/bg/ui/TestActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :cond_9f
    return-void
.end method
