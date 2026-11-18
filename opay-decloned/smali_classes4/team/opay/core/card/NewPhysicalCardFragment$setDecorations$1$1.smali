.class final Lteam/opay/core/card/NewPhysicalCardFragment$setDecorations$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewPhysicalCardFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/card/NewPhysicalCardFragment$setDecorations$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "team.opay.core.card.NewPhysicalCardFragment$setDecorations$1$1"
    f = "NewPhysicalCardFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $position:I

.field label:I

.field final synthetic this$0:Lteam/opay/core/card/NewPhysicalCardFragment;


# direct methods
.method public constructor <init>(Lteam/opay/core/card/NewPhysicalCardFragment;ILjr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/NewPhysicalCardFragment;",
            "I",
            "Ljr2<",
            "-",
            "Lteam/opay/core/card/NewPhysicalCardFragment$setDecorations$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/card/NewPhysicalCardFragment$setDecorations$1$1;->this$0:Lteam/opay/core/card/NewPhysicalCardFragment;

    .line 2
    .line 3
    iput p2, p0, Lteam/opay/core/card/NewPhysicalCardFragment$setDecorations$1$1;->$position:I

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
    new-instance p1, Lteam/opay/core/card/NewPhysicalCardFragment$setDecorations$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/core/card/NewPhysicalCardFragment$setDecorations$1$1;->this$0:Lteam/opay/core/card/NewPhysicalCardFragment;

    .line 4
    .line 5
    iget v1, p0, Lteam/opay/core/card/NewPhysicalCardFragment$setDecorations$1$1;->$position:I

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/core/card/NewPhysicalCardFragment$setDecorations$1$1;-><init>(Lteam/opay/core/card/NewPhysicalCardFragment;ILjr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/card/NewPhysicalCardFragment$setDecorations$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/card/NewPhysicalCardFragment$setDecorations$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/card/NewPhysicalCardFragment$setDecorations$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/card/NewPhysicalCardFragment$setDecorations$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/core/card/NewPhysicalCardFragment$setDecorations$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_b

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/core/card/NewPhysicalCardFragment$setDecorations$1$1;->this$0:Lteam/opay/core/card/NewPhysicalCardFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/core/card/NewPhysicalCardFragment;->T(Lteam/opay/core/card/NewPhysicalCardFragment;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget v1, p0, Lteam/opay/core/card/NewPhysicalCardFragment$setDecorations$1$1;->$position:I

    .line 21
    .line 22
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lteam/opay/core/card/NewPhysicalCardData;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/core/card/NewPhysicalCardData;->b()Lteam/opay/core/card/CardPageData;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1}, Lteam/opay/core/card/CardPageData;->getHomePageActivityAtmosphereDto()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object p1, v0

    .line 42
    :goto_0
    if-eqz p1, :cond_a

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const-string v2, "1"

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v3, v1

    .line 61
    check-cast v3, Lteam/opay/core/card/HomePageActivityAtmosphereDto;

    .line 62
    .line 63
    invoke-virtual {v3}, Lteam/opay/core/card/HomePageActivityAtmosphereDto;->getActivityId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    move-object v1, v0

    .line 75
    :goto_1
    check-cast v1, Lteam/opay/core/card/HomePageActivityAtmosphereDto;

    .line 76
    .line 77
    if-eqz v1, :cond_a

    .line 78
    .line 79
    iget-object p1, p0, Lteam/opay/core/card/NewPhysicalCardFragment$setDecorations$1$1;->this$0:Lteam/opay/core/card/NewPhysicalCardFragment;

    .line 80
    .line 81
    invoke-virtual {v1}, Lteam/opay/core/card/HomePageActivityAtmosphereDto;->getActivityAtmosphere()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_6

    .line 86
    .line 87
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_4

    .line 96
    .line 97
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    move-object v5, v4

    .line 102
    check-cast v5, Lteam/opay/core/card/ActivityAtmosphere;

    .line 103
    .line 104
    invoke-virtual {v5}, Lteam/opay/core/card/ActivityAtmosphere;->getLocation()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eqz v5, :cond_3

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    move-object v4, v0

    .line 116
    :goto_2
    check-cast v4, Lteam/opay/core/card/ActivityAtmosphere;

    .line 117
    .line 118
    if-eqz v4, :cond_6

    .line 119
    .line 120
    invoke-virtual {v4}, Lteam/opay/core/card/ActivityAtmosphere;->getImageUrl()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    if-eqz v2, :cond_6

    .line 125
    .line 126
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_5

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_5
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Lkg6;

    .line 138
    .line 139
    iget-object v2, v2, Lkg6;->f:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 140
    .line 141
    const-string v3, "decorationLeft"

    .line 142
    .line 143
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Lkg6;

    .line 154
    .line 155
    iget-object v5, v2, Lkg6;->f:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 156
    .line 157
    invoke-virtual {v4}, Lteam/opay/core/card/ActivityAtmosphere;->getImageUrl()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    const/16 v12, 0x3e

    .line 162
    .line 163
    const/4 v13, 0x0

    .line 164
    const/4 v7, 0x0

    .line 165
    const/4 v8, 0x0

    .line 166
    const/4 v9, 0x0

    .line 167
    const/4 v10, 0x0

    .line 168
    const/4 v11, 0x0

    .line 169
    invoke-static/range {v5 .. v13}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    :goto_3
    invoke-virtual {v1}, Lteam/opay/core/card/HomePageActivityAtmosphereDto;->getActivityAtmosphere()Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    if-eqz v1, :cond_a

    .line 177
    .line 178
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-eqz v2, :cond_8

    .line 187
    .line 188
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    move-object v3, v2

    .line 193
    check-cast v3, Lteam/opay/core/card/ActivityAtmosphere;

    .line 194
    .line 195
    invoke-virtual {v3}, Lteam/opay/core/card/ActivityAtmosphere;->getLocation()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    const-string v4, "2"

    .line 200
    .line 201
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-eqz v3, :cond_7

    .line 206
    .line 207
    move-object v0, v2

    .line 208
    :cond_8
    check-cast v0, Lteam/opay/core/card/ActivityAtmosphere;

    .line 209
    .line 210
    if-eqz v0, :cond_a

    .line 211
    .line 212
    invoke-virtual {v0}, Lteam/opay/core/card/ActivityAtmosphere;->getImageUrl()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    if-eqz v1, :cond_a

    .line 217
    .line 218
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-nez v1, :cond_9

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_9
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    check-cast v1, Lkg6;

    .line 230
    .line 231
    iget-object v1, v1, Lkg6;->g:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 232
    .line 233
    const-string v2, "decorationRight"

    .line 234
    .line 235
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    check-cast p1, Lkg6;

    .line 246
    .line 247
    iget-object v1, p1, Lkg6;->g:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 248
    .line 249
    invoke-virtual {v0}, Lteam/opay/core/card/ActivityAtmosphere;->getImageUrl()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    const/16 v8, 0x3e

    .line 254
    .line 255
    const/4 v9, 0x0

    .line 256
    const/4 v3, 0x0

    .line 257
    const/4 v4, 0x0

    .line 258
    const/4 v5, 0x0

    .line 259
    const/4 v6, 0x0

    .line 260
    const/4 v7, 0x0

    .line 261
    invoke-static/range {v1 .. v9}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :cond_a
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 265
    .line 266
    return-object p1

    .line 267
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 268
    .line 269
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 270
    .line 271
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw p1
.end method
