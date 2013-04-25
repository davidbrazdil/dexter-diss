.class public Lcom/virsir/android/chinamobile10086/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/virsir/android/chinamobile10086/a/a;->b:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/virsir/android/chinamobile10086/a/a;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    iget v0, p0, Lcom/virsir/android/chinamobile10086/a/a;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2
    .parameter "currentPageIndex"

    .prologue
    iput p1, p0, Lcom/virsir/android/chinamobile10086/a/a;->a:I

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .parameter "items"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/a/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/a/a;->f:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter "hasNextPage"

    .prologue
    iput-boolean p1, p0, Lcom/virsir/android/chinamobile10086/a/a;->d:Z

    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    iget v0, p0, Lcom/virsir/android/chinamobile10086/a/a;->c:I

    return v0
.end method

.method public b(I)V
    .registers 2
    .parameter "pageSize"

    .prologue
    iput p1, p0, Lcom/virsir/android/chinamobile10086/a/a;->c:I

    return-void
.end method

.method public c(I)V
    .registers 2
    .parameter "nextPageStart"

    .prologue
    iput p1, p0, Lcom/virsir/android/chinamobile10086/a/a;->e:I

    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    iget-boolean v0, p0, Lcom/virsir/android/chinamobile10086/a/a;->d:Z

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    iget v0, p0, Lcom/virsir/android/chinamobile10086/a/a;->e:I

    return v0
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/virsir/android/chinamobile10086/a/c;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/a/a;->f:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalSearchResult [currentPageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/virsir/android/chinamobile10086/a/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasNextPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/virsir/android/chinamobile10086/a/a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/virsir/android/chinamobile10086/a/a;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/virsir/android/chinamobile10086/a/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nextPageStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/virsir/android/chinamobile10086/a/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/virsir/android/chinamobile10086/a/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
