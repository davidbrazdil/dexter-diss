.class Lcom/virsir/android/chinamobile10086/a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/virsir/android/chinamobile10086/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/virsir/android/chinamobile10086/Application;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/Application;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/a;->a:Lcom/virsir/android/chinamobile10086/Application;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const/4 v11, 0x0

    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_66

    .end local p0
    :goto_6
    return-void

    .restart local p0
    :pswitch_7
    iget-object v10, p0, Lcom/virsir/android/chinamobile10086/a;->a:Lcom/virsir/android/chinamobile10086/Application;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v10, v11}, Lcom/virsir/android/chinamobile10086/Application;->a(Lcom/virsir/android/chinamobile10086/Application;I)V

    goto :goto_6

    .restart local p0
    :pswitch_15
    iget-object v10, p0, Lcom/virsir/android/chinamobile10086/a;->a:Lcom/virsir/android/chinamobile10086/Application;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v10, v11}, Lcom/virsir/android/chinamobile10086/Application;->b(Lcom/virsir/android/chinamobile10086/Application;I)V

    goto :goto_6

    .restart local p0
    :pswitch_23
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .local v3, objs:[Ljava/lang/Object;
    aget-object v10, v3, v11

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .local v8, type:I
    const/4 v10, 0x1

    aget-object v10, v3, v10

    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    .local v5, result:[Ljava/lang/Object;
    aget-object v4, v5, v11

    check-cast v4, Ljava/lang/String;

    .local v4, rawString:Ljava/lang/String;
    iget-object v10, p0, Lcom/virsir/android/chinamobile10086/a;->a:Lcom/virsir/android/chinamobile10086/Application;

    invoke-static {v10, v8, v5}, Lcom/virsir/android/chinamobile10086/Application;->a(Lcom/virsir/android/chinamobile10086/Application;I[Ljava/lang/Object;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .local v6, time:J
    iget-object v10, p0, Lcom/virsir/android/chinamobile10086/a;->a:Lcom/virsir/android/chinamobile10086/Application;

    iget-object v10, v10, Lcom/virsir/android/chinamobile10086/Application;->c:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v8}, Lcom/virsir/android/chinamobile10086/Application;->a(I)Ljava/lang/String;

    move-result-object v2

    .local v2, key:Ljava/lang/String;
    invoke-static {v8}, Lcom/virsir/android/chinamobile10086/Application;->b(I)Ljava/lang/String;

    move-result-object v9

    .local v9, updateTimeKey:Ljava/lang/String;
    invoke-interface {v1, v9, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_6

    nop

    :pswitch_data_66
    .packed-switch 0x65
        :pswitch_15
        :pswitch_23
        :pswitch_7
    .end packed-switch
.end method
