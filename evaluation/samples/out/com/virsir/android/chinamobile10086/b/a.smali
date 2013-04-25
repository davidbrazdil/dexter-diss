.class public Lcom/virsir/android/chinamobile10086/b/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .parameter "commands"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/b/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/b/a;->b:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/b/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/b/a;->a:Ljava/lang/String;

    return-object v0
.end method
