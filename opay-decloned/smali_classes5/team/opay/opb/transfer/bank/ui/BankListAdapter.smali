.class public final Lteam/opay/opb/transfer/bank/ui/BankListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BankListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/core/common/internal/BindingViewHolder<",
        "Lkj0;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001d\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ*\u0010\u0013\u001a\r\u0012\t\u0012\u00070\u0003\u00a2\u0006\u0002\u0008\u00120\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J%\u0010\u0019\u001a\u00020\u000b2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0018\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR$\u0010#\u001a\u0012\u0012\u0004\u0012\u00020\t0\u001fj\u0008\u0012\u0004\u0012\u00020\t` 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R0\u0010+\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b\u0018\u00010$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006,"
    }
    d2 = {
        "Lteam/opay/opb/transfer/bank/ui/BankListAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/core/common/internal/BindingViewHolder;",
        "Lkj0;",
        "",
        "bankFrom",
        "<init>",
        "(Ljava/lang/String;)V",
        "",
        "Lteam/opay/opb/transfer/bank/ui/BankData;",
        "data",
        "",
        "setData",
        "(Ljava/util/List;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "n",
        "(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;",
        "getItemCount",
        "()I",
        "holder",
        "position",
        "l",
        "(Lteam/opay/core/common/internal/BindingViewHolder;I)V",
        "a",
        "Ljava/lang/String;",
        "getBankFrom",
        "()Ljava/lang/String;",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "b",
        "Ljava/util/ArrayList;",
        "banks",
        "Lkotlin/Function1;",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "getOnItemClick",
        "()Lkotlin/jvm/functions/Function1;",
        "o",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onItemClick",
        "business-transfer-bank_release"
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
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/opb/transfer/bank/ui/BankData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/opb/transfer/bank/ui/BankData;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bankFrom"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/opb/transfer/bank/ui/BankListAdapter;->a:Ljava/lang/String;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lteam/opay/opb/transfer/bank/ui/BankListAdapter;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic k(Lteam/opay/opb/transfer/bank/ui/BankListAdapter;Lteam/opay/opb/transfer/bank/ui/BankData;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/opb/transfer/bank/ui/BankListAdapter;->m(Lteam/opay/opb/transfer/bank/ui/BankListAdapter;Lteam/opay/opb/transfer/bank/ui/BankData;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final m(Lteam/opay/opb/transfer/bank/ui/BankListAdapter;Lteam/opay/opb/transfer/bank/ui/BankData;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/transfer/bank/ui/BankListAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/ui/BankListAdapter;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public l(Lteam/opay/core/common/internal/BindingViewHolder;I)V
    .locals 10
    .param p1    # Lteam/opay/core/common/internal/BindingViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Lkj0;",
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
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/ui/BankListAdapter;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lteam/opay/opb/transfer/bank/ui/BankData;

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/ui/BankListAdapter;->a:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "instruction"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const-string v1, "bankName"

    .line 26
    .line 27
    const-string v2, "return number type not support"

    .line 28
    .line 29
    const-class v3, Ljava/lang/Integer;

    .line 30
    .line 31
    if-eqz v0, :cond_9

    .line 32
    .line 33
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lkj0;

    .line 38
    .line 39
    iget-object v0, v0, Lkj0;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 54
    .line 55
    const/16 v5, 0x30

    .line 56
    .line 57
    int-to-float v5, v5

    .line 58
    mul-float v4, v4, v5

    .line 59
    .line 60
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 69
    .line 70
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_1

    .line 79
    .line 80
    check-cast v4, Ljava/lang/Integer;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 84
    .line 85
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    if-eqz v8, :cond_2

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    goto :goto_0

    .line 104
    :cond_2
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 105
    .line 106
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    if-eqz v8, :cond_3

    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    .line 117
    .line 118
    .line 119
    move-result-wide v8

    .line 120
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    check-cast v4, Ljava/lang/Integer;

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_3
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 128
    .line 129
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-eqz v6, :cond_8

    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 140
    .line 141
    .line 142
    move-result-wide v8

    .line 143
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    check-cast v4, Ljava/lang/Integer;

    .line 148
    .line 149
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 154
    .line 155
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 164
    .line 165
    mul-float v4, v4, v5

    .line 166
    .line 167
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    if-eqz v5, :cond_4

    .line 184
    .line 185
    check-cast v4, Ljava/lang/Integer;

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_4
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 189
    .line 190
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-eqz v5, :cond_5

    .line 199
    .line 200
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    goto :goto_1

    .line 209
    :cond_5
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 210
    .line 211
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    if-eqz v5, :cond_6

    .line 220
    .line 221
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    .line 222
    .line 223
    .line 224
    move-result-wide v2

    .line 225
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    move-object v4, v2

    .line 230
    check-cast v4, Ljava/lang/Integer;

    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_6
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 234
    .line 235
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-eqz v3, :cond_7

    .line 244
    .line 245
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 246
    .line 247
    .line 248
    move-result-wide v2

    .line 249
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    move-object v4, v2

    .line 254
    check-cast v4, Ljava/lang/Integer;

    .line 255
    .line 256
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 261
    .line 262
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Lkj0;

    .line 267
    .line 268
    iget-object v0, v0, Lkj0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 269
    .line 270
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-static {v0}, Lg0g;->h(Landroid/view/View;)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_4

    .line 277
    .line 278
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 279
    .line 280
    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    throw p1

    .line 284
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 285
    .line 286
    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw p1

    .line 290
    :cond_9
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Lkj0;

    .line 295
    .line 296
    iget-object v0, v0, Lkj0;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 297
    .line 298
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 311
    .line 312
    const/16 v5, 0x20

    .line 313
    .line 314
    int-to-float v5, v5

    .line 315
    mul-float v4, v4, v5

    .line 316
    .line 317
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 326
    .line 327
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 328
    .line 329
    .line 330
    move-result-object v8

    .line 331
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v8

    .line 335
    if-eqz v8, :cond_a

    .line 336
    .line 337
    check-cast v4, Ljava/lang/Integer;

    .line 338
    .line 339
    goto :goto_2

    .line 340
    :cond_a
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 341
    .line 342
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 343
    .line 344
    .line 345
    move-result-object v8

    .line 346
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v8

    .line 350
    if-eqz v8, :cond_b

    .line 351
    .line 352
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    goto :goto_2

    .line 361
    :cond_b
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 362
    .line 363
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v8

    .line 371
    if-eqz v8, :cond_c

    .line 372
    .line 373
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    .line 374
    .line 375
    .line 376
    move-result-wide v8

    .line 377
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    check-cast v4, Ljava/lang/Integer;

    .line 382
    .line 383
    goto :goto_2

    .line 384
    :cond_c
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 385
    .line 386
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 387
    .line 388
    .line 389
    move-result-object v8

    .line 390
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    if-eqz v6, :cond_11

    .line 395
    .line 396
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 397
    .line 398
    .line 399
    move-result-wide v8

    .line 400
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    check-cast v4, Ljava/lang/Integer;

    .line 405
    .line 406
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 411
    .line 412
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 421
    .line 422
    mul-float v4, v4, v5

    .line 423
    .line 424
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v5

    .line 440
    if-eqz v5, :cond_d

    .line 441
    .line 442
    check-cast v4, Ljava/lang/Integer;

    .line 443
    .line 444
    goto :goto_3

    .line 445
    :cond_d
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 446
    .line 447
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result v5

    .line 455
    if-eqz v5, :cond_e

    .line 456
    .line 457
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    goto :goto_3

    .line 466
    :cond_e
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 467
    .line 468
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v5

    .line 476
    if-eqz v5, :cond_f

    .line 477
    .line 478
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    .line 479
    .line 480
    .line 481
    move-result-wide v2

    .line 482
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    move-object v4, v2

    .line 487
    check-cast v4, Ljava/lang/Integer;

    .line 488
    .line 489
    goto :goto_3

    .line 490
    :cond_f
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 491
    .line 492
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 493
    .line 494
    .line 495
    move-result-object v5

    .line 496
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    move-result v3

    .line 500
    if-eqz v3, :cond_10

    .line 501
    .line 502
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 503
    .line 504
    .line 505
    move-result-wide v2

    .line 506
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    move-object v4, v2

    .line 511
    check-cast v4, Ljava/lang/Integer;

    .line 512
    .line 513
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 514
    .line 515
    .line 516
    move-result v2

    .line 517
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 518
    .line 519
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    check-cast v0, Lkj0;

    .line 524
    .line 525
    iget-object v0, v0, Lkj0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 526
    .line 527
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 531
    .line 532
    .line 533
    :goto_4
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    check-cast v0, Lkj0;

    .line 538
    .line 539
    iget-object v0, v0, Lkj0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 540
    .line 541
    invoke-virtual {p2}, Lteam/opay/opb/transfer/bank/ui/BankData;->getShortName()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    check-cast v0, Lkj0;

    .line 553
    .line 554
    iget-object v0, v0, Lkj0;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 555
    .line 556
    invoke-virtual {p2}, Lteam/opay/opb/transfer/bank/ui/BankData;->getIcon()I

    .line 557
    .line 558
    .line 559
    move-result v1

    .line 560
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 561
    .line 562
    .line 563
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 564
    .line 565
    new-instance v0, Lqj0;

    .line 566
    .line 567
    invoke-direct {v0, p0, p2}, Lqj0;-><init>(Lteam/opay/opb/transfer/bank/ui/BankListAdapter;Lteam/opay/opb/transfer/bank/ui/BankData;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    .line 572
    .line 573
    return-void

    .line 574
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 575
    .line 576
    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    throw p1

    .line 580
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 581
    .line 582
    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    throw p1
.end method

.method public n(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;
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
            "Lkj0;",
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
    invoke-static {v0, p1, v1}, Lkj0;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lkj0;

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

.method public final o(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/opb/transfer/bank/ui/BankData;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/opb/transfer/bank/ui/BankListAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/transfer/bank/ui/BankListAdapter;->l(Lteam/opay/core/common/internal/BindingViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/transfer/bank/ui/BankListAdapter;->n(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final setData(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/opb/transfer/bank/ui/BankData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/ui/BankListAdapter;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/ui/BankListAdapter;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
