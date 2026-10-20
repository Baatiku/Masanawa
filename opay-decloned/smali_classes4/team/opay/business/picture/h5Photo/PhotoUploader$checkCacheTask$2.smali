.class final Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PhotoUploader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/picture/h5Photo/PhotoUploader;->i(Ljr2;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lzr2;",
        "",
        "Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;",
        "<anonymous>",
        "(Lzr2;)Ljava/util/List;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.business.picture.h5Photo.PhotoUploader$checkCacheTask$2"
    f = "PhotoUploader.kt"
    l = {
        0x2c,
        0x38,
        0x3a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/business/picture/h5Photo/PhotoUploader;


# direct methods
.method public constructor <init>(Lteam/opay/business/picture/h5Photo/PhotoUploader;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/picture/h5Photo/PhotoUploader;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->this$0:Lteam/opay/business/picture/h5Photo/PhotoUploader;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 1
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
    new-instance p1, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->this$0:Lteam/opay/business/picture/h5Photo/PhotoUploader;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;-><init>(Lteam/opay/business/picture/h5Photo/PhotoUploader;Ljr2;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget v3, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->label:I

    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x0

    .line 12
    if-eqz v3, :cond_4

    .line 13
    .line 14
    if-eq v3, v1, :cond_3

    .line 15
    .line 16
    if-eq v3, v5, :cond_2

    .line 17
    .line 18
    if-ne v3, v4, :cond_1

    .line 19
    .line 20
    iget v0, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->I$0:I

    .line 21
    .line 22
    iget-object v3, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->L$2:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v3, Ljava/util/Iterator;

    .line 25
    .line 26
    iget-object v7, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->L$1:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v7, Lteam/opay/business/picture/h5Photo/PhotoUploader;

    .line 29
    .line 30
    iget-object v8, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->L$0:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v8, Ljava/util/List;

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    move-object v9, v8

    .line 38
    move-object v8, v7

    .line 39
    move-object v7, v3

    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    iget v0, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->I$0:I

    .line 51
    .line 52
    iget-object v3, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->L$3:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v3, Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;

    .line 55
    .line 56
    iget-object v7, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->L$2:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v7, Ljava/util/Iterator;

    .line 59
    .line 60
    iget-object v8, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->L$1:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v8, Lteam/opay/business/picture/h5Photo/PhotoUploader;

    .line 63
    .line 64
    iget-object v9, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v9, Ljava/util/List;

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :cond_3
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    sget-object p1, Lteam/opay/business/picture/h5Photo/PictureStorage;->b:Lteam/opay/business/picture/h5Photo/PictureStorage;

    .line 81
    .line 82
    iput v1, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->label:I

    .line 83
    .line 84
    invoke-virtual {p1, p0}, Lteam/opay/business/picture/h5Photo/PictureStorage;->b(Ljr2;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-ne p1, v2, :cond_5

    .line 89
    .line 90
    return-object v2

    .line 91
    :cond_5
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 92
    .line 93
    sget-object v3, Lfk8;->c:Lfk8;

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    new-instance v8, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v9, "checkCacheTask: num: "

    .line 105
    .line 106
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v7, " : "

    .line 113
    .line 114
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-static {v3, v7, v6, v5, v6}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-nez v3, :cond_6

    .line 132
    .line 133
    move-object v3, p1

    .line 134
    goto :goto_1

    .line 135
    :cond_6
    move-object v3, v6

    .line 136
    :goto_1
    if-eqz v3, :cond_b

    .line 137
    .line 138
    iget-object v7, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->this$0:Lteam/opay/business/picture/h5Photo/PhotoUploader;

    .line 139
    .line 140
    sget-object v8, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 141
    .line 142
    invoke-static {v7}, Lteam/opay/business/picture/h5Photo/PhotoUploader;->f(Lteam/opay/business/picture/h5Photo/PhotoUploader;)Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    new-instance v10, Lkotlin/Pair;

    .line 147
    .line 148
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    invoke-static {v11}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    const-string v12, "data_size"

    .line 157
    .line 158
    invoke-direct {v10, v12, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    new-array v11, v1, [Lkotlin/Pair;

    .line 162
    .line 163
    aput-object v10, v11, v0

    .line 164
    .line 165
    const-string v10, "h5_photo_upload_cache"

    .line 166
    .line 167
    invoke-virtual {v8, v9, v10, v11}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 168
    .line 169
    .line 170
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    move-object v9, v3

    .line 175
    move-object v8, v7

    .line 176
    move-object v7, p1

    .line 177
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_a

    .line 182
    .line 183
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    add-int/lit8 v3, v0, 0x1

    .line 188
    .line 189
    if-gez v0, :cond_7

    .line 190
    .line 191
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 192
    .line 193
    .line 194
    :cond_7
    check-cast p1, Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;

    .line 195
    .line 196
    if-lt v0, v1, :cond_9

    .line 197
    .line 198
    iput-object v9, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->L$0:Ljava/lang/Object;

    .line 199
    .line 200
    iput-object v8, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->L$1:Ljava/lang/Object;

    .line 201
    .line 202
    iput-object v7, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->L$2:Ljava/lang/Object;

    .line 203
    .line 204
    iput-object p1, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->L$3:Ljava/lang/Object;

    .line 205
    .line 206
    iput v3, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->I$0:I

    .line 207
    .line 208
    iput v5, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->label:I

    .line 209
    .line 210
    const-wide/16 v10, 0x7530

    .line 211
    .line 212
    invoke-static {v10, v11, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-ne v0, v2, :cond_8

    .line 217
    .line 218
    return-object v2

    .line 219
    :cond_8
    move v0, v3

    .line 220
    move-object v3, p1

    .line 221
    :goto_3
    move-object p1, v3

    .line 222
    :goto_4
    move-object v3, v7

    .line 223
    move-object v7, v8

    .line 224
    move-object v8, v9

    .line 225
    goto :goto_5

    .line 226
    :cond_9
    move v0, v3

    .line 227
    goto :goto_4

    .line 228
    :goto_5
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    new-instance v10, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2$2$1$1;

    .line 233
    .line 234
    invoke-direct {v10, v7, p1, v6}, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2$2$1$1;-><init>(Lteam/opay/business/picture/h5Photo/PhotoUploader;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Ljr2;)V

    .line 235
    .line 236
    .line 237
    iput-object v8, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->L$0:Ljava/lang/Object;

    .line 238
    .line 239
    iput-object v7, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->L$1:Ljava/lang/Object;

    .line 240
    .line 241
    iput-object v3, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->L$2:Ljava/lang/Object;

    .line 242
    .line 243
    iput-object v6, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->L$3:Ljava/lang/Object;

    .line 244
    .line 245
    iput v0, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->I$0:I

    .line 246
    .line 247
    iput v4, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;->label:I

    .line 248
    .line 249
    invoke-static {v9, v10, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    if-ne p1, v2, :cond_0

    .line 254
    .line 255
    return-object v2

    .line 256
    :cond_a
    move-object v6, v9

    .line 257
    :cond_b
    return-object v6
.end method
