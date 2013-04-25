.class public Lcom/virsir/android/chinamobile10086/MainView;
.super Lcom/virsir/android/chinamobile10086/BaseView;


# static fields
.field static m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/b/b;",
            ">;"
        }
    .end annotation
.end field

.field static n:Ljava/lang/String;


# instance fields
.field c:Landroid/app/Dialog;

.field d:Landroid/app/Dialog;

.field e:Landroid/app/Dialog;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/b/b;",
            ">;"
        }
    .end annotation
.end field

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/ListView;

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/b/b;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/b/a;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/lang/String;

.field l:Z

.field o:Landroid/content/SharedPreferences;

.field p:Ljava/lang/Runnable;

.field q:Landroid/widget/Spinner;

.field r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/content/DialogInterface$OnClickListener;

.field private t:Landroid/content/DialogInterface$OnClickListener;

.field private u:Landroid/content/DialogInterface$OnClickListener;

.field private v:Landroid/content/DialogInterface$OnClickListener;

.field private w:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/virsir/android/chinamobile10086/MainView;->m:Ljava/util/List;

    const-string v0, "\u672c\u8f6f\u4ef6\u4ee3\u7528\u6237\u53d1\u9001\u77ed\u4fe1\u81f310086, \u8fdb\u884c\u67e5\u8be2\u3002"

    sput-object v0, Lcom/virsir/android/chinamobile10086/MainView;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/BaseView;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/virsir/android/chinamobile10086/MainView;->l:Z

    new-instance v0, Lcom/virsir/android/chinamobile10086/e;

    invoke-direct {v0, p0}, Lcom/virsir/android/chinamobile10086/e;-><init>(Lcom/virsir/android/chinamobile10086/MainView;)V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/MainView;->p:Ljava/lang/Runnable;

    new-instance v0, Lcom/virsir/android/chinamobile10086/f;

    invoke-direct {v0, p0}, Lcom/virsir/android/chinamobile10086/f;-><init>(Lcom/virsir/android/chinamobile10086/MainView;)V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/MainView;->s:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/virsir/android/chinamobile10086/g;

    invoke-direct {v0, p0}, Lcom/virsir/android/chinamobile10086/g;-><init>(Lcom/virsir/android/chinamobile10086/MainView;)V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/MainView;->t:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/virsir/android/chinamobile10086/h;

    invoke-direct {v0, p0}, Lcom/virsir/android/chinamobile10086/h;-><init>(Lcom/virsir/android/chinamobile10086/MainView;)V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/MainView;->u:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/virsir/android/chinamobile10086/i;

    invoke-direct {v0, p0}, Lcom/virsir/android/chinamobile10086/i;-><init>(Lcom/virsir/android/chinamobile10086/MainView;)V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/MainView;->v:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/virsir/android/chinamobile10086/j;

    invoke-direct {v0, p0}, Lcom/virsir/android/chinamobile10086/j;-><init>(Lcom/virsir/android/chinamobile10086/MainView;)V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/MainView;->w:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Lcom/virsir/android/chinamobile10086/b/b;
    .registers 8
    .parameter "items"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/b/b;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/virsir/android/chinamobile10086/b/b;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .local v3, result:Lcom/virsir/android/chinamobile10086/b/b;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/virsir/android/chinamobile10086/b/b;

    .local v2, item:Lcom/virsir/android/chinamobile10086/b/b;
    invoke-virtual {v2}, Lcom/virsir/android/chinamobile10086/b/b;->a()Ljava/lang/String;

    move-result-object v0

    .local v0, _id:Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v3, v2

    .end local v0           #_id:Ljava/lang/String;
    .end local v2           #item:Lcom/virsir/android/chinamobile10086/b/b;
    :cond_1e
    return-object v3
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter "area"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, items:Ljava/util/List;
    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/MainView;->j:Ljava/util/List;

    if-eqz v4, :cond_27

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/MainView;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/virsir/android/chinamobile10086/b/a;

    .local v1, item:Lcom/virsir/android/chinamobile10086/b/a;
    invoke-virtual {v1}, Lcom/virsir/android/chinamobile10086/b/a;->a()Ljava/lang/String;

    move-result-object v3

    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_b

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Lcom/virsir/android/chinamobile10086/b/a;->b()Ljava/util/List;

    move-result-object v2

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/virsir/android/chinamobile10086/b/a;
    .end local v3           #name:Ljava/lang/String;
    :cond_27
    return-object v2
.end method

.method static synthetic a(Lcom/virsir/android/chinamobile10086/MainView;)V
    .registers 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/MainView;->e()V

    return-void
.end method

.method static synthetic b(Lcom/virsir/android/chinamobile10086/MainView;)V
    .registers 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/MainView;->h()V

    return-void
.end method

.method private c()V
    .registers 13

    .prologue
    iget-object v10, p0, Lcom/virsir/android/chinamobile10086/MainView;->e:Landroid/app/Dialog;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/virsir/android/chinamobile10086/MainView;->e:Landroid/app/Dialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    :goto_9
    return-void

    :cond_a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v10, "layout_inflater"

    invoke-virtual {p0, v10}, Lcom/virsir/android/chinamobile10086/MainView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .local v8, vi:Landroid/view/LayoutInflater;
    const/high16 v10, 0x7f03

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .local v9, view:Landroid/view/View;
    const v10, 0x7f050003

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/virsir/android/chinamobile10086/MainView;->q:Landroid/widget/Spinner;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/virsir/android/chinamobile10086/MainView;->r:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, cis:Ljava/util/List;
    iget-object v10, p0, Lcom/virsir/android/chinamobile10086/MainView;->i:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v10, p0, Lcom/virsir/android/chinamobile10086/MainView;->r:Ljava/util/List;

    iget-object v11, p0, Lcom/virsir/android/chinamobile10086/MainView;->j:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v7, 0x0

    .local v7, position:I
    iget-object v10, p0, Lcom/virsir/android/chinamobile10086/MainView;->k:Ljava/lang/String;

    if-nez v10, :cond_86

    const-string v10, "\u9ed8\u8ba4\u5730\u533a"

    iput-object v10, p0, Lcom/virsir/android/chinamobile10086/MainView;->k:Ljava/lang/String;

    const-string v10, "area"

    iget-object v11, p0, Lcom/virsir/android/chinamobile10086/MainView;->k:Ljava/lang/String;

    invoke-virtual {p0, v10, v11}, Lcom/virsir/android/chinamobile10086/MainView;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    :goto_51
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v10, 0x1090008

    iget-object v11, p0, Lcom/virsir/android/chinamobile10086/MainView;->r:Ljava/util/List;

    invoke-direct {v0, p0, v10, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .local v0, adapter:Landroid/widget/ArrayAdapter;
    const v10, 0x1090009

    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v10, p0, Lcom/virsir/android/chinamobile10086/MainView;->q:Landroid/widget/Spinner;

    const-string v11, "\u8bf7\u9009\u62e9\u670d\u52a1\u5730\u533a\uff0c\u5982\u679c\u6ca1\u6709\u627e\u5230\u8bf7\u6682\u65f6\u4f7f\u7528\u9ed8\u8ba4\u5730\u533a"

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/virsir/android/chinamobile10086/MainView;->q:Landroid/widget/Spinner;

    invoke-virtual {v10, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v10, p0, Lcom/virsir/android/chinamobile10086/MainView;->q:Landroid/widget/Spinner;

    invoke-virtual {v10, v7}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .local v3, dialog:Landroid/app/AlertDialog;
    const-string v10, "\u786e\u5b9a"

    iget-object v11, p0, Lcom/virsir/android/chinamobile10086/MainView;->s:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v10, v11}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    iput-object v3, p0, Lcom/virsir/android/chinamobile10086/MainView;->e:Landroid/app/Dialog;

    goto :goto_9

    .end local v0           #adapter:Landroid/widget/ArrayAdapter;
    .end local v3           #dialog:Landroid/app/AlertDialog;
    :cond_86
    iget-object v10, p0, Lcom/virsir/android/chinamobile10086/MainView;->r:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_8c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/virsir/android/chinamobile10086/b/a;

    .local v5, item:Lcom/virsir/android/chinamobile10086/b/a;
    invoke-virtual {v5}, Lcom/virsir/android/chinamobile10086/b/a;->a()Ljava/lang/String;

    move-result-object v6

    .local v6, name:Ljava/lang/String;
    if-eqz v6, :cond_8c

    iget-object v10, p0, Lcom/virsir/android/chinamobile10086/MainView;->k:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8c

    iget-object v10, p0, Lcom/virsir/android/chinamobile10086/MainView;->r:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    goto :goto_51
.end method

.method static synthetic c(Lcom/virsir/android/chinamobile10086/MainView;)V
    .registers 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/MainView;->c()V

    return-void
.end method

.method private d()V
    .registers 4

    .prologue
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/MainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/MainView;->h:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/MainView;->h:Landroid/widget/ListView;

    new-instance v1, Lcom/virsir/android/chinamobile10086/MainView$2;

    invoke-direct {v1, p0}, Lcom/virsir/android/chinamobile10086/MainView$2;-><init>(Lcom/virsir/android/chinamobile10086/MainView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/MainView;->p:Ljava/lang/Runnable;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic d(Lcom/virsir/android/chinamobile10086/MainView;)V
    .registers 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/MainView;->d()V

    return-void
.end method

.method private e()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/high16 v13, 0x7f04

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .local v11, xrp:Landroid/content/res/XmlResourceParser;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/virsir/android/chinamobile10086/MainView;->i:Ljava/util/List;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/virsir/android/chinamobile10086/MainView;->j:Ljava/util/List;

    const/4 v4, 0x0

    .local v4, currCommand:Lcom/virsir/android/chinamobile10086/b/b;
    const/4 v3, 0x0

    .local v3, currArea:Lcom/virsir/android/chinamobile10086/b/a;
    const/4 v1, 0x0

    .local v1, areaCommandItems:Ljava/util/List;
    const/4 v0, 0x0

    .local v0, areaCommandItem:Lcom/virsir/android/chinamobile10086/b/b;
    const/4 v8, 0x0

    .local v8, s:Ljava/lang/String;
    :goto_1d
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_119

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_9f

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v12, "command"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4a

    new-instance v4, Lcom/virsir/android/chinamobile10086/b/b;

    .end local v4           #currCommand:Lcom/virsir/android/chinamobile10086/b/b;
    invoke-direct {v4}, Lcom/virsir/android/chinamobile10086/b/b;-><init>()V

    .restart local v4       #currCommand:Lcom/virsir/android/chinamobile10086/b/b;
    const/4 v12, 0x0

    const-string v13, "id"

    invoke-interface {v11, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, id:Ljava/lang/String;
    invoke-virtual {v4, v6}, Lcom/virsir/android/chinamobile10086/b/b;->a(Ljava/lang/String;)V

    .end local v6           #id:Ljava/lang/String;
    :cond_46
    :goto_46
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_1d

    :cond_4a
    const-string v12, "area"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6a

    new-instance v3, Lcom/virsir/android/chinamobile10086/b/a;

    .end local v3           #currArea:Lcom/virsir/android/chinamobile10086/b/a;
    invoke-direct {v3}, Lcom/virsir/android/chinamobile10086/b/a;-><init>()V

    .restart local v3       #currArea:Lcom/virsir/android/chinamobile10086/b/a;
    const/4 v12, 0x0

    const-string v13, "name"

    invoke-interface {v11, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, name:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #areaCommandItems:Ljava/util/List;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1       #areaCommandItems:Ljava/util/List;
    invoke-virtual {v3, v1}, Lcom/virsir/android/chinamobile10086/b/a;->a(Ljava/util/List;)V

    invoke-virtual {v3, v7}, Lcom/virsir/android/chinamobile10086/b/a;->a(Ljava/lang/String;)V

    goto :goto_46

    .end local v7           #name:Ljava/lang/String;
    :cond_6a
    const-string v12, "commandcode"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_46

    const/4 v12, 0x0

    const-string v13, "for"

    invoke-interface {v11, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, forId:Ljava/lang/String;
    iget-object v12, p0, Lcom/virsir/android/chinamobile10086/MainView;->i:Ljava/util/List;

    invoke-direct {p0, v12, v5}, Lcom/virsir/android/chinamobile10086/MainView;->a(Ljava/util/List;Ljava/lang/String;)Lcom/virsir/android/chinamobile10086/b/b;

    move-result-object v2

    .local v2, command:Lcom/virsir/android/chinamobile10086/b/b;
    if-eqz v2, :cond_46

    new-instance v0, Lcom/virsir/android/chinamobile10086/b/b;

    .end local v0           #areaCommandItem:Lcom/virsir/android/chinamobile10086/b/b;
    invoke-direct {v0}, Lcom/virsir/android/chinamobile10086/b/b;-><init>()V

    .restart local v0       #areaCommandItem:Lcom/virsir/android/chinamobile10086/b/b;
    invoke-virtual {v2}, Lcom/virsir/android/chinamobile10086/b/b;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/virsir/android/chinamobile10086/b/b;->d(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/virsir/android/chinamobile10086/b/b;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/virsir/android/chinamobile10086/b/b;->c(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/virsir/android/chinamobile10086/b/b;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/virsir/android/chinamobile10086/b/b;->b(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .end local v2           #command:Lcom/virsir/android/chinamobile10086/b/b;
    .end local v5           #forId:Ljava/lang/String;
    :cond_9f
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_ca

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v12, "command"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b9

    if-eqz v4, :cond_b9

    iget-object v12, p0, Lcom/virsir/android/chinamobile10086/MainView;->i:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b9
    const-string v12, "area"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_46

    if-eqz v3, :cond_46

    iget-object v12, p0, Lcom/virsir/android/chinamobile10086/MainView;->j:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_46

    :cond_ca
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_46

    const-string v12, "title"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f5

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v9

    .local v9, title:Ljava/lang/String;
    if-eqz v4, :cond_e2

    invoke-virtual {v4, v9}, Lcom/virsir/android/chinamobile10086/b/b;->b(Ljava/lang/String;)V

    .end local v9           #title:Ljava/lang/String;
    :cond_e2
    :goto_e2
    const-string v12, "commandcode"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_46

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v2

    .local v2, command:Ljava/lang/String;
    if-eqz v0, :cond_46

    invoke-virtual {v0, v2}, Lcom/virsir/android/chinamobile10086/b/b;->d(Ljava/lang/String;)V

    goto/16 :goto_46

    .end local v2           #command:Ljava/lang/String;
    :cond_f5
    const-string v12, "subtitle"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_107

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v10

    .local v10, value:Ljava/lang/String;
    if-eqz v4, :cond_e2

    invoke-virtual {v4, v10}, Lcom/virsir/android/chinamobile10086/b/b;->c(Ljava/lang/String;)V

    goto :goto_e2

    .end local v10           #value:Ljava/lang/String;
    :cond_107
    const-string v12, "defaultcode"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e2

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #value:Ljava/lang/String;
    if-eqz v4, :cond_e2

    invoke-virtual {v4, v10}, Lcom/virsir/android/chinamobile10086/b/b;->d(Ljava/lang/String;)V

    goto :goto_e2

    .end local v10           #value:Ljava/lang/String;
    :cond_119
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    return-void
.end method

.method private f()V
    .registers 10

    .prologue
    iget-object v7, p0, Lcom/virsir/android/chinamobile10086/MainView;->c:Landroid/app/Dialog;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/virsir/android/chinamobile10086/MainView;->c:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    :goto_9
    return-void

    :cond_a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/virsir/android/chinamobile10086/MainView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .local v5, vi:Landroid/view/LayoutInflater;
    const v7, 0x7f030004

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .local v6, view:Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, dialog:Landroid/app/AlertDialog;
    const v7, 0x7f050006

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, helpTitle:Landroid/widget/TextView;
    const v7, 0x7f050005

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .local v2, helpLogo:Landroid/widget/ImageView;
    const/high16 v7, 0x7f07

    invoke-virtual {p0, v7}, Lcom/virsir/android/chinamobile10086/MainView;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, s:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/virsir/android/chinamobile10086/utils/d;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f02000f

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v7, "\u5173\u95ed"

    iget-object v8, p0, Lcom/virsir/android/chinamobile10086/MainView;->v:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string v7, "\u4f5c\u8005\u5176\u4ed6\u4f5c\u54c1"

    iget-object v8, p0, Lcom/virsir/android/chinamobile10086/MainView;->w:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/virsir/android/chinamobile10086/MainView;->c:Landroid/app/Dialog;

    goto :goto_9
.end method

.method private g()V
    .registers 10

    .prologue
    iget-object v7, p0, Lcom/virsir/android/chinamobile10086/MainView;->d:Landroid/app/Dialog;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/virsir/android/chinamobile10086/MainView;->d:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    :goto_9
    return-void

    :cond_a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/virsir/android/chinamobile10086/MainView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .local v5, vi:Landroid/view/LayoutInflater;
    const v7, 0x7f030002

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .local v6, view:Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, dialog:Landroid/app/AlertDialog;
    const v7, 0x7f050006

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, helpTitle:Landroid/widget/TextView;
    const v7, 0x7f050005

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .local v2, helpLogo:Landroid/widget/ImageView;
    const/high16 v7, 0x7f07

    invoke-virtual {p0, v7}, Lcom/virsir/android/chinamobile10086/MainView;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, s:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/virsir/android/chinamobile10086/utils/d;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f02000f

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v7, "\u597d\u7684\uff0c\u77e5\u9053\u4e86"

    iget-object v8, p0, Lcom/virsir/android/chinamobile10086/MainView;->t:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string v7, "Cancel"

    iget-object v8, p0, Lcom/virsir/android/chinamobile10086/MainView;->u:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/virsir/android/chinamobile10086/MainView;->d:Landroid/app/Dialog;

    goto :goto_9
.end method

.method private h()V
    .registers 8

    .prologue
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, areas:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/MainView;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/virsir/android/chinamobile10086/b/a;

    .local v0, ar:Lcom/virsir/android/chinamobile10086/b/a;
    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/b/a;->a()Ljava/lang/String;

    move-result-object v3

    .local v3, name:Ljava/lang/String;
    const-string v4, "\u9ed8\u8ba4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\uff0c"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .end local v0           #ar:Lcom/virsir/android/chinamobile10086/b/a;
    .end local v3           #name:Ljava/lang/String;
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/virsir/android/chinamobile10086/MainView;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u76ee\u524d\u652f\u6301\u7684\u5730\u533a\u6709 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u3002\u5982\u679c\u6ca1\u6709\u60a8\u7684\u6240\u5728\u5730\uff0c\u8bf7\u6682\u65f6\u9009\u62e9\u9ed8\u8ba4\u5730\u533a\u3002"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u60a8\u5f53\u524d\u9009\u62e9\u7684\u662f\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/MainView;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u3002\u60a8\u53ef\u4ee5\u901a\u8fc7\u83dc\u5355\u968f\u65f6\u66f4\u6539\u5730\u533a\u3002"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/virsir/android/chinamobile10086/MainView;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/MainView;->g:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "10086-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/virsir/android/chinamobile10086/MainView;->k:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \u53ef\u70b9\u51fb\u53f3\u4fa7\u83dc\u5355\u6309\u94ae\u66f4\u6539\u3002"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/MainView;->k:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/virsir/android/chinamobile10086/MainView;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/virsir/android/chinamobile10086/MainView;->m:Ljava/util/List;

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/MainView;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    sget-object v4, Lcom/virsir/android/chinamobile10086/MainView;->m:Ljava/util/List;

    if-eqz v4, :cond_a4

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/MainView;->f:Ljava/util/List;

    sget-object v5, Lcom/virsir/android/chinamobile10086/MainView;->m:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a4
    new-instance v4, Lcom/virsir/android/chinamobile10086/MainView$3;

    invoke-direct {v4, p0}, Lcom/virsir/android/chinamobile10086/MainView$3;-><init>(Lcom/virsir/android/chinamobile10086/MainView;)V

    invoke-virtual {p0, v4}, Lcom/virsir/android/chinamobile10086/MainView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/MainView;->o:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Lcom/virsir/android/chinamobile10086/BaseView;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Lcom/virsir/android/chinamobile10086/MainView;->setContentView(I)V

    const v2, 0x7f050013

    invoke-virtual {p0, v2}, Lcom/virsir/android/chinamobile10086/MainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, menuButtonWrapper:Landroid/view/View;
    new-instance v2, Lcom/virsir/android/chinamobile10086/MainView$1;

    invoke-direct {v2, p0}, Lcom/virsir/android/chinamobile10086/MainView$1;-><init>(Lcom/virsir/android/chinamobile10086/MainView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f050012

    invoke-virtual {p0, v2}, Lcom/virsir/android/chinamobile10086/MainView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/virsir/android/chinamobile10086/MainView;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/MainView;->g:Landroid/widget/TextView;

    sget-object v3, Lcom/virsir/android/chinamobile10086/MainView;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/virsir/android/chinamobile10086/MainView;->o:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/MainView;->o:Landroid/content/SharedPreferences;

    const-string v3, "area"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/virsir/android/chinamobile10086/MainView;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/virsir/android/chinamobile10086/MainView;->o:Landroid/content/SharedPreferences;

    const-string v3, "disclaimerViewed"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/virsir/android/chinamobile10086/MainView;->l:Z

    iget-boolean v2, p0, Lcom/virsir/android/chinamobile10086/MainView;->l:Z

    if-eqz v2, :cond_5b

    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/MainView;->d()V

    :goto_4d
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/virsir/android/chinamobile10086/CheckUpdateService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v1, svc:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/virsir/android/chinamobile10086/MainView;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/virsir/android/chinamobile10086/MainView;->b()V

    return-void

    .end local v1           #svc:Landroid/content/Intent;
    :cond_5b
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/MainView;->g()V

    goto :goto_4d
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x3

    const-string v1, "\u66f4\u591a\u597d\u8f6f\u4ef6!"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x4

    const-string v1, "\u8054\u901a\u7528\u6237?"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020009

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v0, "\u66f4\u6539\u5730\u533a"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v0, "\u5e2e\u52a9"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v3
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    invoke-super {p0}, Lcom/virsir/android/chinamobile10086/BaseView;->onDestroy()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/virsir/android/chinamobile10086/CheckUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v0, svc:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/virsir/android/chinamobile10086/MainView;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 10
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_4c

    move v4, v7

    :goto_a
    return v4

    :pswitch_b
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/MainView;->c()V

    move v4, v6

    goto :goto_a

    :pswitch_10
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/virsir/android/chinamobile10086/PromotionView;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/virsir/android/chinamobile10086/MainView;->startActivity(Landroid/content/Intent;)V

    move v4, v6

    goto :goto_a

    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1c
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v2, intent2:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/virsir/android/chinamobile10086/MainView;->startActivity(Landroid/content/Intent;)V

    move v4, v6

    goto :goto_a

    .end local v2           #intent2:Landroid/content/Intent;
    :pswitch_28
    invoke-direct {p0}, Lcom/virsir/android/chinamobile10086/MainView;->f()V

    move v4, v6

    goto :goto_a

    :pswitch_2d
    :try_start_2d
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "market://search?q=pub:virsir.com"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v3, intent3:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/virsir/android/chinamobile10086/MainView;->startActivity(Landroid/content/Intent;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3d} :catch_3f

    .end local v3           #intent3:Landroid/content/Intent;
    :goto_3d
    move v4, v6

    goto :goto_a

    :catch_3f
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    const-string v4, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u7684\u8f6f\u4ef6\u4e0d\u652f\u6301\u7535\u5b50\u5e02\u573a"

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_3d

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_b
        :pswitch_1c
        :pswitch_2d
        :pswitch_10
    .end packed-switch
.end method
