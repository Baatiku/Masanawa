.class public Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "PinnedHeaderItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;
    }
.end annotation


# instance fields
.field public final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/transaction/RenderNodeItem;",
            ">;"
        }
    .end annotation
.end field

.field public final a:Lwka;

.field public final b:Z

.field public final c:Z

.field public final d:I

.field public final e:[I

.field public f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public g:Landroid/view/View;

.field public h:I

.field public i:I

.field public j:Landroid/graphics/Rect;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Lteam/opay/pay/transaction/OnItemTouchListener;

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public final x:I

.field public y:Z

.field public z:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->h:I

    .line 4
    invoke-static {p1}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;->d(Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->b:Z

    .line 5
    invoke-static {p1}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;->e(Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;)Lwka;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->a:Lwka;

    .line 6
    invoke-static {p1}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;->c(Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;)I

    move-result v0

    iput v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->d:I

    .line 7
    invoke-static {p1}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;->a(Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->e:[I

    .line 8
    invoke-static {p1}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;->b(Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->c:Z

    .line 9
    invoke-static {p1}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;->g(Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;)I

    move-result v0

    iput v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->x:I

    .line 10
    invoke-static {p1}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;->f(Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->A:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;Lctb;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;-><init>(Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$Builder;)V

    return-void
.end method

.method public static bridge synthetic c(Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final d(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->z:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->z:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 12
    .line 13
    if-eq v0, p1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g:Landroid/view/View;

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->h:I

    .line 20
    .line 21
    iput-object p1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 22
    .line 23
    new-instance v0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$a;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration$a;-><init>(Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final e(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->h(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->v:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->i(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ltz v0, :cond_b

    .line 21
    .line 22
    iget v1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->h:I

    .line 23
    .line 24
    if-eq v1, v0, :cond_b

    .line 25
    .line 26
    iput v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->h:I

    .line 27
    .line 28
    iget-object v1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 35
    .line 36
    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 41
    .line 42
    iget v2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->h:I

    .line 43
    .line 44
    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 48
    .line 49
    iput-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g:Landroid/view/View;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g:Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const/4 v2, -0x2

    .line 62
    const/4 v3, -0x1

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 66
    .line 67
    invoke-direct {v0, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 68
    .line 69
    .line 70
    iget-object v4, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 76
    .line 77
    const/high16 v5, 0x40000000    # 2.0f

    .line 78
    .line 79
    if-ltz v4, :cond_2

    .line 80
    .line 81
    :goto_0
    const/high16 v6, 0x40000000    # 2.0f

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    if-ne v4, v3, :cond_3

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    goto :goto_0

    .line 91
    :cond_3
    const/high16 v6, -0x80000000

    .line 92
    .line 93
    if-ne v4, v2, :cond_4

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    goto :goto_1

    .line 100
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    iput v2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->k:I

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    iput v7, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->l:I

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    instance-of v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 125
    .line 126
    if-eqz v8, :cond_5

    .line 127
    .line 128
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 129
    .line 130
    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 131
    .line 132
    iput v8, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->m:I

    .line 133
    .line 134
    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 135
    .line 136
    iput v8, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->n:I

    .line 137
    .line 138
    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 139
    .line 140
    iput v8, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->o:I

    .line 141
    .line 142
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 143
    .line 144
    iput v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->p:I

    .line 145
    .line 146
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    iget v8, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->l:I

    .line 151
    .line 152
    sub-int/2addr v0, v8

    .line 153
    sub-int/2addr v0, v7

    .line 154
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    iget v7, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->k:I

    .line 163
    .line 164
    sub-int/2addr v4, v7

    .line 165
    sub-int/2addr v4, v2

    .line 166
    iget v2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->m:I

    .line 167
    .line 168
    sub-int/2addr v4, v2

    .line 169
    iget v2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->o:I

    .line 170
    .line 171
    sub-int/2addr v4, v2

    .line 172
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    iget-object v4, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g:Landroid/view/View;

    .line 181
    .line 182
    invoke-virtual {v4, v2, v0}, Landroid/view/View;->measure(II)V

    .line 183
    .line 184
    .line 185
    iget v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->k:I

    .line 186
    .line 187
    iget v2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->m:I

    .line 188
    .line 189
    add-int/2addr v0, v2

    .line 190
    iput v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->r:I

    .line 191
    .line 192
    iget-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g:Landroid/view/View;

    .line 193
    .line 194
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    iget v2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->r:I

    .line 199
    .line 200
    add-int/2addr v0, v2

    .line 201
    iput v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->t:I

    .line 202
    .line 203
    iget v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->l:I

    .line 204
    .line 205
    iget v2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->n:I

    .line 206
    .line 207
    add-int/2addr v0, v2

    .line 208
    iput v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->s:I

    .line 209
    .line 210
    iget-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g:Landroid/view/View;

    .line 211
    .line 212
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    iget v2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->s:I

    .line 217
    .line 218
    add-int/2addr v0, v2

    .line 219
    iput v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->u:I

    .line 220
    .line 221
    iget-object v4, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g:Landroid/view/View;

    .line 222
    .line 223
    iget v5, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->r:I

    .line 224
    .line 225
    iget v6, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->t:I

    .line 226
    .line 227
    invoke-virtual {v4, v5, v2, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->A:Ljava/util/List;

    .line 231
    .line 232
    if-eqz v0, :cond_7

    .line 233
    .line 234
    const/4 v0, 0x0

    .line 235
    :goto_2
    iget-object v2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->A:Ljava/util/List;

    .line 236
    .line 237
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-ge v0, v2, :cond_7

    .line 242
    .line 243
    iget-object v2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->A:Ljava/util/List;

    .line 244
    .line 245
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    check-cast v2, Lteam/opay/pay/transaction/RenderNodeItem;

    .line 250
    .line 251
    invoke-virtual {v2}, Lteam/opay/pay/transaction/RenderNodeItem;->d()I

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    iget-object v5, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g:Landroid/view/View;

    .line 256
    .line 257
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    if-eqz v4, :cond_6

    .line 262
    .line 263
    invoke-virtual {v2}, Lteam/opay/pay/transaction/RenderNodeItem;->c()Landroid/graphics/Rect;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-virtual {v4, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 268
    .line 269
    .line 270
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_7
    iget-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->q:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 274
    .line 275
    if-nez v0, :cond_8

    .line 276
    .line 277
    iget-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->a:Lwka;

    .line 278
    .line 279
    if-eqz v0, :cond_8

    .line 280
    .line 281
    new-instance v0, Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 282
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-direct {v0, v2}, Lteam/opay/pay/transaction/OnItemTouchListener;-><init>(Landroid/content/Context;)V

    .line 288
    .line 289
    .line 290
    iput-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->q:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 291
    .line 292
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    const-string v2, "mOnItemTouchListeners"

    .line 297
    .line 298
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    const/4 v2, 0x1

    .line 303
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    check-cast v0, Ljava/util/ArrayList;

    .line 311
    .line 312
    iget-object v2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->q:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 313
    .line 314
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .line 316
    .line 317
    goto :goto_6

    .line 318
    :catch_0
    move-exception v0

    .line 319
    goto :goto_3

    .line 320
    :catch_1
    move-exception v0

    .line 321
    goto :goto_4

    .line 322
    :catch_2
    move-exception v0

    .line 323
    goto :goto_5

    .line 324
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 325
    .line 326
    .line 327
    iget-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->q:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 328
    .line 329
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 330
    .line 331
    .line 332
    goto :goto_6

    .line 333
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 334
    .line 335
    .line 336
    iget-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->q:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 337
    .line 338
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 339
    .line 340
    .line 341
    goto :goto_6

    .line 342
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 343
    .line 344
    .line 345
    iget-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->q:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 346
    .line 347
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 348
    .line 349
    .line 350
    :goto_6
    iget-object p1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->q:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 351
    .line 352
    iget-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->a:Lwka;

    .line 353
    .line 354
    invoke-virtual {p1, v0}, Lteam/opay/pay/transaction/OnItemTouchListener;->n(Lwka;)V

    .line 355
    .line 356
    .line 357
    iget-object p1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->q:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 358
    .line 359
    iget-boolean v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->c:Z

    .line 360
    .line 361
    invoke-virtual {p1, v0}, Lteam/opay/pay/transaction/OnItemTouchListener;->j(Z)V

    .line 362
    .line 363
    .line 364
    iget-object p1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->q:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 365
    .line 366
    iget-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g:Landroid/view/View;

    .line 367
    .line 368
    invoke-virtual {p1, v3, v0}, Lteam/opay/pay/transaction/OnItemTouchListener;->l(ILandroid/view/View;)V

    .line 369
    .line 370
    .line 371
    :cond_8
    iget-object p1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->a:Lwka;

    .line 372
    .line 373
    if-eqz p1, :cond_b

    .line 374
    .line 375
    iget-object p1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->q:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 376
    .line 377
    iget-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g:Landroid/view/View;

    .line 378
    .line 379
    invoke-virtual {p1, v3, v0}, Lteam/opay/pay/transaction/OnItemTouchListener;->l(ILandroid/view/View;)V

    .line 380
    .line 381
    .line 382
    iget-object p1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->a:Lwka;

    .line 383
    .line 384
    if-eqz p1, :cond_a

    .line 385
    .line 386
    iget-object p1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->e:[I

    .line 387
    .line 388
    if-eqz p1, :cond_a

    .line 389
    .line 390
    array-length v0, p1

    .line 391
    if-lez v0, :cond_a

    .line 392
    .line 393
    array-length v0, p1

    .line 394
    :goto_7
    if-ge v1, v0, :cond_a

    .line 395
    .line 396
    aget v2, p1, v1

    .line 397
    .line 398
    iget-object v3, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g:Landroid/view/View;

    .line 399
    .line 400
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    if-eqz v3, :cond_9

    .line 405
    .line 406
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    if-nez v4, :cond_9

    .line 411
    .line 412
    iget-object v4, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->q:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 413
    .line 414
    invoke-virtual {v4, v2, v3}, Lteam/opay/pay/transaction/OnItemTouchListener;->l(ILandroid/view/View;)V

    .line 415
    .line 416
    .line 417
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 418
    .line 419
    goto :goto_7

    .line 420
    :cond_a
    iget-object p1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->q:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 421
    .line 422
    iget v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->h:I

    .line 423
    .line 424
    iget v1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->w:I

    .line 425
    .line 426
    sub-int/2addr v0, v1

    .line 427
    invoke-virtual {p1, v0}, Lteam/opay/pay/transaction/OnItemTouchListener;->m(I)V

    .line 428
    .line 429
    .line 430
    :cond_b
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;Lteam/opay/pay/transaction/RenderNodeItem;)V
    .locals 6

    .line 1
    const-string v0, " | "

    .line 2
    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v2, 0x1c

    .line 6
    .line 7
    if-le v1, v2, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {p2}, Lteam/opay/pay/transaction/RenderNodeItem;->d()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lteam/opay/pay/transaction/RenderNodeItem;->a()Landroid/graphics/RenderNode;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lysb;->a()V

    .line 32
    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v3, ""

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2}, Lkga;->a(Ljava/lang/String;)Landroid/graphics/RenderNode;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p2, v2}, Lteam/opay/pay/transaction/RenderNodeItem;->e(Landroid/graphics/RenderNode;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-static {v2}, Lzsb;->a(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    :try_start_0
    invoke-virtual {p2}, Lteam/opay/pay/transaction/RenderNodeItem;->c()Landroid/graphics/Rect;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {p2}, Lteam/opay/pay/transaction/RenderNodeItem;->b()Landroid/graphics/Paint;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 75
    .line 76
    .line 77
    sget-object v3, Lteam/opay/olog/OLogger;->a:Lteam/opay/olog/OLogger;

    .line 78
    .line 79
    const-string v4, "PinnedHead"

    .line 80
    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Lteam/opay/pay/transaction/RenderNodeItem;->c()Landroid/graphics/Rect;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 101
    .line 102
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Lteam/opay/pay/transaction/RenderNodeItem;->b()Landroid/graphics/Paint;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const/4 v1, 0x0

    .line 124
    invoke-virtual {v3, v4, v0, v1}, Lteam/opay/olog/OLogger;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 126
    .line 127
    invoke-static {v2}, Ljga;->a(Landroid/graphics/RenderNode;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Lteam/opay/pay/transaction/RenderNodeItem;->c()Landroid/graphics/Rect;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-static {v2, p2}, Latb;->a(Landroid/graphics/RenderNode;Landroid/graphics/Rect;)Z

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-eqz p2, :cond_1

    .line 142
    .line 143
    invoke-static {v2}, Lbtb;->a(Landroid/graphics/RenderNode;)Z

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-eqz p2, :cond_1

    .line 148
    .line 149
    invoke-static {p1, v2}, Llga;->a(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :catchall_0
    move-exception p1

    .line 154
    invoke-static {v2}, Ljga;->a(Landroid/graphics/RenderNode;)V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :cond_1
    :goto_0
    return-void
.end method

.method public final g(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->A:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget-object v1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->A:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ge v0, v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->A:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lteam/opay/pay/transaction/RenderNodeItem;

    .line 33
    .line 34
    invoke-virtual {p0, p1, v1}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->f(Landroid/graphics/Canvas;Lteam/opay/pay/transaction/RenderNodeItem;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v1}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->f(Landroid/graphics/Canvas;Lteam/opay/pay/transaction/RenderNodeItem;)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    new-array v2, v0, [I

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q([I)[I

    .line 37
    .line 38
    .line 39
    const p1, 0x7fffffff

    .line 40
    .line 41
    .line 42
    :goto_0
    if-ge v1, v0, :cond_3

    .line 43
    .line 44
    aget v3, v2, v1

    .line 45
    .line 46
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 p1, 0x0

    .line 54
    :cond_3
    :goto_1
    return p1
.end method

.method public final i(I)I
    .locals 1

    .line 1
    :goto_0
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->k(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p1, -0x1

    .line 20
    return p1
.end method

.method public final j(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, -0x1

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :cond_0
    iget-object p2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {p0, p1}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->k(I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public final k(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->x:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method public final l()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->h:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g:Landroid/view/View;

    .line 6
    .line 7
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p3, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->y:Z

    .line 5
    .line 6
    if-nez p3, :cond_1

    .line 7
    .line 8
    iget-object p3, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g:Landroid/view/View;

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    iget p3, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->v:I

    .line 13
    .line 14
    iget v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->h:I

    .line 15
    .line 16
    if-lt p3, v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    iput-object p3, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->j:Landroid/graphics/Rect;

    .line 23
    .line 24
    iget-object p3, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    iget-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/2addr p3, v0

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    div-int/lit8 v0, v0, 0x2

    .line 42
    .line 43
    int-to-float v0, v0

    .line 44
    int-to-float p3, p3

    .line 45
    invoke-virtual {p2, v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget v1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->v:I

    .line 54
    .line 55
    if-le v0, v1, :cond_0

    .line 56
    .line 57
    invoke-virtual {p0, p2, p3}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->j(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_0

    .line 62
    .line 63
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    iget p3, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->l:I

    .line 68
    .line 69
    iget-object v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g:Landroid/view/View;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    add-int/2addr p3, v0

    .line 76
    iget v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->n:I

    .line 77
    .line 78
    add-int/2addr p3, v0

    .line 79
    sub-int/2addr p2, p3

    .line 80
    iput p2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->i:I

    .line 81
    .line 82
    iget-object p2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->j:Landroid/graphics/Rect;

    .line 83
    .line 84
    iget p3, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->l:I

    .line 85
    .line 86
    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    const/4 p2, 0x0

    .line 90
    iput p2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->i:I

    .line 91
    .line 92
    iget-object p2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->j:Landroid/graphics/Rect;

    .line 93
    .line 94
    iget p3, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->l:I

    .line 95
    .line 96
    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 97
    .line 98
    :goto_0
    iget-object p2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->j:Landroid/graphics/Rect;

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 101
    .line 102
    .line 103
    :cond_1
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    iget-boolean p2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->y:Z

    .line 2
    .line 3
    if-nez p2, :cond_1

    .line 4
    .line 5
    iget-object p2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g:Landroid/view/View;

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    iget p2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->v:I

    .line 10
    .line 11
    iget p3, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->h:I

    .line 12
    .line 13
    if-lt p2, p3, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->q:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    iget p3, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->i:I

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Lteam/opay/pay/transaction/OnItemTouchListener;->k(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->j:Landroid/graphics/Rect;

    .line 28
    .line 29
    iget p3, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->l:I

    .line 30
    .line 31
    iget v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->n:I

    .line 32
    .line 33
    add-int/2addr p3, v0

    .line 34
    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 35
    .line 36
    sget-object p3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 37
    .line 38
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 39
    .line 40
    .line 41
    iget p2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->k:I

    .line 42
    .line 43
    iget p3, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->m:I

    .line 44
    .line 45
    add-int/2addr p2, p3

    .line 46
    int-to-float p2, p2

    .line 47
    iget p3, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->i:I

    .line 48
    .line 49
    iget v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->l:I

    .line 50
    .line 51
    add-int/2addr p3, v0

    .line 52
    iget v0, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->n:I

    .line 53
    .line 54
    add-int/2addr p3, v0

    .line 55
    int-to-float p3, p3

    .line 56
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g(Landroid/graphics/Canvas;)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->g:Landroid/view/View;

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/transaction/PinnedHeaderItemDecoration;->q:Lteam/opay/pay/transaction/OnItemTouchListener;

    .line 72
    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    const/16 p2, -0x3e8

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lteam/opay/pay/transaction/OnItemTouchListener;->k(I)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method
