.class public Lcom/opay/face/phoneface/common/MotionDetector$b;
.super Ljava/lang/Object;
.source "MotionDetector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opay/face/phoneface/common/MotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/opay/face/sdk/entity/OFace;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/opay/face/phoneface/model/Motion;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/opay/face/phoneface/model/Motion;->BLINK:Lcom/opay/face/phoneface/model/Motion;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector$b;->a:Lcom/opay/face/phoneface/model/Motion;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/opay/face/sdk/entity/OFace;Lcom/opay/face/sdk/entity/OFace;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/opay/face/phoneface/common/MotionDetector$a;->a:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/face/phoneface/common/MotionDetector$b;->a:Lcom/opay/face/phoneface/model/Motion;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq v0, v1, :cond_5

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-eq v0, v1, :cond_4

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    if-eq v0, v1, :cond_3

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    const/4 v1, 0x7

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    return p1

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->y()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {p2}, Lcom/opay/face/sdk/entity/OFace;->y()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    :goto_0
    sub-int/2addr p1, p2

    .line 41
    return p1

    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->s()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {p2}, Lcom/opay/face/sdk/entity/OFace;->s()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->v()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {p2}, Lcom/opay/face/sdk/entity/OFace;->v()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->D()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {p2}, Lcom/opay/face/sdk/entity/OFace;->D()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->u()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-virtual {p2}, Lcom/opay/face/sdk/entity/OFace;->u()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    goto :goto_0

    .line 78
    :cond_5
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->i()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {p2}, Lcom/opay/face/sdk/entity/OFace;->i()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    goto :goto_0
.end method

.method public b(Lcom/opay/face/phoneface/model/Motion;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/face/phoneface/model/Motion;",
            ")",
            "Ljava/util/Comparator<",
            "Lcom/opay/face/sdk/entity/OFace;",
            ">;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/common/MotionDetector$b;->a:Lcom/opay/face/phoneface/model/Motion;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/opay/face/sdk/entity/OFace;

    .line 2
    .line 3
    check-cast p2, Lcom/opay/face/sdk/entity/OFace;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/opay/face/phoneface/common/MotionDetector$b;->a(Lcom/opay/face/sdk/entity/OFace;Lcom/opay/face/sdk/entity/OFace;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
