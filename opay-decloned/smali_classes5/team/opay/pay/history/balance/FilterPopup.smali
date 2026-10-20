.class public final Lteam/opay/pay/history/balance/FilterPopup;
.super Ljava/lang/Object;
.source "FilterWindow.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/history/balance/FilterPopup$Companion;,
        Lteam/opay/pay/history/balance/FilterPopup$FilterAdapter;,
        Lteam/opay/pay/history/balance/FilterPopup$FilterViewHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 +2\u00020\u0001:\u0003,-.B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u001d\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001d\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010&\u001a\u00020#8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0016\u0010*\u001a\u00020\'8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008(\u0010)\u00a8\u0006/"
    }
    d2 = {
        "Lteam/opay/pay/history/balance/FilterPopup;",
        "",
        "Landroid/app/Activity;",
        "activity",
        "",
        "Lteam/opay/pay/history/balance/CategoryItem;",
        "categoryList",
        "Landroidx/lifecycle/MutableLiveData;",
        "observableSelection",
        "<init>",
        "(Landroid/app/Activity;Ljava/util/List;Landroidx/lifecycle/MutableLiveData;)V",
        "a",
        "Landroid/app/Activity;",
        "getActivity",
        "()Landroid/app/Activity;",
        "b",
        "Ljava/util/List;",
        "getCategoryList",
        "()Ljava/util/List;",
        "c",
        "Landroidx/lifecycle/MutableLiveData;",
        "getObservableSelection",
        "()Landroidx/lifecycle/MutableLiveData;",
        "Landroid/widget/PopupWindow;",
        "d",
        "Landroid/widget/PopupWindow;",
        "getPopupWindow",
        "()Landroid/widget/PopupWindow;",
        "setPopupWindow",
        "(Landroid/widget/PopupWindow;)V",
        "popupWindow",
        "Lteam/opay/pay/history/balance/FilterPopup$FilterAdapter;",
        "e",
        "Lteam/opay/pay/history/balance/FilterPopup$FilterAdapter;",
        "filterAdapter",
        "",
        "f",
        "F",
        "DIM_ALPHA",
        "Lu4g;",
        "g",
        "Lu4g;",
        "binding",
        "h",
        "FilterViewHolder",
        "FilterAdapter",
        "Companion",
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


# static fields
.field public static final h:Lteam/opay/pay/history/balance/FilterPopup$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static i:I


# instance fields
.field public final a:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/history/balance/CategoryItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/history/balance/CategoryItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Landroid/widget/PopupWindow;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lteam/opay/pay/history/balance/FilterPopup$FilterAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:F

.field public g:Lu4g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/history/balance/FilterPopup$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/history/balance/FilterPopup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/history/balance/FilterPopup;->h:Lteam/opay/pay/history/balance/FilterPopup$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Landroidx/lifecycle/MutableLiveData;)V
    .locals 20
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lteam/opay/pay/history/balance/CategoryItem;",
            ">;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/history/balance/CategoryItem;",
            ">;)V"
        }
    .end annotation

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
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "activity"

    .line 10
    .line 11
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v4, "categoryList"

    .line 15
    .line 16
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v4, "observableSelection"

    .line 20
    .line 21
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Lteam/opay/pay/history/balance/FilterPopup;->a:Landroid/app/Activity;

    .line 28
    .line 29
    iput-object v2, v0, Lteam/opay/pay/history/balance/FilterPopup;->b:Ljava/util/List;

    .line 30
    .line 31
    iput-object v3, v0, Lteam/opay/pay/history/balance/FilterPopup;->c:Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    const v4, 0x3f333333    # 0.7f

    .line 34
    .line 35
    .line 36
    iput v4, v0, Lteam/opay/pay/history/balance/FilterPopup;->f:F

    .line 37
    .line 38
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    sget v5, Lteam/opay/pay/R$layout;->wallet_filters_popup:I

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {v4}, Lu4g;->bind(Landroid/view/View;)Lu4g;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    iput-object v5, v0, Lteam/opay/pay/history/balance/FilterPopup;->g:Lu4g;

    .line 54
    .line 55
    new-instance v5, Landroid/widget/PopupWindow;

    .line 56
    .line 57
    const/4 v7, -0x1

    .line 58
    const/4 v8, -0x2

    .line 59
    invoke-direct {v5, v4, v7, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 60
    .line 61
    .line 62
    new-instance v7, Landroid/util/DisplayMetrics;

    .line 63
    .line 64
    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {v8, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 76
    .line 77
    .line 78
    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 79
    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    sget v9, Lteam/opay/pay/R$dimen;->content_padding_double:I

    .line 85
    .line 86
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    sub-int/2addr v7, v8

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    sget v9, Lteam/opay/pay/R$dimen;->wallet_filter_horizontal_padding_half:I

    .line 96
    .line 97
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    mul-int/lit8 v8, v8, 0x2

    .line 102
    .line 103
    add-int/2addr v7, v8

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    sget v10, Lteam/opay/pay/R$dimen;->wallet_filter_item_max_width:I

    .line 109
    .line 110
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    mul-int/lit8 v10, v10, 0x2

    .line 123
    .line 124
    add-int/2addr v8, v10

    .line 125
    div-int v13, v7, v8

    .line 126
    .line 127
    iget-object v7, v0, Lteam/opay/pay/history/balance/FilterPopup;->g:Lu4g;

    .line 128
    .line 129
    const-string v8, "binding"

    .line 130
    .line 131
    if-nez v7, :cond_0

    .line 132
    .line 133
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    move-object v7, v6

    .line 137
    :cond_0
    iget-object v7, v7, Lu4g;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 138
    .line 139
    new-instance v10, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 140
    .line 141
    invoke-direct {v10, v1, v13}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 145
    .line 146
    .line 147
    iget-object v7, v0, Lteam/opay/pay/history/balance/FilterPopup;->g:Lu4g;

    .line 148
    .line 149
    if-nez v7, :cond_1

    .line 150
    .line 151
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    move-object v7, v6

    .line 155
    :cond_1
    iget-object v7, v7, Lu4g;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 156
    .line 157
    new-instance v15, Lteam/opay/pay/android/SpaceItemDecoration;

    .line 158
    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 164
    .line 165
    .line 166
    move-result v11

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    sget v10, Lteam/opay/pay/R$dimen;->content_padding_small:I

    .line 172
    .line 173
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 174
    .line 175
    .line 176
    move-result v12

    .line 177
    const/16 v18, 0x78

    .line 178
    .line 179
    const/16 v19, 0x0

    .line 180
    .line 181
    const/4 v14, 0x0

    .line 182
    const/4 v9, 0x0

    .line 183
    const/16 v16, 0x0

    .line 184
    .line 185
    const/16 v17, 0x0

    .line 186
    .line 187
    move-object v10, v15

    .line 188
    move-object v6, v15

    .line 189
    move v15, v9

    .line 190
    invoke-direct/range {v10 .. v19}, Lteam/opay/pay/android/SpaceItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    sget v9, Lteam/opay/pay/R$dimen;->content_padding:I

    .line 205
    .line 206
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    add-int/2addr v6, v7

    .line 211
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 220
    .line 221
    .line 222
    move-result v10

    .line 223
    add-int/2addr v7, v10

    .line 224
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    .line 225
    .line 226
    .line 227
    move-result v10

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 229
    .line 230
    .line 231
    move-result-object v11

    .line 232
    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 233
    .line 234
    .line 235
    move-result v11

    .line 236
    add-int/2addr v10, v11

    .line 237
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 238
    .line 239
    .line 240
    move-result v11

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    add-int/2addr v11, v1

    .line 250
    invoke-virtual {v4, v6, v7, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 251
    .line 252
    .line 253
    new-instance v1, Lteam/opay/pay/history/balance/FilterPopup$FilterAdapter;

    .line 254
    .line 255
    invoke-direct {v1, v2, v3}, Lteam/opay/pay/history/balance/FilterPopup$FilterAdapter;-><init>(Ljava/util/List;Landroidx/lifecycle/MutableLiveData;)V

    .line 256
    .line 257
    .line 258
    iput-object v1, v0, Lteam/opay/pay/history/balance/FilterPopup;->e:Lteam/opay/pay/history/balance/FilterPopup$FilterAdapter;

    .line 259
    .line 260
    iget-object v1, v0, Lteam/opay/pay/history/balance/FilterPopup;->g:Lu4g;

    .line 261
    .line 262
    if-nez v1, :cond_2

    .line 263
    .line 264
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    const/4 v6, 0x0

    .line 268
    goto :goto_0

    .line 269
    :cond_2
    move-object v6, v1

    .line 270
    :goto_0
    iget-object v1, v6, Lu4g;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 271
    .line 272
    iget-object v2, v0, Lteam/opay/pay/history/balance/FilterPopup;->e:Lteam/opay/pay/history/balance/FilterPopup$FilterAdapter;

    .line 273
    .line 274
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 275
    .line 276
    .line 277
    iput-object v5, v0, Lteam/opay/pay/history/balance/FilterPopup;->d:Landroid/widget/PopupWindow;

    .line 278
    .line 279
    const/4 v1, 0x0

    .line 280
    sput v1, Lteam/opay/pay/history/balance/FilterPopup;->i:I

    .line 281
    .line 282
    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/history/balance/FilterPopup;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic b(I)V
    .locals 0

    .line 1
    sput p0, Lteam/opay/pay/history/balance/FilterPopup;->i:I

    .line 2
    .line 3
    return-void
.end method
