.class public Lcom/opay/face/common/util/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field public static a:I = -0xff478a

.field public static b:I = -0x23f3b8


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()I
    .locals 1

    .line 1
    sget v0, Lcom/opay/face/common/util/ColorUtils;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public static b()I
    .locals 1

    .line 1
    sget v0, Lcom/opay/face/common/util/ColorUtils;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "1"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, -0xff478a

    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sput v1, Lcom/opay/face/common/util/ColorUtils;->a:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "7"

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    const p0, -0xe23161

    .line 24
    .line 25
    .line 26
    sput p0, Lcom/opay/face/common/util/ColorUtils;->a:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sput v1, Lcom/opay/face/common/util/ColorUtils;->a:I

    .line 30
    .line 31
    :goto_0
    return-void
.end method
