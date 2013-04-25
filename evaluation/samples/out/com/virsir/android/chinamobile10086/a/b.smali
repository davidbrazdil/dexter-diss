.class public Lcom/virsir/android/chinamobile10086/a/b;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/virsir/android/chinamobile10086/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


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
            "Lcom/virsir/android/chinamobile10086/a/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Lcom/virsir/android/chinamobile10086/a/b;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/a/b;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/virsir/android/chinamobile10086/a/b;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/a/b;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/view/View;)V
    .registers 14
    .parameter "position"
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/virsir/android/chinamobile10086/a/b;->a:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/virsir/android/chinamobile10086/a/c;

    .local v1, item:Lcom/virsir/android/chinamobile10086/a/c;
    invoke-virtual {v1, v9}, Lcom/virsir/android/chinamobile10086/a/c;->a(Z)V

    invoke-virtual {v1}, Lcom/virsir/android/chinamobile10086/a/c;->e()Ljava/lang/String;

    move-result-object v6

    .local v6, titleStr:Ljava/lang/String;
    if-nez v6, :cond_17

    invoke-virtual {v1}, Lcom/virsir/android/chinamobile10086/a/c;->d()Ljava/lang/String;

    move-result-object v6

    :cond_17
    if-nez v6, :cond_37

    const v8, 0x7f05002f

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x7f050029

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/virsir/android/chinamobile10086/a/b;->b:Landroid/content/Context;

    check-cast v7, Lcom/virsir/android/chinamobile10086/SearchOfficesView;

    .local v7, view:Lcom/virsir/android/chinamobile10086/SearchOfficesView;
    invoke-virtual {v7}, Lcom/virsir/android/chinamobile10086/SearchOfficesView;->c()V

    .end local v7           #view:Lcom/virsir/android/chinamobile10086/SearchOfficesView;
    :cond_36
    :goto_36
    return-void

    :cond_37
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/virsir/android/chinamobile10086/a/c;->a()Ljava/lang/String;

    move-result-object v2

    .local v2, lat:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/virsir/android/chinamobile10086/a/c;->b()Ljava/lang/String;

    move-result-object v3

    .local v3, lng:Ljava/lang/String;
    invoke-static {v2}, Lcom/virsir/android/chinamobile10086/utils/d;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_36

    invoke-static {v3}, Lcom/virsir/android/chinamobile10086/utils/d;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_36

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/virsir/android/chinamobile10086/a/b;->b:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-array v5, v9, [Ljava/lang/String;

    iget-object v8, p0, Lcom/virsir/android/chinamobile10086/a/b;->b:Landroid/content/Context;

    const v9, 0x7f07000a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v10

    .local v5, text:[Ljava/lang/String;
    new-instance v4, Lcom/virsir/android/chinamobile10086/a/b$1;

    invoke-direct {v4, p0, v2, v3}, Lcom/virsir/android/chinamobile10086/a/b$1;-><init>(Lcom/virsir/android/chinamobile10086/a/b;Ljava/lang/String;Ljava/lang/String;)V

    .local v4, onclicklistener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_36
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 21
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virsir/android/chinamobile10086/a/b;->b:Landroid/content/Context;

    move-object v15, v0

    const-string v16, "layout_inflater"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .local v14, vi:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virsir/android/chinamobile10086/a/b;->a:Ljava/util/List;

    move-object v15, v0

    move-object v0, v15

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/virsir/android/chinamobile10086/a/c;

    .local v8, item:Lcom/virsir/android/chinamobile10086/a/c;
    const/4 v13, 0x0

    .local v13, titleStr:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, addressStr:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, phoneStr:Ljava/lang/String;
    if-eqz v8, :cond_73

    invoke-virtual {v8}, Lcom/virsir/android/chinamobile10086/a/c;->e()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_2a

    invoke-virtual {v8}, Lcom/virsir/android/chinamobile10086/a/c;->d()Ljava/lang/String;

    move-result-object v13

    :cond_2a
    invoke-virtual {v8}, Lcom/virsir/android/chinamobile10086/a/c;->h()Ljava/util/List;

    move-result-object v4

    .local v4, addressLines:Ljava/util/List;
    invoke-virtual {v8}, Lcom/virsir/android/chinamobile10086/a/c;->f()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_66

    const-string v5, ""

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3a
    :goto_3a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_66

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, add:Ljava/lang/String;
    const-string v15, "China"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3a

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3a

    .end local v2           #add:Ljava/lang/String;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_66
    invoke-virtual {v8}, Lcom/virsir/android/chinamobile10086/a/c;->g()Ljava/util/List;

    move-result-object v10

    .local v10, phoneNumbers:Ljava/util/List;
    if-eqz v10, :cond_73

    const/4 v15, 0x0

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #phoneStr:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .end local v4           #addressLines:Ljava/util/List;
    .end local v10           #phoneNumbers:Ljava/util/List;
    .restart local v11       #phoneStr:Ljava/lang/String;
    :cond_73
    if-nez p2, :cond_7e

    const v15, 0x7f03000e

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_7e
    invoke-virtual {v8}, Lcom/virsir/android/chinamobile10086/a/c;->c()Z

    move-result v7

    .local v7, isLoading:Z
    if-eqz v7, :cond_c3

    const v15, 0x7f05002f

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    const v15, 0x7f050029

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    :goto_a2
    if-nez v13, :cond_e2

    const v15, 0x7f05002a

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    const v15, 0x7f05002e

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    :goto_c2
    return-object p2

    :cond_c3
    const v15, 0x7f05002f

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    const v15, 0x7f050029

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a2

    :cond_e2
    const v15, 0x7f05002a

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    const v15, 0x7f05002e

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    const v15, 0x7f05002b

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .local v12, title:Landroid/widget/TextView;
    const v15, 0x7f05002c

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, address:Landroid/widget/TextView;
    const v15, 0x7f05002d

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .local v9, phone:Landroid/widget/TextView;
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v11}, Lcom/virsir/android/chinamobile10086/utils/d;->a(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_139

    const/16 v15, 0x8

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c2

    :cond_139
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c2
.end method
