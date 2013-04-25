.class public Lcom/virsir/android/chinamobile10086/c;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/virsir/android/chinamobile10086/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 4
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "list"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/b/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Lcom/virsir/android/chinamobile10086/c;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/c;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(I)I
    .registers 3
    .parameter "position"

    .prologue
    rem-int/lit8 v0, p0, 0x4

    .local v0, i:I
    packed-switch v0, :pswitch_data_16

    const v1, 0x7f020017

    :goto_8
    return v1

    :pswitch_9
    const v1, 0x7f020014

    goto :goto_8

    :pswitch_d
    const v1, 0x7f020015

    goto :goto_8

    :pswitch_11
    const v1, 0x7f020016

    goto :goto_8

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_9
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    if-nez p2, :cond_18

    iget-object v7, p0, Lcom/virsir/android/chinamobile10086/c;->b:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .local v6, vi:Landroid/view/LayoutInflater;
    iget-boolean v7, p0, Lcom/virsir/android/chinamobile10086/c;->c:Z

    if-eqz v7, :cond_6c

    const v7, 0x7f030011

    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local v6           #vi:Landroid/view/LayoutInflater;
    :cond_18
    :goto_18
    iget-object v7, p0, Lcom/virsir/android/chinamobile10086/c;->a:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/virsir/android/chinamobile10086/b/b;

    .local v1, item:Lcom/virsir/android/chinamobile10086/b/b;
    if-eqz v1, :cond_6b

    const v7, 0x7f05000f

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, image:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/virsir/android/chinamobile10086/c;->a(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    const v7, 0x7f050010

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .local v5, titleView:Landroid/widget/TextView;
    const v7, 0x7f050011

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, subTitleView:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/virsir/android/chinamobile10086/b/b;->b()Ljava/lang/String;

    move-result-object v4

    .local v4, title:Ljava/lang/String;
    if-nez v4, :cond_4c

    const-string v4, ""

    :cond_4c
    invoke-virtual {v1}, Lcom/virsir/android/chinamobile10086/b/b;->c()Ljava/lang/String;

    move-result-object v2

    .local v2, subTitle:Ljava/lang/String;
    if-nez v2, :cond_54

    const-string v2, ""

    :cond_54
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_63

    iget-boolean v7, p0, Lcom/virsir/android/chinamobile10086/c;->c:Z

    if-eqz v7, :cond_74

    :cond_63
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_68
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v0           #image:Landroid/widget/ImageView;
    .end local v2           #subTitle:Ljava/lang/String;
    .end local v3           #subTitleView:Landroid/widget/TextView;
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #titleView:Landroid/widget/TextView;
    :cond_6b
    return-object p2

    .end local v1           #item:Lcom/virsir/android/chinamobile10086/b/b;
    .restart local v6       #vi:Landroid/view/LayoutInflater;
    :cond_6c
    const v7, 0x7f030005

    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_18

    .end local v6           #vi:Landroid/view/LayoutInflater;
    .restart local v0       #image:Landroid/widget/ImageView;
    .restart local v1       #item:Lcom/virsir/android/chinamobile10086/b/b;
    .restart local v2       #subTitle:Ljava/lang/String;
    .restart local v3       #subTitleView:Landroid/widget/TextView;
    .restart local v4       #title:Ljava/lang/String;
    .restart local v5       #titleView:Landroid/widget/TextView;
    :cond_74
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_68
.end method
