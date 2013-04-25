.class Lcom/virsir/android/chinamobile10086/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/virsir/android/chinamobile10086/MainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/virsir/android/chinamobile10086/MainView;


# direct methods
.method constructor <init>(Lcom/virsir/android/chinamobile10086/MainView;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/g;->a:Lcom/virsir/android/chinamobile10086/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/g;->a:Lcom/virsir/android/chinamobile10086/MainView;

    iget-object v1, v1, Lcom/virsir/android/chinamobile10086/MainView;->d:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/g;->a:Lcom/virsir/android/chinamobile10086/MainView;

    iget-object v1, v1, Lcom/virsir/android/chinamobile10086/MainView;->o:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "disclaimerViewed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/g;->a:Lcom/virsir/android/chinamobile10086/MainView;

    invoke-static {v1}, Lcom/virsir/android/chinamobile10086/MainView;->d(Lcom/virsir/android/chinamobile10086/MainView;)V

    return-void
.end method
