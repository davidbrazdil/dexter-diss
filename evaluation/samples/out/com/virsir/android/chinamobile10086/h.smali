.class Lcom/virsir/android/chinamobile10086/h;
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
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/h;->a:Lcom/virsir/android/chinamobile10086/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/h;->a:Lcom/virsir/android/chinamobile10086/MainView;

    iget-object v0, v0, Lcom/virsir/android/chinamobile10086/MainView;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/h;->a:Lcom/virsir/android/chinamobile10086/MainView;

    invoke-virtual {v0}, Lcom/virsir/android/chinamobile10086/MainView;->finish()V

    return-void
.end method
