.class public Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/virsir/android/chinamobile10086/CheckUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field final synthetic e:Lcom/virsir/android/chinamobile10086/CheckUpdateService;


# direct methods
.method public constructor <init>(Lcom/virsir/android/chinamobile10086/CheckUpdateService;)V
    .registers 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;->e:Lcom/virsir/android/chinamobile10086/CheckUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    iget v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/virsir/android/chinamobile10086/CheckUpdateService$c;->c:Ljava/lang/String;

    return-object v0
.end method
