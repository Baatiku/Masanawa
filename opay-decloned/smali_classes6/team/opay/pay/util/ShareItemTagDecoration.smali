.class public final Lteam/opay/pay/util/ShareItemTagDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ShareItemTagDecoration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u000f2\u000c\u0010\u000e\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0010R\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/pay/util/ShareItemTagDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "<init>",
        "()V",
        "Landroid/graphics/Canvas;",
        "c",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "state",
        "",
        "onDrawOver",
        "(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "adapter",
        "",
        "(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Ljava/util/List;",
        "Landroid/graphics/Paint;",
        "a",
        "Landroid/graphics/Paint;",
        "mPaint",
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
.field public a:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/pay/util/ShareItemTagDecoration;->a:Landroid/graphics/Paint;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final c(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "getData(...)"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v0, "adapter is not BaseQuickAdapter"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 20
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
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const-string v4, "c"

    .line 9
    .line 10
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v4, "parent"

    .line 14
    .line 15
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v4, "state"

    .line 19
    .line 20
    move-object/from16 v5, p3

    .line 21
    .line 22
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-super/range {p0 .. p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v0, v4}, Lteam/opay/pay/util/ShareItemTagDecoration;->c(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-nez v5, :cond_6

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    instance-of v6, v6, Lteam/opay/pay/util/ItemTagInterface;

    .line 48
    .line 49
    if-nez v6, :cond_0

    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    const/4 v7, 0x0

    .line 58
    :goto_0
    if-ge v7, v6, :cond_6

    .line 59
    .line 60
    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    instance-of v9, v8, Lteam/opay/pay/util/ItemTagInterface;

    .line 65
    .line 66
    const/4 v10, 0x0

    .line 67
    if-eqz v9, :cond_1

    .line 68
    .line 69
    check-cast v8, Lteam/opay/pay/util/ItemTagInterface;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move-object v8, v10

    .line 73
    :goto_1
    if-eqz v8, :cond_2

    .line 74
    .line 75
    invoke-interface {v8}, Lteam/opay/pay/util/ItemTagInterface;->getTg()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    :cond_2
    if-eqz v10, :cond_5

    .line 80
    .line 81
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    if-nez v8, :cond_3

    .line 86
    .line 87
    goto/16 :goto_2

    .line 88
    .line 89
    :cond_3
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    iget-object v9, v0, Lteam/opay/pay/util/ShareItemTagDecoration;->a:Landroid/graphics/Paint;

    .line 94
    .line 95
    const/16 v11, 0xa

    .line 96
    .line 97
    invoke-static {v11}, Lkmf;->P(I)I

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    int-to-float v12, v12

    .line 102
    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 103
    .line 104
    .line 105
    iget-object v9, v0, Lteam/opay/pay/util/ShareItemTagDecoration;->a:Landroid/graphics/Paint;

    .line 106
    .line 107
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    const/16 v12, 0xc

    .line 112
    .line 113
    invoke-static {v12}, Ljmf;->d(I)I

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    int-to-float v12, v12

    .line 118
    add-float/2addr v9, v12

    .line 119
    invoke-static {v11}, Lkmf;->P(I)I

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    const/4 v13, 0x5

    .line 124
    invoke-static {v13}, Ljmf;->d(I)I

    .line 125
    .line 126
    .line 127
    move-result v13

    .line 128
    add-int v16, v12, v13

    .line 129
    .line 130
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 134
    .line 135
    .line 136
    move-result v12

    .line 137
    int-to-float v12, v12

    .line 138
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 139
    .line 140
    .line 141
    move-result v13

    .line 142
    int-to-float v13, v13

    .line 143
    const/high16 v14, 0x40000000    # 2.0f

    .line 144
    .line 145
    div-float/2addr v13, v14

    .line 146
    add-float/2addr v12, v13

    .line 147
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    int-to-float v8, v8

    .line 152
    const/16 v13, 0x8

    .line 153
    .line 154
    invoke-static {v13}, Ljmf;->d(I)I

    .line 155
    .line 156
    .line 157
    move-result v13

    .line 158
    int-to-float v13, v13

    .line 159
    add-float/2addr v8, v13

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v13

    .line 164
    sget v14, Lteam/opay/pay/R$drawable;->gradient_225_ff4369_ff8784:I

    .line 165
    .line 166
    invoke-static {v13, v14}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 167
    .line 168
    .line 169
    move-result-object v14

    .line 170
    if-eqz v14, :cond_4

    .line 171
    .line 172
    float-to-int v15, v9

    .line 173
    const/16 v18, 0x4

    .line 174
    .line 175
    const/16 v19, 0x0

    .line 176
    .line 177
    const/16 v17, 0x0

    .line 178
    .line 179
    invoke-static/range {v14 .. v19}, Lmj3;->b(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    if-eqz v9, :cond_4

    .line 184
    .line 185
    iget-object v13, v0, Lteam/opay/pay/util/ShareItemTagDecoration;->a:Landroid/graphics/Paint;

    .line 186
    .line 187
    invoke-virtual {v1, v9, v12, v8, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 188
    .line 189
    .line 190
    :cond_4
    const/4 v9, 0x6

    .line 191
    invoke-static {v9}, Ljmf;->d(I)I

    .line 192
    .line 193
    .line 194
    move-result v9

    .line 195
    int-to-float v9, v9

    .line 196
    add-float/2addr v12, v9

    .line 197
    invoke-static {v3}, Ljmf;->d(I)I

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    int-to-float v9, v9

    .line 202
    add-float/2addr v8, v9

    .line 203
    invoke-static {v11}, Lkmf;->P(I)I

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    int-to-float v9, v9

    .line 208
    add-float/2addr v8, v9

    .line 209
    iget-object v9, v0, Lteam/opay/pay/util/ShareItemTagDecoration;->a:Landroid/graphics/Paint;

    .line 210
    .line 211
    const/4 v11, -0x1

    .line 212
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    .line 214
    .line 215
    const-string v11, "font/roboto_600.xml"

    .line 216
    .line 217
    invoke-static {v11, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 222
    .line 223
    .line 224
    sget-object v11, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 225
    .line 226
    invoke-virtual {v1, v10, v12, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 227
    .line 228
    .line 229
    :cond_5
    :goto_2
    add-int/2addr v7, v3

    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :cond_6
    :goto_3
    return-void
.end method
