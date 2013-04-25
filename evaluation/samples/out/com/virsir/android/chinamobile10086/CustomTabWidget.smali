.class public Lcom/virsir/android/chinamobile10086/CustomTabWidget;
.super Landroid/widget/TabWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "paramContext"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/virsir/android/chinamobile10086/CustomTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "paramContext"
    .parameter "paramAttributeSet"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/virsir/android/chinamobile10086/CustomTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .parameter "paramContext"
    .parameter "paramAttributeSet"
    .parameter "paramInt"

    .prologue
    const-class v6, Landroid/widget/TabWidget;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/CustomTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02001d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, localDrawable:Landroid/graphics/drawable/Drawable;
    :try_start_10
    const-class v6, Landroid/widget/TabWidget;

    const-string v7, "mBottomLeftStrip"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .local v2, localField1:Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v6, Landroid/widget/TabWidget;

    const-string v7, "mBottomRightStrip"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .local v3, localField2:Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2e} :catch_2f

    .end local v2           #localField1:Ljava/lang/reflect/Field;
    .end local v3           #localField2:Ljava/lang/reflect/Field;
    :goto_2e
    return-void

    :catch_2f
    move-exception v6

    move-object v0, v6

    .local v0, ex:Ljava/lang/Exception;
    :try_start_31
    const-class v6, Landroid/widget/TabWidget;

    const-string v7, "mLeftStrip"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .local v4, localField3:Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v6, Landroid/widget/TabWidget;

    const-string v7, "mRightStrip"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .local v5, localField4:Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4f} :catch_50

    goto :goto_2e

    .end local v4           #localField3:Ljava/lang/reflect/Field;
    .end local v5           #localField4:Ljava/lang/reflect/Field;
    :catch_50
    move-exception v6

    goto :goto_2e
.end method
