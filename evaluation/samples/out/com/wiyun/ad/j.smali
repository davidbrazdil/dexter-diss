.class Lcom/wiyun/ad/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/wiyun/ad/h;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/StringBuffer;

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/wiyun/ad/h;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/wiyun/ad/j;->d:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/wiyun/ad/j;->e:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/wiyun/ad/j;->f:I

    iput-object p1, p0, Lcom/wiyun/ad/j;->a:Lcom/wiyun/ad/h;

    iput-object p2, p0, Lcom/wiyun/ad/j;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/wiyun/ad/j;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/wiyun/ad/j;->c:Ljava/lang/StringBuffer;

    return-void
.end method

.method private a(I)V
    .registers 7

    const/16 v4, 0xa

    const/4 v3, -0x1

    iget v0, p0, Lcom/wiyun/ad/j;->f:I

    sub-int/2addr v0, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/wiyun/ad/j;->e:I

    :cond_c
    iget-object v0, p0, Lcom/wiyun/ad/j;->b:Ljava/lang/String;

    const/16 v1, 0x26

    iget v2, p0, Lcom/wiyun/ad/j;->e:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iput v0, p0, Lcom/wiyun/ad/j;->e:I

    iget v0, p0, Lcom/wiyun/ad/j;->f:I

    if-eq v0, v3, :cond_30

    iget v0, p0, Lcom/wiyun/ad/j;->f:I

    iget v1, p0, Lcom/wiyun/ad/j;->e:I

    if-ge v0, v1, :cond_30

    iget-object v0, p0, Lcom/wiyun/ad/j;->b:Ljava/lang/String;

    const/16 v1, 0x3b

    iget v2, p0, Lcom/wiyun/ad/j;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iput v0, p0, Lcom/wiyun/ad/j;->f:I

    :cond_30
    iget v0, p0, Lcom/wiyun/ad/j;->e:I

    if-eq v0, v3, :cond_43

    iget v0, p0, Lcom/wiyun/ad/j;->f:I

    if-eq v0, v3, :cond_43

    iget v0, p0, Lcom/wiyun/ad/j;->e:I

    iget v1, p0, Lcom/wiyun/ad/j;->f:I

    sub-int/2addr v0, v1

    if-ge v0, v4, :cond_43

    const/4 v0, 0x1

    :goto_40
    if-eqz v0, :cond_45

    :cond_42
    :goto_42
    return-void

    :cond_43
    const/4 v0, 0x0

    goto :goto_40

    :cond_45
    iget v0, p0, Lcom/wiyun/ad/j;->e:I

    if-eq v0, v3, :cond_42

    iget v0, p0, Lcom/wiyun/ad/j;->f:I

    if-ne v0, v3, :cond_50

    iput v3, p0, Lcom/wiyun/ad/j;->e:I

    goto :goto_42

    :cond_50
    iget v0, p0, Lcom/wiyun/ad/j;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wiyun/ad/j;->e:I

    iget v0, p0, Lcom/wiyun/ad/j;->e:I

    if-ne v0, v3, :cond_c

    goto :goto_42
.end method

.method private b(I)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/wiyun/ad/j;->b:Ljava/lang/String;

    iget v1, p0, Lcom/wiyun/ad/j;->e:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/wiyun/ad/j;->f:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .registers 6

    iget v0, p0, Lcom/wiyun/ad/j;->e:I

    iget v1, p0, Lcom/wiyun/ad/j;->d:I

    if-eq v0, v1, :cond_23

    iget v0, p0, Lcom/wiyun/ad/j;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    iget v0, p0, Lcom/wiyun/ad/j;->e:I

    :goto_d
    iget v1, p0, Lcom/wiyun/ad/j;->d:I

    sub-int v1, v0, v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_3c

    iget-object v1, p0, Lcom/wiyun/ad/j;->c:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/wiyun/ad/j;->b:Ljava/lang/String;

    iget v3, p0, Lcom/wiyun/ad/j;->d:I

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iput v0, p0, Lcom/wiyun/ad/j;->d:I

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/wiyun/ad/j;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_d

    :cond_2b
    iget-object v1, p0, Lcom/wiyun/ad/j;->c:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/wiyun/ad/j;->b:Ljava/lang/String;

    iget v3, p0, Lcom/wiyun/ad/j;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/wiyun/ad/j;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3c
    iget v1, p0, Lcom/wiyun/ad/j;->d:I

    if-lt v1, v0, :cond_2b

    goto :goto_23
.end method

.method private c()V
    .registers 3

    iget v0, p0, Lcom/wiyun/ad/j;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/wiyun/ad/j;->b:Ljava/lang/String;

    iget v1, p0, Lcom/wiyun/ad/j;->d:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_23

    const/4 v0, 0x1

    :goto_14
    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/wiyun/ad/j;->d()Z

    move-result v0

    :goto_1a
    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/wiyun/ad/j;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wiyun/ad/j;->d:I

    :cond_22
    :goto_22
    return-void

    :cond_23
    const/4 v0, 0x0

    goto :goto_14

    :cond_25
    invoke-direct {p0}, Lcom/wiyun/ad/j;->e()Z

    move-result v0

    goto :goto_1a

    :cond_2a
    iget-object v0, p0, Lcom/wiyun/ad/j;->b:Ljava/lang/String;

    iget v1, p0, Lcom/wiyun/ad/j;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lcom/wiyun/ad/j;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/wiyun/ad/j;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wiyun/ad/j;->d:I

    goto :goto_22
.end method

.method private d()Z
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/wiyun/ad/j;->b:Ljava/lang/String;

    iget v1, p0, Lcom/wiyun/ad/j;->e:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x78

    if-eq v0, v1, :cond_32

    iget-object v0, p0, Lcom/wiyun/ad/j;->b:Ljava/lang/String;

    iget v1, p0, Lcom/wiyun/ad/j;->e:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x58

    if-eq v0, v1, :cond_32

    move v0, v2

    :goto_1f
    if-nez v0, :cond_34

    const/4 v0, 0x2

    :try_start_22
    invoke-direct {p0, v0}, Lcom/wiyun/ad/j;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2a
    iget-object v1, p0, Lcom/wiyun/ad/j;->c:Ljava/lang/StringBuffer;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v3

    :goto_31
    return v0

    :cond_32
    move v0, v3

    goto :goto_1f

    :cond_34
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/wiyun/ad/j;->b(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_3e} :catch_40

    move-result v0

    goto :goto_2a

    :catch_40
    move-exception v0

    move v0, v2

    goto :goto_31
.end method

.method private e()Z
    .registers 4

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/wiyun/ad/j;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wiyun/ad/j;->a:Lcom/wiyun/ad/h;

    invoke-virtual {v1, v0}, Lcom/wiyun/ad/h;->a(Ljava/lang/String;)C

    move-result v0

    const v1, 0xffff

    if-eq v0, v1, :cond_17

    iget-object v1, p0, Lcom/wiyun/ad/j;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v2

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    :goto_0
    iget v0, p0, Lcom/wiyun/ad/j;->d:I

    iget-object v1, p0, Lcom/wiyun/ad/j;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_11

    iget-object v0, p0, Lcom/wiyun/ad/j;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    iget v0, p0, Lcom/wiyun/ad/j;->d:I

    invoke-direct {p0, v0}, Lcom/wiyun/ad/j;->a(I)V

    invoke-direct {p0}, Lcom/wiyun/ad/j;->b()V

    invoke-direct {p0}, Lcom/wiyun/ad/j;->c()V

    goto :goto_0
.end method
