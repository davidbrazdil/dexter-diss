.class public Lcom/virsir/android/chinamobile10086/Root;
.super Landroid/app/TabActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/virsir/android/chinamobile10086/Root$a;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field protected d:Z

.field private e:Lcom/virsir/android/chinamobile10086/CustomTabHost;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/virsir/android/chinamobile10086/Root;->a:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/virsir/android/chinamobile10086/Root;->b:I

    const v0, 0x7f050044

    iput v0, p0, Lcom/virsir/android/chinamobile10086/Root;->c:I

    return-void
.end method

.method static synthetic a(Lcom/virsir/android/chinamobile10086/Root;)Lcom/virsir/android/chinamobile10086/CustomTabHost;
    .registers 2
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/Root;->e:Lcom/virsir/android/chinamobile10086/CustomTabHost;

    return-object v0
.end method

.method private a(I)V
    .registers 24
    .parameter "paramInt"

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/virsir/android/chinamobile10086/Root;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v15

    .local v15, localTabWidget:Landroid/widget/TabWidget;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virsir/android/chinamobile10086/Root;->e:Lcom/virsir/android/chinamobile10086/CustomTabHost;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/virsir/android/chinamobile10086/CustomTabHost;->getCurrentTab()I

    move-result v7

    .local v7, i:I
    const/4 v8, 0x0

    .local v8, j:I
    packed-switch p1, :pswitch_data_13a

    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/virsir/android/chinamobile10086/Root;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTouchables()Ljava/util/ArrayList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const/16 v18, 0x0

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .local v14, localImageView:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/virsir/android/chinamobile10086/Root;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f02001a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/virsir/android/chinamobile10086/Root;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f02001b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .local v6, bgOn:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/virsir/android/chinamobile10086/Root;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .local v11, localBitmap1:Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .local v9, k:I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .local v10, l:I
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .local v13, localConfig:Landroid/graphics/Bitmap$Config;
    invoke-static {v9, v10, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .local v12, localBitmap2:Landroid/graphics/Bitmap;
    new-instance v18, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object v1, v11

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v14, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v18, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v14

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    move-object v0, v15

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .local v17, localView:Landroid/view/View;
    move/from16 v0, p1

    move v1, v7

    if-ne v0, v1, :cond_11f

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_a7
    :try_start_a7
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTouchables()Ljava/util/ArrayList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #bg:Landroid/graphics/drawable/Drawable;
    check-cast v5, Landroid/widget/RelativeLayout;

    const/16 v18, 0x1

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .local v16, localTextView:Landroid/widget/TextView;
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    move/from16 v0, p1

    move v1, v7

    if-ne v0, v1, :cond_126

    invoke-virtual/range {p0 .. p0}, Lcom/virsir/android/chinamobile10086/Root;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f080003

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_e8} :catch_137

    .end local v16           #localTextView:Landroid/widget/TextView;
    :goto_e8
    return-void

    .end local v6           #bgOn:Landroid/graphics/drawable/Drawable;
    .end local v9           #k:I
    .end local v10           #l:I
    .end local v11           #localBitmap1:Landroid/graphics/Bitmap;
    .end local v12           #localBitmap2:Landroid/graphics/Bitmap;
    .end local v13           #localConfig:Landroid/graphics/Bitmap$Config;
    .end local v14           #localImageView:Landroid/widget/ImageView;
    .end local v17           #localView:Landroid/view/View;
    :pswitch_e9
    move/from16 v0, p1

    move v1, v7

    if-ne v0, v1, :cond_f5

    const v18, 0x7f020021

    move/from16 v8, v18

    :goto_f3
    goto/16 :goto_12

    :cond_f5
    const v18, 0x7f020020

    move/from16 v8, v18

    goto :goto_f3

    :pswitch_fb
    move/from16 v0, p1

    move v1, v7

    if-ne v0, v1, :cond_107

    const v18, 0x7f02001f

    move/from16 v8, v18

    :goto_105
    goto/16 :goto_12

    :cond_107
    const v18, 0x7f02001e

    move/from16 v8, v18

    goto :goto_105

    :pswitch_10d
    move/from16 v0, p1

    move v1, v7

    if-ne v0, v1, :cond_119

    const v18, 0x7f020023

    move/from16 v8, v18

    :goto_117
    goto/16 :goto_12

    :cond_119
    const v18, 0x7f020022

    move/from16 v8, v18

    goto :goto_117

    .restart local v5       #bg:Landroid/graphics/drawable/Drawable;
    .restart local v6       #bgOn:Landroid/graphics/drawable/Drawable;
    .restart local v9       #k:I
    .restart local v10       #l:I
    .restart local v11       #localBitmap1:Landroid/graphics/Bitmap;
    .restart local v12       #localBitmap2:Landroid/graphics/Bitmap;
    .restart local v13       #localConfig:Landroid/graphics/Bitmap$Config;
    .restart local v14       #localImageView:Landroid/widget/ImageView;
    .restart local v17       #localView:Landroid/view/View;
    :cond_11f
    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a7

    .end local v5           #bg:Landroid/graphics/drawable/Drawable;
    .restart local v16       #localTextView:Landroid/widget/TextView;
    :cond_126
    :try_start_126
    invoke-virtual/range {p0 .. p0}, Lcom/virsir/android/chinamobile10086/Root;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f080002

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_136} :catch_137

    goto :goto_e8

    .end local v16           #localTextView:Landroid/widget/TextView;
    :catch_137
    move-exception v18

    goto :goto_e8

    nop

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_e9
        :pswitch_fb
        :pswitch_10d
    .end packed-switch
.end method

.method static synthetic a(Lcom/virsir/android/chinamobile10086/Root;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/virsir/android/chinamobile10086/Root;->a(I)V

    return-void
.end method

.method private b()V
    .registers 9

    .prologue
    const v5, 0x7f030012

    invoke-virtual {p0, v5}, Lcom/virsir/android/chinamobile10086/Root;->setContentView(I)V

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/Root;->getTabHost()Landroid/widget/TabHost;

    move-result-object v5

    check-cast v5, Lcom/virsir/android/chinamobile10086/CustomTabHost;

    iput-object v5, p0, Lcom/virsir/android/chinamobile10086/Root;->e:Lcom/virsir/android/chinamobile10086/CustomTabHost;

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/Root;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, localDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-class v6, Lcom/virsir/android/chinamobile10086/MainView;

    invoke-virtual {v5, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .local v2, localIntent1:Landroid/content/Intent;
    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/Root;->e:Lcom/virsir/android/chinamobile10086/CustomTabHost;

    iget-object v6, p0, Lcom/virsir/android/chinamobile10086/Root;->e:Lcom/virsir/android/chinamobile10086/CustomTabHost;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Lcom/virsir/android/chinamobile10086/CustomTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    const-string v7, "\u67e5\u8be2\u6307\u4ee4"

    invoke-virtual {v6, v7, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/virsir/android/chinamobile10086/CustomTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-class v6, Lcom/virsir/android/chinamobile10086/news/NewsChannelSelector;

    invoke-virtual {v5, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .local v3, localIntent2:Landroid/content/Intent;
    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/Root;->e:Lcom/virsir/android/chinamobile10086/CustomTabHost;

    iget-object v6, p0, Lcom/virsir/android/chinamobile10086/Root;->e:Lcom/virsir/android/chinamobile10086/CustomTabHost;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Lcom/virsir/android/chinamobile10086/CustomTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    const-string v7, "\u624b\u673a\u65b0\u95fb"

    invoke-virtual {v6, v7, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/virsir/android/chinamobile10086/CustomTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-class v6, Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    invoke-virtual {v5, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    .local v4, localIntent3:Landroid/content/Intent;
    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/Root;->e:Lcom/virsir/android/chinamobile10086/CustomTabHost;

    iget-object v6, p0, Lcom/virsir/android/chinamobile10086/Root;->e:Lcom/virsir/android/chinamobile10086/CustomTabHost;

    const-string v7, "2"

    invoke-virtual {v6, v7}, Lcom/virsir/android/chinamobile10086/CustomTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    const-string v7, "\u672c\u5730\u8425\u4e1a\u5385"

    invoke-virtual {v6, v7, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/virsir/android/chinamobile10086/CustomTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/Root;->e:Lcom/virsir/android/chinamobile10086/CustomTabHost;

    new-instance v6, Lcom/virsir/android/chinamobile10086/Root$a;

    invoke-direct {v6, p0}, Lcom/virsir/android/chinamobile10086/Root$a;-><init>(Lcom/virsir/android/chinamobile10086/Root;)V

    invoke-virtual {v5, v6}, Lcom/virsir/android/chinamobile10086/CustomTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_8a
    iget v5, p0, Lcom/virsir/android/chinamobile10086/Root;->b:I

    if-ge v0, v5, :cond_94

    invoke-direct {p0, v0}, Lcom/virsir/android/chinamobile10086/Root;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    :cond_94
    return-void
.end method

.method private c()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 3
    .parameter "tag"

    .prologue
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, j:I
    return v0
.end method

.method protected a()V
    .registers 2

    .prologue
    iget v0, p0, Lcom/virsir/android/chinamobile10086/Root;->c:I

    invoke-static {p0, v0}, Lcom/virsir/android/chinamobile10086/utils/e;->a(Landroid/content/Context;I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "paramBundle"

    .prologue
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/Root;->c()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Lcom/virsir/android/chinamobile10086/utils/LephoneSupport;->getLenFLAG_ROCKET_MENU_NOTIFY()I

    move-result v0

    .local v0, flag:I
    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/Root;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .end local v0           #flag:I
    :cond_16
    invoke-static {p0}, Lcom/virsir/android/chinamobile10086/utils/e;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/Root;->b()V

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/Root;->a()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/virsir/android/chinamobile10086/Root;->d:Z

    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/virsir/android/chinamobile10086/Root;->d:Z

    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    invoke-super {p0}, Landroid/app/TabActivity;->onStart()V

    invoke-static {p0}, Lcom/virsir/android/chinamobile10086/utils/e;->b(Landroid/content/Context;)V

    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    invoke-super {p0}, Landroid/app/TabActivity;->onStop()V

    invoke-static {p0}, Lcom/virsir/android/chinamobile10086/utils/e;->c(Landroid/content/Context;)V

    return-void
.end method
