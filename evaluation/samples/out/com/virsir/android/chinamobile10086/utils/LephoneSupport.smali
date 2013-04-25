.class public Lcom/virsir/android/chinamobile10086/utils/LephoneSupport;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/virsir/android/chinamobile10086/utils/LephoneSupport;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLenFLAG_ROCKET_MENU_NOTIFY()I
    .registers 5

    .prologue
    sget v3, Lcom/virsir/android/chinamobile10086/utils/LephoneSupport;->a:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    :try_start_5
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    .local v0, cls:Ljava/lang/Class;
    const-string v3, "FLAG_ROCKET_MENU_NOTIFY"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, fld:Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/virsir/android/chinamobile10086/utils/LephoneSupport;->a:I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_14} :catch_17

    .end local v0           #cls:Ljava/lang/Class;
    .end local v1           #fld:Ljava/lang/reflect/Field;
    :cond_14
    :goto_14
    sget v3, Lcom/virsir/android/chinamobile10086/utils/LephoneSupport;->a:I

    return v3

    :catch_17
    move-exception v3

    move-object v2, v3

    .local v2, t:Ljava/lang/Throwable;
    const/4 v3, 0x0

    sput v3, Lcom/virsir/android/chinamobile10086/utils/LephoneSupport;->a:I

    goto :goto_14
.end method

.method public static isLephone()Z
    .registers 1

    invoke-static {}, Lcom/virsir/android/chinamobile10086/utils/LephoneSupport;->getLenFLAG_ROCKET_MENU_NOTIFY()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
