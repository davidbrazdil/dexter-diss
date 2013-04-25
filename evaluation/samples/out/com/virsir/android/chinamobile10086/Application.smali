.class public Lcom/virsir/android/chinamobile10086/Application;
.super Landroid/app/Application;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/virsir/android/chinamobile10086/Application$a;
    }
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field b:Lcom/virsir/android/chinamobile10086/utils/b;

.field c:Landroid/content/SharedPreferences;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/virsir/android/chinamobile10086/d;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/Application;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/Application;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/Application;->f:Ljava/util/Map;

    new-instance v0, Lcom/virsir/android/chinamobile10086/a;

    invoke-direct {v0, p0}, Lcom/virsir/android/chinamobile10086/a;-><init>(Lcom/virsir/android/chinamobile10086/Application;)V

    iput-object v0, p0, Lcom/virsir/android/chinamobile10086/Application;->g:Landroid/os/Handler;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 3
    .parameter "type"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DATA_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I[Ljava/lang/Object;)V
    .registers 11
    .parameter "type"
    .parameter "results"

    .prologue
    iget-object v6, p0, Lcom/virsir/android/chinamobile10086/Application;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, list:Ljava/lang/Object;
    if-eqz v3, :cond_2a

    move-object v0, v3

    check-cast v0, Ljava/util/List;

    move-object v5, v0

    .local v5, theList:Ljava/util/List;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .local v1, handler:Landroid/os/Handler;
    const/16 v6, 0x66

    invoke-virtual {v1, v6, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .local v4, msg:Landroid/os/Message;
    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #theList:Ljava/util/List;
    :cond_2a
    return-void
.end method

.method static synthetic a(Lcom/virsir/android/chinamobile10086/Application;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/virsir/android/chinamobile10086/Application;->h(I)V

    return-void
.end method

.method static synthetic a(Lcom/virsir/android/chinamobile10086/Application;I[Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/virsir/android/chinamobile10086/Application;->a(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static b(I)Ljava/lang/String;
    .registers 3
    .parameter "type"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DATA_UPDATE_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/virsir/android/chinamobile10086/Application;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/virsir/android/chinamobile10086/Application;->i(I)V

    return-void
.end method

.method private g(I)[Ljava/lang/Object;
    .registers 4
    .parameter "type"

    .prologue
    invoke-virtual {p0, p1}, Lcom/virsir/android/chinamobile10086/Application;->e(I)Lcom/virsir/android/chinamobile10086/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/virsir/android/chinamobile10086/d;->a()[Ljava/lang/Object;

    move-result-object v0

    .local v0, results:[Ljava/lang/Object;
    return-object v0
.end method

.method private h(I)V
    .registers 9
    .parameter "type"

    .prologue
    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/Application;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, list:Ljava/lang/Object;
    if-eqz v3, :cond_26

    move-object v0, v3

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .local v4, theList:Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .local v1, handler:Landroid/os/Handler;
    const/16 v5, 0x67

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_14

    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #theList:Ljava/util/List;
    :cond_26
    return-void
.end method

.method private i(I)V
    .registers 9
    .parameter "type"

    .prologue
    iget-object v5, p0, Lcom/virsir/android/chinamobile10086/Application;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, list:Ljava/lang/Object;
    if-eqz v3, :cond_26

    move-object v0, v3

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .local v4, theList:Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .local v1, handler:Landroid/os/Handler;
    const/16 v5, 0x65

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_14

    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #theList:Ljava/util/List;
    :cond_26
    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Handler;)V
    .registers 8
    .parameter "type"
    .parameter "handler"

    .prologue
    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/Application;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, list:Ljava/lang/Object;
    if-nez v1, :cond_1e

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, theList:Ljava/util/List;
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/Application;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    :goto_1d
    return-void

    .end local v2           #theList:Ljava/util/List;
    :cond_1e
    move-object v0, v1

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .restart local v2       #theList:Ljava/util/List;
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d
.end method

.method public a(ILcom/virsir/android/chinamobile10086/d;)V
    .registers 5
    .parameter "type"
    .parameter "dl"

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/Application;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/Application;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void
.end method

.method a(Lcom/virsir/android/chinamobile10086/utils/b;)V
    .registers 5
    .parameter "client"

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/Application;->d:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/virsir/android/chinamobile10086/news/d;

    invoke-direct {v2, p1}, Lcom/virsir/android/chinamobile10086/news/d;-><init>(Lcom/virsir/android/chinamobile10086/utils/b;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(ILandroid/os/Handler;)Z
    .registers 9
    .parameter "type"
    .parameter "handler"

    .prologue
    const/4 v5, 0x0

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/Application;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, list:Ljava/lang/Object;
    if-nez v1, :cond_f

    move v3, v5

    :goto_e
    return v3

    :cond_f
    move-object v0, v1

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .local v2, theList:Ljava/util/List;
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_e

    :cond_1e
    move v3, v5

    goto :goto_e
.end method

.method public c(I)Z
    .registers 6
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/Application;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, status:Ljava/lang/Object;
    if-eqz v0, :cond_17

    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #status:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v3, :cond_17

    move v1, v3

    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method protected d(I)V
    .registers 11
    .parameter "type"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/Application;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/Application;->g:Landroid/os/Handler;

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/Application;->g:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x0

    .local v1, results:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, tried:I
    invoke-direct {p0, p1}, Lcom/virsir/android/chinamobile10086/Application;->g(I)[Ljava/lang/Object;

    move-result-object v1

    :goto_26
    if-nez v1, :cond_39

    if-ge v2, v8, :cond_39

    :try_start_2a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, p1}, Lcom/virsir/android/chinamobile10086/Application;->g(I)[Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_37} :catch_80

    move-result-object v1

    goto :goto_26

    :cond_39
    if-nez v1, :cond_5a

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/Application;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/Application;->g:Landroid/os/Handler;

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/Application;->g:Landroid/os/Handler;

    const/16 v5, 0x67

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_59
    return-void

    :cond_5a
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Object;

    .local v0, objs:[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    aput-object v1, v0, v8

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/Application;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/virsir/android/chinamobile10086/Application;->g:Landroid/os/Handler;

    iget-object v4, p0, Lcom/virsir/android/chinamobile10086/Application;->g:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_59

    .end local v0           #objs:[Ljava/lang/Object;
    :catch_80
    move-exception v3

    goto :goto_26
.end method

.method public e(I)Lcom/virsir/android/chinamobile10086/d;
    .registers 4
    .parameter "type"

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/Application;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/virsir/android/chinamobile10086/d;

    return-object p0
.end method

.method public f(I)V
    .registers 6
    .parameter "type"

    .prologue
    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/Application;->a:Landroid/os/Handler;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/Application;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/Application;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v0           #msg:Landroid/os/Message;
    :cond_14
    return-void
.end method

.method public onCreate()V
    .registers 3

    .prologue
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/virsir/android/chinamobile10086/Application;->c:Landroid/content/SharedPreferences;

    new-instance v1, Lcom/virsir/android/chinamobile10086/utils/b;

    invoke-direct {v1, p0}, Lcom/virsir/android/chinamobile10086/utils/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/virsir/android/chinamobile10086/Application;->b:Lcom/virsir/android/chinamobile10086/utils/b;

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/Application;->b:Lcom/virsir/android/chinamobile10086/utils/b;

    invoke-virtual {p0, v1}, Lcom/virsir/android/chinamobile10086/Application;->a(Lcom/virsir/android/chinamobile10086/utils/b;)V

    new-instance v0, Lcom/virsir/android/chinamobile10086/Application$a;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/virsir/android/chinamobile10086/Application$a;-><init>(Lcom/virsir/android/chinamobile10086/Application;Ljava/lang/String;)V

    .local v0, childThread:Lcom/virsir/android/chinamobile10086/Application$a;
    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/Application$a;->start()V

    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/Application$a;->a()V

    return-void
.end method
