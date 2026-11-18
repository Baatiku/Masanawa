.class final Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CameraHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/picture/helper/CameraHelper;->j(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.business.picture.helper.CameraHelper$clipBitmap$1"
    f = "CameraHelper.kt"
    l = {
        0xa9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $uri:Landroid/net/Uri;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/business/picture/helper/CameraHelper;


# direct methods
.method public constructor <init>(Lteam/opay/business/picture/helper/CameraHelper;Landroid/net/Uri;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/picture/helper/CameraHelper;",
            "Landroid/net/Uri;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;->this$0:Lteam/opay/business/picture/helper/CameraHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;->$uri:Landroid/net/Uri;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;->this$0:Lteam/opay/business/picture/helper/CameraHelper;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;->$uri:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;-><init>(Lteam/opay/business/picture/helper/CameraHelper;Landroid/net/Uri;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/io/InputStream;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;->this$0:Lteam/opay/business/picture/helper/CameraHelper;

    .line 32
    .line 33
    invoke-static {p1}, Lteam/opay/business/picture/helper/CameraHelper;->g(Lteam/opay/business/picture/helper/CameraHelper;)Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v1, p0, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;->$uri:Landroid/net/Uri;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-object v1, Lteam/opay/business/picture/internal/CameraXManager;->a:Lteam/opay/business/picture/internal/CameraXManager;

    .line 48
    .line 49
    iget-object v3, p0, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;->this$0:Lteam/opay/business/picture/helper/CameraHelper;

    .line 50
    .line 51
    invoke-static {v3}, Lteam/opay/business/picture/helper/CameraHelper;->g(Lteam/opay/business/picture/helper/CameraHelper;)Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v4, p0, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;->$uri:Landroid/net/Uri;

    .line 56
    .line 57
    iput-object p1, p0, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    iput v2, p0, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;->label:I

    .line 60
    .line 61
    invoke-virtual {v1, v3, v4, p0}, Lteam/opay/business/picture/internal/CameraXManager;->b(Landroid/content/Context;Landroid/net/Uri;Ljr2;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-ne v1, v0, :cond_2

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_2
    move-object v0, p1

    .line 69
    move-object p1, v1

    .line 70
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    sget-object v1, Lmd1;->a:Lmd1;

    .line 79
    .line 80
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p1, v0}, Lmd1;->e(Landroid/graphics/Bitmap;Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :cond_3
    sget-object v0, Lteam/opay/business/picture/widget/CardMaskView;->i:Lteam/opay/business/picture/widget/CardMaskView$Companion;

    .line 88
    .line 89
    invoke-virtual {v0}, Lteam/opay/business/picture/widget/CardMaskView$Companion;->a()Landroid/graphics/Rect;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    iget-object v3, p0, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;->this$0:Lteam/opay/business/picture/helper/CameraHelper;

    .line 104
    .line 105
    invoke-static {v3}, Lteam/opay/business/picture/helper/CameraHelper;->g(Lteam/opay/business/picture/helper/CameraHelper;)Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-static {v3}, Let;->p(Landroid/content/Context;)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    int-to-float v4, v1

    .line 114
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 115
    .line 116
    div-int/2addr v3, v0

    .line 117
    int-to-float v0, v3

    .line 118
    div-float/2addr v4, v0

    .line 119
    int-to-double v2, v2

    .line 120
    const-wide v5, 0x3fc70a3d70a3d70aL    # 0.18

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    mul-double v5, v5, v2

    .line 126
    .line 127
    int-to-double v0, v1

    .line 128
    const-wide v7, 0x3fe75c28f5c28f5cL    # 0.73

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    mul-double v0, v0, v7

    .line 134
    .line 135
    const-wide v7, 0x3fe3020c49ba5e35L    # 0.594

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    mul-double v2, v2, v7

    .line 141
    .line 142
    iget-object v7, p0, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;->this$0:Lteam/opay/business/picture/helper/CameraHelper;

    .line 143
    .line 144
    float-to-int v4, v4

    .line 145
    double-to-int v5, v5

    .line 146
    double-to-int v0, v0

    .line 147
    double-to-int v1, v2

    .line 148
    invoke-static {p1, v4, v5, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    const-string v0, "createBitmap(...)"

    .line 153
    .line 154
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v7, p1}, Lteam/opay/business/picture/helper/CameraHelper;->f(Lteam/opay/business/picture/helper/CameraHelper;Landroid/graphics/Bitmap;)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_4
    iget-object v0, p0, Lteam/opay/business/picture/helper/CameraHelper$clipBitmap$1;->this$0:Lteam/opay/business/picture/helper/CameraHelper;

    .line 162
    .line 163
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v0, p1}, Lteam/opay/business/picture/helper/CameraHelper;->f(Lteam/opay/business/picture/helper/CameraHelper;Landroid/graphics/Bitmap;)V

    .line 167
    .line 168
    .line 169
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 170
    .line 171
    return-object p1
.end method
