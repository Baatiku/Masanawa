.class public final Lteam/opay/core/card/CardItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "CardItemDecoration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J/\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\'\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/core/card/CardItemDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "<init>",
        "()V",
        "Landroid/graphics/Rect;",
        "outRect",
        "Landroid/view/View;",
        "view",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "state",
        "",
        "getItemOffsets",
        "(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V",
        "Landroid/graphics/Canvas;",
        "c",
        "onDraw",
        "(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V",
        "Landroid/graphics/Paint;",
        "a",
        "Lid8;",
        "d",
        "()Landroid/graphics/Paint;",
        "paint",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lbz1;

    .line 5
    .line 6
    invoke-direct {v0}, Lbz1;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/core/card/CardItemDecoration;->a:Lid8;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic c()Landroid/graphics/Paint;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/card/CardItemDecoration;->e()Landroid/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final e()Landroid/graphics/Paint;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljmf;->g()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget v2, Lteam/opay/pay/R$color;->osdk_color_white:I

    .line 15
    .line 16
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public final d()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardItemDecoration;->a:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/Paint;

    .line 8
    .line 9
    return-object v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "outRect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parent"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "state"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 16
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "c"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "parent"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "state"

    .line 16
    .line 17
    move-object/from16 v3, p3

    .line 18
    .line 19
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-super/range {p0 .. p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, -0x1

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, -0x1

    .line 40
    const/4 v8, -0x1

    .line 41
    :goto_0
    const/4 v9, 0x3

    .line 42
    if-ge v6, v3, :cond_4

    .line 43
    .line 44
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    if-ne v7, v5, :cond_1

    .line 49
    .line 50
    if-ne v10, v9, :cond_1

    .line 51
    .line 52
    move v7, v6

    .line 53
    :cond_1
    if-ne v8, v5, :cond_3

    .line 54
    .line 55
    if-eq v7, v5, :cond_3

    .line 56
    .line 57
    if-ne v10, v9, :cond_3

    .line 58
    .line 59
    add-int/lit8 v10, v3, -0x1

    .line 60
    .line 61
    if-eq v6, v10, :cond_2

    .line 62
    .line 63
    add-int/lit8 v10, v6, 0x1

    .line 64
    .line 65
    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    if-eq v10, v9, :cond_3

    .line 70
    .line 71
    :cond_2
    move v8, v6

    .line 72
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    if-ne v7, v5, :cond_5

    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    if-gt v7, v8, :cond_c

    .line 79
    .line 80
    move v2, v7

    .line 81
    :goto_1
    const/16 v3, 0x8

    .line 82
    .line 83
    new-array v3, v3, [F

    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    aput v5, v3, v4

    .line 87
    .line 88
    const/4 v6, 0x1

    .line 89
    aput v5, v3, v6

    .line 90
    .line 91
    const/4 v10, 0x2

    .line 92
    aput v5, v3, v10

    .line 93
    .line 94
    aput v5, v3, v9

    .line 95
    .line 96
    const/4 v11, 0x4

    .line 97
    aput v5, v3, v11

    .line 98
    .line 99
    const/4 v12, 0x5

    .line 100
    aput v5, v3, v12

    .line 101
    .line 102
    const/4 v13, 0x6

    .line 103
    aput v5, v3, v13

    .line 104
    .line 105
    const/4 v14, 0x7

    .line 106
    aput v5, v3, v14

    .line 107
    .line 108
    const/16 v5, 0xc

    .line 109
    .line 110
    if-ne v2, v7, :cond_6

    .line 111
    .line 112
    invoke-static {v5}, Ljmf;->d(I)I

    .line 113
    .line 114
    .line 115
    move-result v15

    .line 116
    int-to-float v15, v15

    .line 117
    aput v15, v3, v4

    .line 118
    .line 119
    invoke-static {v5}, Ljmf;->d(I)I

    .line 120
    .line 121
    .line 122
    move-result v15

    .line 123
    int-to-float v15, v15

    .line 124
    aput v15, v3, v6

    .line 125
    .line 126
    :cond_6
    add-int/lit8 v6, v7, 0x2

    .line 127
    .line 128
    if-ne v2, v6, :cond_7

    .line 129
    .line 130
    invoke-static {v5}, Ljmf;->d(I)I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    int-to-float v6, v6

    .line 135
    aput v6, v3, v10

    .line 136
    .line 137
    invoke-static {v5}, Ljmf;->d(I)I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    int-to-float v6, v6

    .line 142
    aput v6, v3, v9

    .line 143
    .line 144
    :cond_7
    if-ne v2, v8, :cond_8

    .line 145
    .line 146
    invoke-static {v5}, Ljmf;->d(I)I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    int-to-float v6, v6

    .line 151
    aput v6, v3, v11

    .line 152
    .line 153
    invoke-static {v5}, Ljmf;->d(I)I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    int-to-float v6, v6

    .line 158
    aput v6, v3, v12

    .line 159
    .line 160
    :cond_8
    add-int/lit8 v6, v8, -0x2

    .line 161
    .line 162
    if-ne v2, v6, :cond_9

    .line 163
    .line 164
    invoke-static {v5}, Ljmf;->d(I)I

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    int-to-float v10, v10

    .line 169
    aput v10, v3, v13

    .line 170
    .line 171
    invoke-static {v5}, Ljmf;->d(I)I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    int-to-float v5, v5

    .line 176
    aput v5, v3, v14

    .line 177
    .line 178
    :cond_9
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    if-nez v5, :cond_a

    .line 183
    .line 184
    return-void

    .line 185
    :cond_a
    if-lt v2, v6, :cond_b

    .line 186
    .line 187
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    int-to-float v6, v6

    .line 192
    const/16 v10, 0x10

    .line 193
    .line 194
    invoke-static {v10}, Ljmf;->d(I)I

    .line 195
    .line 196
    .line 197
    move-result v10

    .line 198
    int-to-float v10, v10

    .line 199
    add-float/2addr v6, v10

    .line 200
    goto :goto_2

    .line 201
    :cond_b
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    int-to-float v6, v6

    .line 206
    :goto_2
    new-instance v10, Landroid/graphics/RectF;

    .line 207
    .line 208
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    int-to-float v11, v11

    .line 213
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 214
    .line 215
    .line 216
    move-result v12

    .line 217
    int-to-float v12, v12

    .line 218
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    int-to-float v5, v5

    .line 223
    invoke-direct {v10, v11, v12, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 224
    .line 225
    .line 226
    new-instance v5, Landroid/graphics/Path;

    .line 227
    .line 228
    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 229
    .line 230
    .line 231
    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 232
    .line 233
    invoke-virtual {v5, v10, v3, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/card/CardItemDecoration;->d()Landroid/graphics/Paint;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v0, v5, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 241
    .line 242
    .line 243
    if-eq v2, v8, :cond_c

    .line 244
    .line 245
    add-int/lit8 v2, v2, 0x1

    .line 246
    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :cond_c
    return-void
.end method
