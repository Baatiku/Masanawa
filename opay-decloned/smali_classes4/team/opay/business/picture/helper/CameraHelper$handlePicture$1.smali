.class final Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CameraHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/picture/helper/CameraHelper;->o(Landroid/net/Uri;)V
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
    c = "team.opay.business.picture.helper.CameraHelper$handlePicture$1"
    f = "CameraHelper.kt"
    l = {
        0x87
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $uri:Landroid/net/Uri;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

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
            "Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->this$0:Lteam/opay/business/picture/helper/CameraHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->$uri:Landroid/net/Uri;

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

.method public static synthetic c(Lteam/opay/business/picture/helper/CameraHelper;Ljava/io/File;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->invokeSuspend$lambda$2$lambda$0(Lteam/opay/business/picture/helper/CameraHelper;Ljava/io/File;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$2$lambda$0(Lteam/opay/business/picture/helper/CameraHelper;Ljava/io/File;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/picture/helper/CameraHelper;->n()Lteam/opay/business/picture/helper/PickViewWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "fromFile(...)"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "image/jpeg"

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lteam/opay/business/picture/helper/PickViewWrapper;->a(Landroid/net/Uri;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
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
    new-instance p1, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->this$0:Lteam/opay/business/picture/helper/CameraHelper;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->$uri:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;-><init>(Lteam/opay/business/picture/helper/CameraHelper;Landroid/net/Uri;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->label:I

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
    iget-object v0, p0, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->L$1:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroid/graphics/Bitmap;

    .line 15
    .line 16
    iget-object v1, p0, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Landroid/graphics/Bitmap;

    .line 19
    .line 20
    :try_start_0
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :try_start_1
    sget-object p1, Lmd1;->a:Lmd1;

    .line 40
    .line 41
    iget-object v1, p0, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->this$0:Lteam/opay/business/picture/helper/CameraHelper;

    .line 42
    .line 43
    invoke-static {v1}, Lteam/opay/business/picture/helper/CameraHelper;->g(Lteam/opay/business/picture/helper/CameraHelper;)Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iget-object v5, p0, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->$uri:Landroid/net/Uri;

    .line 48
    .line 49
    iget-object v1, p0, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->this$0:Lteam/opay/business/picture/helper/CameraHelper;

    .line 50
    .line 51
    invoke-static {v1}, Lteam/opay/business/picture/helper/CameraHelper;->g(Lteam/opay/business/picture/helper/CameraHelper;)Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Let;->p(Landroid/content/Context;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    int-to-float v6, v1

    .line 60
    iget-object v1, p0, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->this$0:Lteam/opay/business/picture/helper/CameraHelper;

    .line 61
    .line 62
    invoke-static {v1}, Lteam/opay/business/picture/helper/CameraHelper;->g(Lteam/opay/business/picture/helper/CameraHelper;)Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1}, Let;->o(Landroid/content/Context;)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    int-to-float v7, v1

    .line 71
    iget-object v1, p0, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->this$0:Lteam/opay/business/picture/helper/CameraHelper;

    .line 72
    .line 73
    invoke-static {v1}, Lteam/opay/business/picture/helper/CameraHelper;->i(Lteam/opay/business/picture/helper/CameraHelper;)I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    move-object v3, p1

    .line 78
    invoke-virtual/range {v3 .. v8}, Lmd1;->d(Landroid/content/Context;Landroid/net/Uri;FFI)Landroid/graphics/Bitmap;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v3, p0, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->this$0:Lteam/opay/business/picture/helper/CameraHelper;

    .line 83
    .line 84
    invoke-static {v3}, Lteam/opay/business/picture/helper/CameraHelper;->g(Lteam/opay/business/picture/helper/CameraHelper;)Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iget-object v4, p0, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->$uri:Landroid/net/Uri;

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    if-eqz v3, :cond_2

    .line 99
    .line 100
    if-eqz v1, :cond_2

    .line 101
    .line 102
    invoke-virtual {p1, v1, v3}, Lmd1;->e(Landroid/graphics/Bitmap;Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    :cond_2
    if-eqz v1, :cond_6

    .line 107
    .line 108
    iget-object v3, p0, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->this$0:Lteam/opay/business/picture/helper/CameraHelper;

    .line 109
    .line 110
    iget-object v4, p0, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->$uri:Landroid/net/Uri;

    .line 111
    .line 112
    invoke-static {v3}, Lteam/opay/business/picture/helper/CameraHelper;->h(Lteam/opay/business/picture/helper/CameraHelper;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    const/4 v6, 0x0

    .line 117
    if-eqz v5, :cond_3

    .line 118
    .line 119
    const/4 v5, 0x2

    .line 120
    invoke-static {p1, v1, v6, v5, v6}, Lmd1;->c(Lmd1;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    goto :goto_0

    .line 125
    :cond_3
    move-object p1, v1

    .line 126
    :goto_0
    sget-object v5, Lteam/opay/business/picture/internal/CameraXManager;->a:Lteam/opay/business/picture/internal/CameraXManager;

    .line 127
    .line 128
    invoke-static {v3}, Lteam/opay/business/picture/helper/CameraHelper;->g(Lteam/opay/business/picture/helper/CameraHelper;)Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    const-string v8, "compress_camera"

    .line 133
    .line 134
    invoke-virtual {v5, v7, v8}, Lteam/opay/business/picture/internal/CameraXManager;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    sget-object v8, Lid1;->a:Lid1;

    .line 139
    .line 140
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    const-string v10, "getAbsolutePath(...)"

    .line 145
    .line 146
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8, p1, v9}, Lid1;->b(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    new-instance p1, Lteam/opay/business/picture/helper/a;

    .line 153
    .line 154
    invoke-direct {p1, v3, v7}, Lteam/opay/business/picture/helper/a;-><init>(Lteam/opay/business/picture/helper/CameraHelper;Ljava/io/File;)V

    .line 155
    .line 156
    .line 157
    const-wide/16 v7, 0x0

    .line 158
    .line 159
    invoke-static {v7, v8, p1, v2, v6}, Lgke;->d(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    invoke-static {v3}, Lteam/opay/business/picture/helper/CameraHelper;->g(Lteam/opay/business/picture/helper/CameraHelper;)Landroid/content/Context;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iput-object v1, p0, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->L$0:Ljava/lang/Object;

    .line 167
    .line 168
    iput-object v1, p0, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->L$1:Ljava/lang/Object;

    .line 169
    .line 170
    iput v2, p0, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->label:I

    .line 171
    .line 172
    invoke-virtual {v5, p1, v4, p0}, Lteam/opay/business/picture/internal/CameraXManager;->b(Landroid/content/Context;Landroid/net/Uri;Ljr2;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    if-ne p1, v0, :cond_4

    .line 177
    .line 178
    return-object v0

    .line 179
    :cond_4
    move-object v0, v1

    .line 180
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 181
    .line 182
    if-eqz p1, :cond_5

    .line 183
    .line 184
    new-instance v1, Ljava/io/File;

    .line 185
    .line 186
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_5

    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 196
    .line 197
    .line 198
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    .line 204
    .line 205
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 206
    .line 207
    return-object p1
.end method
