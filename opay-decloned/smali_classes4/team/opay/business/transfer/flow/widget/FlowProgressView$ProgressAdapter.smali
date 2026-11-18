.class public final Lteam/opay/business/transfer/flow/widget/FlowProgressView$ProgressAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FlowDetailView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/transfer/flow/widget/FlowProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProgressAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/core/common/internal/BindingViewHolder<",
        "Lx86;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0004\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J*\u0010\u000b\u001a\r\u0012\t\u0012\u00070\u0003\u00a2\u0006\u0002\u0008\n0\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ%\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u000e\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R6\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/widget/FlowProgressView$ProgressAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/core/common/internal/BindingViewHolder;",
        "Lx86;",
        "<init>",
        "(Lteam/opay/business/transfer/flow/widget/FlowProgressView;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "l",
        "(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;",
        "holder",
        "position",
        "",
        "k",
        "(Lteam/opay/core/common/internal/BindingViewHolder;I)V",
        "getItemCount",
        "()I",
        "",
        "Lteam/opay/business/transfer/flow/api/ProgressInfo;",
        "value",
        "a",
        "Ljava/util/List;",
        "getDataList",
        "()Ljava/util/List;",
        "setDataList",
        "(Ljava/util/List;)V",
        "dataList",
        "business-transfer-flow_release"
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
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/business/transfer/flow/api/ProgressInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic b:Lteam/opay/business/transfer/flow/widget/FlowProgressView;


# direct methods
.method public constructor <init>(Lteam/opay/business/transfer/flow/widget/FlowProgressView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/widget/FlowProgressView$ProgressAdapter;->b:Lteam/opay/business/transfer/flow/widget/FlowProgressView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lteam/opay/business/transfer/flow/widget/FlowProgressView$ProgressAdapter;->a:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/FlowProgressView$ProgressAdapter;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public k(Lteam/opay/core/common/internal/BindingViewHolder;I)V
    .locals 8
    .param p1    # Lteam/opay/core/common/internal/BindingViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Lx86;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/FlowProgressView$ProgressAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lteam/opay/business/transfer/flow/api/ProgressInfo;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v1, p0, Lteam/opay/business/transfer/flow/widget/FlowProgressView$ProgressAdapter;->b:Lteam/opay/business/transfer/flow/widget/FlowProgressView;

    .line 22
    .line 23
    check-cast p1, Lx86;

    .line 24
    .line 25
    iget-object v2, p1, Lx86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/ProgressInfo;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    const-string v3, ""

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p1, Lx86;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    sget-object v3, Lxa6;->a:Lxa6;

    .line 41
    .line 42
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/ProgressInfo;->getTime()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-string v5, "MM-dd HH:mm:ss"

    .line 47
    .line 48
    invoke-virtual {v3, v4, v5}, Lxa6;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p1, Lx86;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 56
    .line 57
    const-string v3, "progressTime"

    .line 58
    .line 59
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/ProgressInfo;->getTime()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const/4 v4, 0x0

    .line 67
    const/4 v5, 0x1

    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    invoke-static {v3}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/4 v3, 0x0

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    :goto_0
    const/4 v3, 0x1

    .line 80
    :goto_1
    xor-int/2addr v3, v5

    .line 81
    invoke-static {v2, v3}, Lg0g;->j(Landroid/view/View;Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/ProgressInfo;->getStatus()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const-string v3, "SUCCESS"

    .line 89
    .line 90
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    sget v2, Lteam/opay/core/common/R$color;->mint:I

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    sget v2, Lteam/opay/core/common/R$color;->black_8:I

    .line 100
    .line 101
    :goto_2
    iget-object v6, p1, Lx86;->b:Landroid/view/View;

    .line 102
    .line 103
    invoke-virtual {p1}, Lx86;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-static {v7, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 116
    .line 117
    .line 118
    iget-object v6, p1, Lx86;->c:Landroid/view/View;

    .line 119
    .line 120
    invoke-virtual {p1}, Lx86;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-static {v7, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 133
    .line 134
    .line 135
    iget-object v2, p1, Lx86;->b:Landroid/view/View;

    .line 136
    .line 137
    const-string v6, "lineLeft"

    .line 138
    .line 139
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    if-eqz p2, :cond_5

    .line 143
    .line 144
    const/4 v6, 0x1

    .line 145
    goto :goto_3

    .line 146
    :cond_5
    const/4 v6, 0x0

    .line 147
    :goto_3
    invoke-static {v2, v6}, Lg0g;->j(Landroid/view/View;Z)V

    .line 148
    .line 149
    .line 150
    iget-object v2, p1, Lx86;->c:Landroid/view/View;

    .line 151
    .line 152
    const-string v6, "lineRight"

    .line 153
    .line 154
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v6, p0, Lteam/opay/business/transfer/flow/widget/FlowProgressView$ProgressAdapter;->a:Ljava/util/List;

    .line 158
    .line 159
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->m(Ljava/util/List;)I

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-eq p2, v6, :cond_6

    .line 164
    .line 165
    const/4 v4, 0x1

    .line 166
    :cond_6
    invoke-static {v2, v4}, Lg0g;->j(Landroid/view/View;Z)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/ProgressInfo;->getStatus()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    if-eqz p2, :cond_d

    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    const v2, -0x447f341d

    .line 180
    .line 181
    .line 182
    if-eq v0, v2, :cond_b

    .line 183
    .line 184
    const v2, 0x20cf1e

    .line 185
    .line 186
    .line 187
    if-eq v0, v2, :cond_9

    .line 188
    .line 189
    const v2, 0x21c1577

    .line 190
    .line 191
    .line 192
    if-eq v0, v2, :cond_7

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_7
    const-string v0, "PENDING"

    .line 196
    .line 197
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    if-nez p2, :cond_8

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_8
    iget-object p2, p1, Lx86;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 205
    .line 206
    sget v0, Lteam/opay/business/transfer/flow/R$drawable;->flow_progress_pending:I

    .line 207
    .line 208
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p1, Lx86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 212
    .line 213
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    sget v0, Lteam/opay/core/common/R$color;->black_85:I

    .line 218
    .line 219
    invoke-static {p2, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 220
    .line 221
    .line 222
    move-result p2

    .line 223
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_9
    const-string v0, "FAIL"

    .line 228
    .line 229
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    if-nez p2, :cond_a

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_a
    iget-object p2, p1, Lx86;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 237
    .line 238
    sget v0, Lteam/opay/business/transfer/flow/R$drawable;->flow_progress_failed:I

    .line 239
    .line 240
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 241
    .line 242
    .line 243
    iget-object p1, p1, Lx86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 244
    .line 245
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    sget v0, Lteam/opay/core/common/R$color;->black_85:I

    .line 250
    .line 251
    invoke-static {p2, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 252
    .line 253
    .line 254
    move-result p2

    .line 255
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    .line 257
    .line 258
    goto :goto_5

    .line 259
    :cond_b
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result p2

    .line 263
    if-nez p2, :cond_c

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_c
    iget-object p2, p1, Lx86;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 267
    .line 268
    sget v0, Lteam/opay/business/transfer/flow/R$drawable;->flow_progress_success:I

    .line 269
    .line 270
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 271
    .line 272
    .line 273
    iget-object p1, p1, Lx86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 274
    .line 275
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    sget v0, Lteam/opay/core/common/R$color;->black_85:I

    .line 280
    .line 281
    invoke-static {p2, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 282
    .line 283
    .line 284
    move-result p2

    .line 285
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 286
    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_d
    :goto_4
    iget-object p2, p1, Lx86;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 290
    .line 291
    sget v0, Lteam/opay/business/transfer/flow/R$drawable;->flow_progress_init:I

    .line 292
    .line 293
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 294
    .line 295
    .line 296
    iget-object p1, p1, Lx86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 297
    .line 298
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 299
    .line 300
    .line 301
    move-result-object p2

    .line 302
    sget v0, Lteam/opay/core/common/R$color;->black_45:I

    .line 303
    .line 304
    invoke-static {p2, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 305
    .line 306
    .line 307
    move-result p2

    .line 308
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    .line 310
    .line 311
    :goto_5
    return-void
.end method

.method public l(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Lx86;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, p1, v1}, Lx86;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lx86;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "inflate(...)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p1}, Lteam/opay/core/common/internal/BindingViewHolder;-><init>(Lxyf;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/widget/FlowProgressView$ProgressAdapter;->k(Lteam/opay/core/common/internal/BindingViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/widget/FlowProgressView$ProgressAdapter;->l(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final setDataList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/business/transfer/flow/api/ProgressInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/business/transfer/flow/widget/FlowProgressView$ProgressAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
