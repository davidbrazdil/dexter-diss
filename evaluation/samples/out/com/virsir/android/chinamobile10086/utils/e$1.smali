.class final Lcom/virsir/android/chinamobile10086/utils/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/wiyun/ad/AdView$AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virsir/android/chinamobile10086/utils/e;->a(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 2

    .prologue
    const-string v0, "AD_wiyun:onAdClicked"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoadFailed()V
    .registers 2

    .prologue
    const-string v0, "AD_wiyun:onAdLoadFailed"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded()V
    .registers 2

    .prologue
    const-string v0, "AD_wiyun:onAdLoaded"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onExitButtonClicked()V
    .registers 2

    .prologue
    const-string v0, "AD_wiyun:onExitButtonClicked"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    return-void
.end method
