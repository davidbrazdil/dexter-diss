.class public abstract Lcom/wiyun/ad/t;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/wiyun/ad/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/wiyun/ad/h;

    invoke-direct {v0}, Lcom/wiyun/ad/h;-><init>()V

    sput-object v0, Lcom/wiyun/ad/t;->a:Lcom/wiyun/ad/h;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/wiyun/ad/j;

    sget-object v1, Lcom/wiyun/ad/t;->a:Lcom/wiyun/ad/h;

    invoke-direct {v0, v1, p0}, Lcom/wiyun/ad/j;-><init>(Lcom/wiyun/ad/h;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/wiyun/ad/j;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
