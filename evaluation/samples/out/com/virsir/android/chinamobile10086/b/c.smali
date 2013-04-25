.class public Lcom/virsir/android/chinamobile10086/b/c;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/b/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/virsir/android/chinamobile10086/b/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/virsir/android/chinamobile10086/b/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/b/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/b/c;->c:Ljava/lang/String;

    return-object v0
.end method
