.class public Lcom/wiyun/ad/CJC;
.super Ljava/lang/Object;


# static fields
.field public static sAS:Z

.field public static sWGA:Z

.field public static sWGC:Z

.field public static sWGCC:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/wiyun/ad/CJC;->sAS:Z

    sput-boolean v0, Lcom/wiyun/ad/CJC;->sWGA:Z

    sput-boolean v0, Lcom/wiyun/ad/CJC;->sWGC:Z

    sput-boolean v0, Lcom/wiyun/ad/CJC;->sWGCC:Z

    return-void
.end method
