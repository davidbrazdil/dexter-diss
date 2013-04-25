.class public Lcom/wiyun/ad/AdView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wiyun/ad/AdView$AdListener;,
        Lcom/wiyun/ad/AdView$a;
    }
.end annotation


# static fields
.field public static final AD_TYPE_BANNER:I = 0x2

.field public static final AD_TYPE_FULL_SCREEN:I = 0x3

.field public static final AD_TYPE_TEXT:I = 0x1

.field public static final TRANSITION_BOTTOM_PUSH:I = 0x6

.field public static final TRANSITION_FADE:I = 0x7

.field public static final TRANSITION_FLIP_X:I = 0x1

.field public static final TRANSITION_FLIP_Y:I = 0x2

.field public static final TRANSITION_LEFT_PUSH:I = 0x3

.field public static final TRANSITION_RANDOM:I = 0x0

.field public static final TRANSITION_RIGHT_PUSH:I = 0x4

.field public static final TRANSITION_TOP_PUSH:I = 0x5


# instance fields
.field private a:Lcom/wiyun/ad/a;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Ljava/util/Timer;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Z

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Lcom/wiyun/ad/AdView$AdListener;

.field private r:Lcom/wiyun/ad/m;

.field private s:Z

.field private t:Lcom/wiyun/ad/r;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/wiyun/ad/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wiyun/ad/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v6, p0, Lcom/wiyun/ad/AdView;->f:I

    iput v6, p0, Lcom/wiyun/ad/AdView;->g:I

    iput v4, p0, Lcom/wiyun/ad/AdView;->l:I

    const-string v0, "*/*"

    iput-object v0, p0, Lcom/wiyun/ad/AdView;->m:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/wiyun/ad/AdView;->setFocusable(Z)V

    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/wiyun/ad/AdView;->setDescendantFocusability(I)V

    invoke-virtual {p0, v3}, Lcom/wiyun/ad/AdView;->setClickable(Z)V

    if-eqz p2, :cond_8c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://schemas.android.com/apk/res/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textColor"

    invoke-interface {p2, v0, v1, v6}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "backgroundColor"

    invoke-interface {p2, v0, v2, v6}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eqz v1, :cond_41

    invoke-virtual {p0, v1}, Lcom/wiyun/ad/AdView;->setTextColor(I)V

    :cond_41
    if-eqz v2, :cond_46

    invoke-virtual {p0, v2}, Lcom/wiyun/ad/AdView;->setBackgroundColor(I)V

    :cond_46
    const-string v1, "resId"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wiyun/ad/AdView;->n:Ljava/lang/String;

    const-string v1, "testMode"

    invoke-interface {p2, v0, v1, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/wiyun/ad/AdView;->k:Z

    const-string v1, "testAdType"

    invoke-interface {p2, v0, v1, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/wiyun/ad/AdView;->l:I

    const-string v1, "showLoadingHint"

    invoke-interface {p2, v0, v1, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/wiyun/ad/AdView;->p:Z

    const-string v1, "refreshInterval"

    invoke-interface {p2, v0, v1, v6}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/wiyun/ad/AdView;->setRefreshInterval(I)V

    const-string v1, "goneIfFail"

    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->isGoneIfFail()Z

    move-result v2

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/wiyun/ad/AdView;->setGoneIfFail(Z)V

    const-string v1, "transition"

    invoke-interface {p2, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/wiyun/ad/AdView;->j:I

    const-string v1, "autoStart"

    invoke-interface {p2, v0, v1, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wiyun/ad/AdView;->i:Z

    :cond_8c
    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_a4

    const-wide/32 v1, 0x5265c00

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    array-length v5, v0

    :goto_a2
    if-lt v6, v5, :cond_a5

    :cond_a4
    return-void

    :cond_a5
    aget-object v7, v0, v6

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long/2addr v8, v3

    cmp-long v8, v8, v1

    if-lez v8, :cond_b3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_b3
    add-int/lit8 v6, v6, 0x1

    goto :goto_a2
.end method

.method static synthetic a(Lcom/wiyun/ad/AdView;)Lcom/wiyun/ad/a;
    .registers 2

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    return-object v0
.end method

.method private a(Landroid/widget/LinearLayout;)V
    .registers 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/wiyun/ad/AdView;->s:Z

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iput-boolean v5, p0, Lcom/wiyun/ad/AdView;->s:Z

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x4080

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/wiyun/ad/AdView$4;

    invoke-direct {v1, p0, p1}, Lcom/wiyun/ad/AdView$4;-><init>(Lcom/wiyun/ad/AdView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7
.end method

.method static synthetic a(Lcom/wiyun/ad/AdView;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/wiyun/ad/AdView;->u:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/wiyun/ad/AdView;Landroid/widget/LinearLayout;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/wiyun/ad/AdView;->a(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic a(Lcom/wiyun/ad/AdView;Lcom/wiyun/ad/a;)V
    .registers 2

    iput-object p1, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    return-void
.end method

.method static synthetic a(Lcom/wiyun/ad/AdView;Lcom/wiyun/ad/r;)V
    .registers 2

    iput-object p1, p0, Lcom/wiyun/ad/AdView;->t:Lcom/wiyun/ad/r;

    return-void
.end method

.method static synthetic a(Lcom/wiyun/ad/AdView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/wiyun/ad/AdView;->c:Z

    return-void
.end method

.method private a(Lcom/wiyun/ad/a;)V
    .registers 5

    iput-object p1, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v0}, Lcom/wiyun/ad/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private a(Lcom/wiyun/ad/a;I)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_be

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_8
    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Lcom/wiyun/ad/AdView$5;

    invoke-direct {v2, p0, p1}, Lcom/wiyun/ad/AdView$5;-><init>(Lcom/wiyun/ad/AdView;Lcom/wiyun/ad/a;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    invoke-virtual {v2, v1}, Lcom/wiyun/ad/a;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v0}, Lcom/wiyun/ad/a;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :pswitch_3b
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/high16 v3, -0x4080

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_8

    :pswitch_5b
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, -0x4080

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_8

    :pswitch_7b
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, -0x4080

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_8

    :pswitch_9c
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x4080

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f80

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_8

    nop

    :pswitch_data_be
    .packed-switch 0x3
        :pswitch_3b
        :pswitch_5b
        :pswitch_7b
        :pswitch_9c
    .end packed-switch
.end method

.method private a(Z)V
    .registers 8

    monitor-enter p0

    if-eqz p1, :cond_28

    :try_start_3
    iget v0, p0, Lcom/wiyun/ad/AdView;->d:I

    if-lez v0, :cond_28

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->e:Ljava/util/Timer;

    if-nez v0, :cond_26

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wiyun/ad/AdView;->e:Ljava/util/Timer;

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->e:Ljava/util/Timer;

    new-instance v1, Lcom/wiyun/ad/AdView$3;

    invoke-direct {v1, p0}, Lcom/wiyun/ad/AdView$3;-><init>(Lcom/wiyun/ad/AdView;)V

    iget v2, p0, Lcom/wiyun/ad/AdView;->d:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iget v4, p0, Lcom/wiyun/ad/AdView;->d:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_26
    :goto_26
    monitor-exit p0

    return-void

    :cond_28
    iget-object v0, p0, Lcom/wiyun/ad/AdView;->e:Ljava/util/Timer;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wiyun/ad/AdView;->e:Ljava/util/Timer;

    goto :goto_26

    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v0
.end method

.method static synthetic b(Lcom/wiyun/ad/AdView;)V
    .registers 1

    invoke-direct {p0}, Lcom/wiyun/ad/AdView;->e()V

    return-void
.end method

.method static synthetic b(Lcom/wiyun/ad/AdView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/wiyun/ad/AdView;->s:Z

    return-void
.end method

.method private b(Lcom/wiyun/ad/a;)V
    .registers 6

    iget-boolean v0, p0, Lcom/wiyun/ad/AdView;->c:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wiyun/ad/AdView;->c:Z

    iget v0, p0, Lcom/wiyun/ad/AdView;->j:I

    if-nez v0, :cond_1c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    :cond_1c
    packed-switch v0, :pswitch_data_2c

    invoke-direct {p0, p1, v0}, Lcom/wiyun/ad/AdView;->b(Lcom/wiyun/ad/a;I)V

    goto :goto_4

    :pswitch_23
    invoke-direct {p0, p1, v0}, Lcom/wiyun/ad/AdView;->a(Lcom/wiyun/ad/a;I)V

    goto :goto_4

    :pswitch_27
    invoke-direct {p0, p1}, Lcom/wiyun/ad/AdView;->c(Lcom/wiyun/ad/a;)V

    goto :goto_4

    nop

    :pswitch_data_2c
    .packed-switch 0x3
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_27
    .end packed-switch
.end method

.method private b(Lcom/wiyun/ad/a;I)V
    .registers 11

    const/4 v7, 0x2

    const/high16 v1, 0x4000

    const/4 v6, 0x1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/wiyun/ad/a;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v1

    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v1

    const v0, -0x41333333

    if-ne p2, v7, :cond_4a

    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->getHeight()I

    move-result v1

    :goto_20
    int-to-float v1, v1

    mul-float v5, v0, v1

    new-instance v0, Lcom/wiyun/ad/q;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    if-eq p2, v7, :cond_4f

    move v7, v6

    :goto_2b
    invoke-direct/range {v0 .. v7}, Lcom/wiyun/ad/q;-><init>(FFFFFZZ)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/wiyun/ad/q;->setDuration(J)V

    invoke-virtual {v0, v6}, Lcom/wiyun/ad/q;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wiyun/ad/q;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/wiyun/ad/AdView$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/wiyun/ad/AdView$8;-><init>(Lcom/wiyun/ad/AdView;Lcom/wiyun/ad/a;I)V

    invoke-virtual {v0, v1}, Lcom/wiyun/ad/q;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/wiyun/ad/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_4a
    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->getWidth()I

    move-result v1

    goto :goto_20

    :cond_4f
    const/4 v7, 0x0

    goto :goto_2b
.end method

.method static synthetic c(Lcom/wiyun/ad/AdView;)V
    .registers 1

    invoke-direct {p0}, Lcom/wiyun/ad/AdView;->d()V

    return-void
.end method

.method private c(Lcom/wiyun/ad/a;)V
    .registers 9

    const-wide/16 v5, 0x2bc

    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Lcom/wiyun/ad/AdView$6;

    invoke-direct {v2, p0, p1}, Lcom/wiyun/ad/AdView$6;-><init>(Lcom/wiyun/ad/AdView;Lcom/wiyun/ad/a;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    invoke-virtual {v2, v0}, Lcom/wiyun/ad/a;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v1}, Lcom/wiyun/ad/a;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic d(Lcom/wiyun/ad/AdView;)I
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method private d()V
    .registers 8

    const/4 v6, 0x0

    const-string v2, "WiYun"

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->r:Lcom/wiyun/ad/m;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->r:Lcom/wiyun/ad/m;

    invoke-virtual {v0}, Lcom/wiyun/ad/m;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->r:Lcom/wiyun/ad/m;

    invoke-virtual {v0, v6}, Lcom/wiyun/ad/m;->a(Z)V

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->r:Lcom/wiyun/ad/m;

    invoke-virtual {p0, v0}, Lcom/wiyun/ad/AdView;->removeView(Landroid/view/View;)V

    :cond_19
    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    invoke-virtual {v0, v6}, Lcom/wiyun/ad/a;->setVisibility(I)V

    :cond_22
    iget-object v0, p0, Lcom/wiyun/ad/AdView;->t:Lcom/wiyun/ad/r;

    if-eqz v0, :cond_109

    monitor-enter p0

    :try_start_27
    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->t:Lcom/wiyun/ad/r;

    iget-object v1, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    invoke-virtual {v1}, Lcom/wiyun/ad/a;->a()Lcom/wiyun/ad/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wiyun/ad/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    invoke-virtual {v0}, Lcom/wiyun/ad/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    invoke-virtual {p0, v0}, Lcom/wiyun/ad/AdView;->addView(Landroid/view/View;)V

    :cond_46
    iget-object v0, p0, Lcom/wiyun/ad/AdView;->t:Lcom/wiyun/ad/r;

    invoke-virtual {v0}, Lcom/wiyun/ad/r;->a()V

    :goto_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_27 .. :try_end_4c} :catchall_b7

    :cond_4c
    :goto_4c
    iput-boolean v6, p0, Lcom/wiyun/ad/AdView;->b:Z

    return-void

    :cond_4f
    :try_start_4f
    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    if-nez v0, :cond_ba

    const/4 v0, 0x1

    :goto_54
    new-instance v1, Lcom/wiyun/ad/a;

    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/wiyun/ad/AdView;->t:Lcom/wiyun/ad/r;

    iget-object v4, p0, Lcom/wiyun/ad/AdView;->q:Lcom/wiyun/ad/AdView$AdListener;

    invoke-direct {v1, v2, v3, v4}, Lcom/wiyun/ad/a;-><init>(Landroid/content/Context;Lcom/wiyun/ad/r;Lcom/wiyun/ad/AdView$AdListener;)V

    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->getBackgroundColor()I

    move-result v2

    if-nez v2, :cond_6b

    iget-object v2, p0, Lcom/wiyun/ad/AdView;->t:Lcom/wiyun/ad/r;

    iget v2, v2, Lcom/wiyun/ad/r;->k:I

    :cond_6b
    if-nez v2, :cond_6f

    const/high16 v2, -0x100

    :cond_6f
    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->getTextColor()I

    move-result v3

    if-nez v3, :cond_79

    iget-object v3, p0, Lcom/wiyun/ad/AdView;->t:Lcom/wiyun/ad/r;

    iget v3, v3, Lcom/wiyun/ad/r;->h:I

    :cond_79
    if-nez v3, :cond_7c

    const/4 v3, -0x1

    :cond_7c
    invoke-virtual {v1, v2}, Lcom/wiyun/ad/a;->setBackgroundColor(I)V

    invoke-virtual {v1, v3}, Lcom/wiyun/ad/a;->a(I)V

    invoke-static {p0}, Lcom/wiyun/ad/AdView;->d(Lcom/wiyun/ad/AdView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wiyun/ad/a;->setVisibility(I)V
    :try_end_89
    .catchall {:try_start_4f .. :try_end_89} :catchall_b7

    :try_start_89
    iget-object v3, p0, Lcom/wiyun/ad/AdView;->q:Lcom/wiyun/ad/AdView$AdListener;
    :try_end_8b
    .catchall {:try_start_89 .. :try_end_8b} :catchall_b7
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8b} :catch_ae

    if-eqz v3, :cond_92

    :try_start_8d
    iget-object v3, p0, Lcom/wiyun/ad/AdView;->q:Lcom/wiyun/ad/AdView$AdListener;

    invoke-interface {v3}, Lcom/wiyun/ad/AdView$AdListener;->onAdLoaded()V
    :try_end_92
    .catchall {:try_start_8d .. :try_end_92} :catchall_b7
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_92} :catch_bc

    :cond_92
    :goto_92
    :try_start_92
    invoke-virtual {p0, v1}, Lcom/wiyun/ad/AdView;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/wiyun/ad/AdView;->t:Lcom/wiyun/ad/r;

    iget v3, v3, Lcom/wiyun/ad/r;->d:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a6

    iget-object v3, p0, Lcom/wiyun/ad/AdView;->v:Landroid/view/View;

    if-nez v3, :cond_a6

    invoke-direct {p0}, Lcom/wiyun/ad/AdView;->f()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/wiyun/ad/AdView;->v:Landroid/view/View;

    :cond_a6
    if-nez v2, :cond_ec

    if-eqz v0, :cond_c5

    invoke-direct {p0, v1}, Lcom/wiyun/ad/AdView;->a(Lcom/wiyun/ad/a;)V
    :try_end_ad
    .catchall {:try_start_92 .. :try_end_ad} :catchall_b7
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_ad} :catch_ae

    goto :goto_4b

    :catch_ae
    move-exception v0

    :try_start_af
    const-string v1, "WiYun"

    const-string v2, "Unhandled exception placing AdContainer into AdView."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    :catchall_b7
    move-exception v0

    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_af .. :try_end_b9} :catchall_b7

    throw v0

    :cond_ba
    move v0, v6

    goto :goto_54

    :catch_bc
    move-exception v3

    :try_start_bd
    const-string v4, "WiYun"

    const-string v5, "Unhandled exception raised in your AdListener.onAdLoaded()."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_92

    :cond_c5
    iget-boolean v0, p0, Lcom/wiyun/ad/AdView;->p:Z

    if-eqz v0, :cond_e7

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    invoke-virtual {p0, v0}, Lcom/wiyun/ad/AdView;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/wiyun/ad/AdView;->e()V

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    invoke-virtual {v0}, Lcom/wiyun/ad/a;->a()Lcom/wiyun/ad/r;

    move-result-object v0

    if-eqz v0, :cond_e2

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    invoke-virtual {v0}, Lcom/wiyun/ad/a;->a()Lcom/wiyun/ad/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wiyun/ad/r;->a()V

    :cond_e2
    invoke-direct {p0, v1}, Lcom/wiyun/ad/AdView;->a(Lcom/wiyun/ad/a;)V

    goto/16 :goto_4b

    :cond_e7
    invoke-direct {p0, v1}, Lcom/wiyun/ad/AdView;->b(Lcom/wiyun/ad/a;)V

    goto/16 :goto_4b

    :cond_ec
    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    invoke-virtual {p0, v0}, Lcom/wiyun/ad/AdView;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/wiyun/ad/AdView;->e()V

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    invoke-virtual {v0}, Lcom/wiyun/ad/a;->a()Lcom/wiyun/ad/r;

    move-result-object v0

    if-eqz v0, :cond_105

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    invoke-virtual {v0}, Lcom/wiyun/ad/a;->a()Lcom/wiyun/ad/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wiyun/ad/r;->a()V

    :cond_105
    iput-object v1, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;
    :try_end_107
    .catchall {:try_start_bd .. :try_end_107} :catchall_b7
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_107} :catch_ae

    goto/16 :goto_4b

    :cond_109
    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    if-eqz v0, :cond_11a

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    invoke-virtual {v0}, Lcom/wiyun/ad/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_11a

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    invoke-virtual {p0, v0}, Lcom/wiyun/ad/AdView;->addView(Landroid/view/View;)V

    :cond_11a
    iget-object v0, p0, Lcom/wiyun/ad/AdView;->q:Lcom/wiyun/ad/AdView$AdListener;

    if-eqz v0, :cond_4c

    :try_start_11e
    iget-object v0, p0, Lcom/wiyun/ad/AdView;->q:Lcom/wiyun/ad/AdView$AdListener;

    invoke-interface {v0}, Lcom/wiyun/ad/AdView$AdListener;->onAdLoadFailed()V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_123} :catch_125

    goto/16 :goto_4c

    :catch_125
    move-exception v0

    const-string v1, "WiYun"

    const-string v1, "Unhandled exception raised in your AdListener.onLoadAdFailed()."

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4c
.end method

.method static synthetic e(Lcom/wiyun/ad/AdView;)Lcom/wiyun/ad/r;
    .registers 2

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->t:Lcom/wiyun/ad/r;

    return-object v0
.end method

.method private e()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->t:Lcom/wiyun/ad/r;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->t:Lcom/wiyun/ad/r;

    iget v0, v0, Lcom/wiyun/ad/r;->d:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->v:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->v:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/wiyun/ad/AdView;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/wiyun/ad/AdView;->v:Landroid/view/View;

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v2, p0, Lcom/wiyun/ad/AdView;->w:Landroid/graphics/drawable/Drawable;

    :cond_22
    return-void
.end method

.method private f()Landroid/view/View;
    .registers 13

    const/4 v10, -0x2

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7f

    :try_start_6
    sget-object v0, Lcom/wiyun/ad/i;->c:[B

    const/4 v1, 0x0

    sget-object v2, Lcom/wiyun/ad/i;->c:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_f} :catch_9d

    move-result-object v0

    :try_start_10
    sget-object v1, Lcom/wiyun/ad/i;->a:[B

    const/4 v2, 0x0

    sget-object v3, Lcom/wiyun/ad/i;->a:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_19
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_19} :catch_c3

    move-result-object v1

    :try_start_1a
    sget-object v2, Lcom/wiyun/ad/i;->b:[B

    const/4 v3, 0x0

    sget-object v4, Lcom/wiyun/ad/i;->b:[B

    array-length v4, v4

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_23
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_23} :catch_c8

    move-result-object v2

    :try_start_24
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const v9, 0x10100a7

    aput v9, v7, v8

    invoke-virtual {v6, v7, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const v9, 0x101009c

    aput v9, v7, v8

    invoke-virtual {v6, v7, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const v9, 0x10100a1

    aput v9, v7, v8

    invoke-virtual {v6, v7, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_d2

    invoke-virtual {v6, v7, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_da

    invoke-virtual {v6, v5, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_e2

    invoke-virtual {v6, v5, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-virtual {v6, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/wiyun/ad/AdView;->w:Landroid/graphics/drawable/Drawable;
    :try_end_7f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_24 .. :try_end_7f} :catch_cc

    :cond_7f
    :goto_7f
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/wiyun/ad/AdView;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x35

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0, v1}, Lcom/wiyun/ad/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    :catch_9d
    move-exception v0

    move-object v0, v5

    move-object v1, v5

    move-object v2, v5

    :goto_a1
    if-eqz v2, :cond_ac

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_ac

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_ac
    if-eqz v1, :cond_b7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_b7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b7
    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_7f

    :catch_c3
    move-exception v1

    move-object v1, v5

    move-object v2, v0

    move-object v0, v5

    goto :goto_a1

    :catch_c8
    move-exception v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_a1

    :catch_cc
    move-exception v3

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto :goto_a1

    nop

    :array_d2
    .array-data 0x4
        0xa7t 0x0t 0x1t 0x1t
        0x9dt 0x0t 0x1t 0x1t
    .end array-data

    :array_da
    .array-data 0x4
        0x9ct 0x0t 0x1t 0x1t
        0x9dt 0x0t 0x1t 0x1t
    .end array-data

    :array_e2
    .array-data 0x4
        0xa1t 0x0t 0x1t 0x1t
        0x9dt 0x0t 0x1t 0x1t
    .end array-data
.end method

.method static synthetic f(Lcom/wiyun/ad/AdView;)Lcom/wiyun/ad/AdView$AdListener;
    .registers 2

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->q:Lcom/wiyun/ad/AdView$AdListener;

    return-object v0
.end method


# virtual methods
.method a()V
    .registers 11

    const/4 v4, 0x5

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/wiyun/ad/AdView;->s:Z

    if-eqz v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iput-boolean v5, p0, Lcom/wiyun/ad/AdView;->s:Z

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v4, v4, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_a8

    invoke-direct {v3, v4, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v9, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1030047

    invoke-virtual {v9, v3, v4}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v9, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v3, p0, Lcom/wiyun/ad/AdView;->t:Lcom/wiyun/ad/r;

    iget-object v3, v3, Lcom/wiyun/ad/r;->g:Ljava/lang/String;

    invoke-virtual {v9, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f80

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v9, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/wiyun/ad/AdView$2;

    invoke-direct {v3, p0, v0}, Lcom/wiyun/ad/AdView$2;-><init>(Lcom/wiyun/ad/AdView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v9, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v3, Lcom/wiyun/ad/AdView$1;

    invoke-direct {v3, p0, v0}, Lcom/wiyun/ad/AdView$1;-><init>(Lcom/wiyun/ad/AdView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v9, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->getHeight()I

    move-result v4

    invoke-direct {v3, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Lcom/wiyun/ad/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x4080

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/wiyun/ad/AdView$9;

    invoke-direct {v1, p0, v9}, Lcom/wiyun/ad/AdView$9;-><init>(Lcom/wiyun/ad/AdView;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    iput-object v9, p0, Lcom/wiyun/ad/AdView;->u:Landroid/view/View;

    goto/16 :goto_9

    :array_a8
    .array-data 0x4
        0xdat 0xcdt 0xc4t 0xfft
        0xbat 0xa3t 0x92t 0xfft
    .end array-data
.end method

.method b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->m:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundColor()I
    .registers 2

    iget v0, p0, Lcom/wiyun/ad/AdView;->f:I

    return v0
.end method

.method public getRefreshInterval()I
    .registers 2

    iget v0, p0, Lcom/wiyun/ad/AdView;->d:I

    return v0
.end method

.method public getResId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getTestAdType()I
    .registers 2

    iget v0, p0, Lcom/wiyun/ad/AdView;->l:I

    return v0
.end method

.method public getTextColor()I
    .registers 2

    iget v0, p0, Lcom/wiyun/ad/AdView;->g:I

    return v0
.end method

.method public getTransitionType()I
    .registers 2

    iget v0, p0, Lcom/wiyun/ad/AdView;->j:I

    return v0
.end method

.method public getVisibility()I
    .registers 2

    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->hasAd()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/wiyun/ad/AdView;->h:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/wiyun/ad/AdView;->b:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/wiyun/ad/AdView;->p:Z

    if-eqz v0, :cond_17

    invoke-super {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    :goto_16
    return v0

    :cond_17
    const/16 v0, 0x8

    goto :goto_16

    :cond_1a
    invoke-super {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    goto :goto_16

    :cond_1f
    invoke-super {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    goto :goto_16
.end method

.method public hasAd()Z
    .registers 2

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isGoneIfFail()Z
    .registers 2

    iget-boolean v0, p0, Lcom/wiyun/ad/AdView;->h:Z

    return v0
.end method

.method public isShowLoadingHint()Z
    .registers 2

    iget-boolean v0, p0, Lcom/wiyun/ad/AdView;->p:Z

    return v0
.end method

.method public isTestMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/wiyun/ad/AdView;->k:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wiyun/ad/c;->a(Landroid/content/Context;Lcom/wiyun/ad/c$a;)V

    iget-boolean v0, p0, Lcom/wiyun/ad/AdView;->i:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->requestAd()V

    :cond_12
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->q:Lcom/wiyun/ad/AdView$AdListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->q:Lcom/wiyun/ad/AdView$AdListener;

    invoke-interface {v0}, Lcom/wiyun/ad/AdView$AdListener;->onExitButtonClicked()V

    :cond_9
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-static {}, Lcom/wiyun/ad/c;->a()V

    invoke-static {}, Lcom/wiyun/ad/CJC;->a()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/wiyun/ad/AdView;->a(Z)V

    return-void
.end method

.method public requestAd()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    iget-boolean v0, p0, Lcom/wiyun/ad/AdView;->b:Z

    if-nez v0, :cond_66

    iget-boolean v0, p0, Lcom/wiyun/ad/AdView;->c:Z

    if-nez v0, :cond_66

    iput-object v5, p0, Lcom/wiyun/ad/AdView;->t:Lcom/wiyun/ad/r;

    iput-boolean v4, p0, Lcom/wiyun/ad/AdView;->b:Z

    iget-boolean v0, p0, Lcom/wiyun/ad/AdView;->p:Z

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->r:Lcom/wiyun/ad/m;

    if-nez v0, :cond_32

    new-instance v0, Lcom/wiyun/ad/m;

    invoke-static {}, Lcom/wiyun/ad/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/wiyun/ad/m;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/wiyun/ad/AdView;->r:Lcom/wiyun/ad/m;

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->r:Lcom/wiyun/ad/m;

    invoke-virtual {v0, v3}, Lcom/wiyun/ad/m;->a(I)V

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->r:Lcom/wiyun/ad/m;

    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Lcom/wiyun/ad/m;->a(F)V

    :cond_32
    iget-object v0, p0, Lcom/wiyun/ad/AdView;->u:Landroid/view/View;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->u:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/wiyun/ad/AdView;->removeView(Landroid/view/View;)V

    iput-object v5, p0, Lcom/wiyun/ad/AdView;->u:Landroid/view/View;

    :cond_3d
    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/wiyun/ad/a;->setVisibility(I)V

    :cond_47
    iget-object v0, p0, Lcom/wiyun/ad/AdView;->r:Lcom/wiyun/ad/m;

    invoke-virtual {v0}, Lcom/wiyun/ad/m;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->r:Lcom/wiyun/ad/m;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/wiyun/ad/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_59
    iget-object v0, p0, Lcom/wiyun/ad/AdView;->r:Lcom/wiyun/ad/m;

    invoke-virtual {v0, v4}, Lcom/wiyun/ad/m;->a(Z)V

    :cond_5e
    new-instance v0, Lcom/wiyun/ad/AdView$7;

    invoke-direct {v0, p0}, Lcom/wiyun/ad/AdView$7;-><init>(Lcom/wiyun/ad/AdView;)V

    invoke-virtual {v0}, Lcom/wiyun/ad/AdView$7;->start()V

    :cond_66
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    iput p1, p0, Lcom/wiyun/ad/AdView;->f:I

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    invoke-virtual {v0, p1}, Lcom/wiyun/ad/a;->setBackgroundColor(I)V

    :cond_b
    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->invalidate()V

    return-void
.end method

.method public setGoneIfFail(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/wiyun/ad/AdView;->h:Z

    return-void
.end method

.method public setListener(Lcom/wiyun/ad/AdView$AdListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/wiyun/ad/AdView;->q:Lcom/wiyun/ad/AdView$AdListener;

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setRefreshInterval(I)V
    .registers 6

    const/16 v3, 0x1e

    const/4 v2, 0x0

    if-gtz p1, :cond_e

    move v0, v2

    :goto_6
    iput v0, p0, Lcom/wiyun/ad/AdView;->d:I

    if-nez v0, :cond_2e

    invoke-direct {p0, v2}, Lcom/wiyun/ad/AdView;->a(Z)V

    :goto_d
    return-void

    :cond_e
    if-ge p1, v3, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdView.setRefreshInterval("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") seconds must be >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wiyun/ad/b;->a(Ljava/lang/String;)V

    :cond_2c
    move v0, p1

    goto :goto_6

    :cond_2e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wiyun/ad/AdView;->a(Z)V

    goto :goto_d
.end method

.method public setResId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/wiyun/ad/AdView;->n:Ljava/lang/String;

    return-void
.end method

.method public setShowLoadingHint(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/wiyun/ad/AdView;->p:Z

    return-void
.end method

.method public setTestAdType(I)V
    .registers 2

    iput p1, p0, Lcom/wiyun/ad/AdView;->l:I

    return-void
.end method

.method public setTestMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/wiyun/ad/AdView;->k:Z

    return-void
.end method

.method public setTextColor(I)V
    .registers 3

    iput p1, p0, Lcom/wiyun/ad/AdView;->g:I

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/wiyun/ad/AdView;->a:Lcom/wiyun/ad/a;

    invoke-virtual {v0, p1}, Lcom/wiyun/ad/a;->a(I)V

    :cond_b
    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->invalidate()V

    return-void
.end method

.method public setTransitionType(I)V
    .registers 2

    iput p1, p0, Lcom/wiyun/ad/AdView;->j:I

    return-void
.end method

.method public setVisibility(I)V
    .registers 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_12

    monitor-enter p0

    :try_start_7
    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-lt v1, v0, :cond_13

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    monitor-exit p0

    :cond_12
    return-void

    :cond_13
    invoke-virtual {p0, v1}, Lcom/wiyun/ad/AdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v0
.end method
