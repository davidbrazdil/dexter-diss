.class public Lcom/flurry/android/Flog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/flurry/android/Flog;->a:Z

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    sget-boolean v0, Lcom/flurry/android/Flog;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 31
    :goto_5
    return v0

    :cond_6
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    sget-boolean v0, Lcom/flurry/android/Flog;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 27
    :goto_5
    return v0

    :cond_6
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_5
.end method

.method static a(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 38
    sget-boolean v0, Lcom/flurry/android/Flog;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 39
    :goto_5
    return v0

    :cond_6
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    sget-boolean v0, Lcom/flurry/android/Flog;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 35
    :goto_5
    return v0

    :cond_6
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_5
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    sget-boolean v0, Lcom/flurry/android/Flog;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 63
    :goto_5
    return v0

    :cond_6
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public static disableLog()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/android/Flog;->a:Z

    return-void
.end method

.method public static enableLog()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/flurry/android/Flog;->a:Z

    return-void
.end method
