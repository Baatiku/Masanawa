.class public final Lteam/opay/pay/payment/record/RecordsTopupAdapter$RecordsTopupHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecordsTopupAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/payment/record/RecordsTopupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecordsTopupHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/pay/payment/record/RecordsTopupAdapter$RecordsTopupHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Li0b;",
        "binding",
        "<init>",
        "(Lteam/opay/pay/payment/record/RecordsTopupAdapter;Li0b;)V",
        "Lteam/opay/pay/api/RecordsTopupRsp;",
        "data",
        "",
        "c",
        "(Lteam/opay/pay/api/RecordsTopupRsp;)V",
        "a",
        "Li0b;",
        "getBinding",
        "()Li0b;",
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
.field public final a:Li0b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic b:Lteam/opay/pay/payment/record/RecordsTopupAdapter;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/record/RecordsTopupAdapter;Li0b;)V
    .locals 1
    .param p1    # Lteam/opay/pay/payment/record/RecordsTopupAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li0b;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/payment/record/RecordsTopupAdapter$RecordsTopupHolder;->b:Lteam/opay/pay/payment/record/RecordsTopupAdapter;

    .line 7
    .line 8
    invoke-virtual {p2}, Li0b;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lteam/opay/pay/payment/record/RecordsTopupAdapter$RecordsTopupHolder;->a:Li0b;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/payment/record/RecordsTopupAdapter;Lteam/opay/pay/api/RecordsTopupRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/record/RecordsTopupAdapter$RecordsTopupHolder;->d(Lteam/opay/pay/payment/record/RecordsTopupAdapter;Lteam/opay/pay/api/RecordsTopupRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/pay/payment/record/RecordsTopupAdapter;Lteam/opay/pay/api/RecordsTopupRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/record/RecordsTopupAdapter$RecordsTopupHolder;->e(Lteam/opay/pay/payment/record/RecordsTopupAdapter;Lteam/opay/pay/api/RecordsTopupRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d(Lteam/opay/pay/payment/record/RecordsTopupAdapter;Lteam/opay/pay/api/RecordsTopupRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/record/RecordsTopupAdapter;->l()Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final e(Lteam/opay/pay/payment/record/RecordsTopupAdapter;Lteam/opay/pay/api/RecordsTopupRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/record/RecordsTopupAdapter;->m()Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public final c(Lteam/opay/pay/api/RecordsTopupRsp;)V
    .locals 11
    .param p1    # Lteam/opay/pay/api/RecordsTopupRsp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/pay/payment/record/RecordsTopupAdapter$RecordsTopupHolder;->b:Lteam/opay/pay/payment/record/RecordsTopupAdapter;

    .line 9
    .line 10
    iget-object v2, p0, Lteam/opay/pay/payment/record/RecordsTopupAdapter$RecordsTopupHolder;->a:Li0b;

    .line 11
    .line 12
    iget-object v2, v2, Li0b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    sget-object v3, Lteam/opay/core/api/GraphQL$ServiceType;->AIRTIME:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 15
    .line 16
    sget-object v4, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    new-array v5, v5, [Lteam/opay/core/api/GraphQL$ServiceType;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    aput-object v3, v5, v6

    .line 23
    .line 24
    const/4 v6, 0x1

    .line 25
    aput-object v4, v5, v6

    .line 26
    .line 27
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-static {v1}, Lteam/opay/pay/payment/record/RecordsTopupAdapter;->k(Lteam/opay/pay/payment/record/RecordsTopupAdapter;)Lteam/opay/core/api/GraphQL$ServiceType;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const-string v6, ""

    .line 40
    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lteam/opay/pay/api/RecordsTopupRsp;->c()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-nez v5, :cond_0

    .line 48
    .line 49
    move-object v5, v6

    .line 50
    :cond_0
    invoke-static {v5}, Lsob;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1}, Lteam/opay/pay/api/RecordsTopupRsp;->c()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    if-nez v5, :cond_2

    .line 60
    .line 61
    move-object v5, v6

    .line 62
    :cond_2
    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lteam/opay/pay/api/RecordsTopupRsp;->f()J

    .line 66
    .line 67
    .line 68
    move-result-wide v7

    .line 69
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-wide/16 v7, 0x0

    .line 74
    .line 75
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v2, v5}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Ljava/lang/Number;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 86
    .line 87
    .line 88
    move-result-wide v9

    .line 89
    const-string v2, "recordsTime"

    .line 90
    .line 91
    cmp-long v5, v9, v7

    .line 92
    .line 93
    if-nez v5, :cond_3

    .line 94
    .line 95
    iget-object v5, p0, Lteam/opay/pay/payment/record/RecordsTopupAdapter$RecordsTopupHolder;->a:Li0b;

    .line 96
    .line 97
    iget-object v5, v5, Li0b;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v5}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    iget-object v5, p0, Lteam/opay/pay/payment/record/RecordsTopupAdapter$RecordsTopupHolder;->a:Li0b;

    .line 107
    .line 108
    iget-object v5, v5, Li0b;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v5}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 114
    .line 115
    .line 116
    iget-object v5, p0, Lteam/opay/pay/payment/record/RecordsTopupAdapter$RecordsTopupHolder;->a:Li0b;

    .line 117
    .line 118
    iget-object v5, v5, Li0b;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 119
    .line 120
    invoke-virtual {p1}, Lteam/opay/pay/api/RecordsTopupRsp;->a()Ljava/util/Date;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    if-eqz v7, :cond_4

    .line 125
    .line 126
    invoke-static {v7}, Lale;->a(Ljava/util/Date;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    goto :goto_1

    .line 131
    :cond_4
    const/4 v7, 0x0

    .line 132
    :goto_1
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    :goto_2
    iget-object v5, p0, Lteam/opay/pay/payment/record/RecordsTopupAdapter$RecordsTopupHolder;->a:Li0b;

    .line 136
    .line 137
    iget-object v5, v5, Li0b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    .line 139
    invoke-virtual {p1}, Lteam/opay/pay/api/RecordsTopupRsp;->e()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    if-nez v7, :cond_5

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_5
    move-object v6, v7

    .line 147
    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    invoke-static {v1}, Lteam/opay/pay/payment/record/RecordsTopupAdapter;->k(Lteam/opay/pay/payment/record/RecordsTopupAdapter;)Lteam/opay/core/api/GraphQL$ServiceType;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    const-string v6, "recordsTag"

    .line 155
    .line 156
    const-string v7, "recordsDelete"

    .line 157
    .line 158
    if-eq v5, v3, :cond_7

    .line 159
    .line 160
    invoke-static {v1}, Lteam/opay/pay/payment/record/RecordsTopupAdapter;->k(Lteam/opay/pay/payment/record/RecordsTopupAdapter;)Lteam/opay/core/api/GraphQL$ServiceType;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    if-ne v3, v4, :cond_6

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_6
    iget-object v3, p0, Lteam/opay/pay/payment/record/RecordsTopupAdapter$RecordsTopupHolder;->a:Li0b;

    .line 168
    .line 169
    iget-object v3, v3, Li0b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 170
    .line 171
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 175
    .line 176
    .line 177
    iget-object v3, p0, Lteam/opay/pay/payment/record/RecordsTopupAdapter$RecordsTopupHolder;->a:Li0b;

    .line 178
    .line 179
    iget-object v3, v3, Li0b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 180
    .line 181
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 185
    .line 186
    .line 187
    iget-object v3, p0, Lteam/opay/pay/payment/record/RecordsTopupAdapter$RecordsTopupHolder;->a:Li0b;

    .line 188
    .line 189
    iget-object v3, v3, Li0b;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 190
    .line 191
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_7
    :goto_4
    iget-object v3, p0, Lteam/opay/pay/payment/record/RecordsTopupAdapter$RecordsTopupHolder;->a:Li0b;

    .line 199
    .line 200
    iget-object v3, v3, Li0b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 201
    .line 202
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Lteam/opay/pay/api/RecordsTopupRsp;->c()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    sget-object v5, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 210
    .line 211
    invoke-virtual {v5}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    invoke-virtual {v6}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    invoke-static {v3, v4}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 224
    .line 225
    .line 226
    iget-object v3, p0, Lteam/opay/pay/payment/record/RecordsTopupAdapter$RecordsTopupHolder;->a:Li0b;

    .line 227
    .line 228
    iget-object v3, v3, Li0b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 229
    .line 230
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Lteam/opay/pay/api/RecordsTopupRsp;->c()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v5}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-virtual {v5}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    invoke-static {v3, v4}, Lteam/opay/core/android/ViewKt;->f(Landroid/view/View;Z)V

    .line 250
    .line 251
    .line 252
    iget-object v3, p0, Lteam/opay/pay/payment/record/RecordsTopupAdapter$RecordsTopupHolder;->a:Li0b;

    .line 253
    .line 254
    iget-object v3, v3, Li0b;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 255
    .line 256
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 260
    .line 261
    .line 262
    :goto_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    new-instance v2, Lahc;

    .line 266
    .line 267
    invoke-direct {v2, v1, p1}, Lahc;-><init>(Lteam/opay/pay/payment/record/RecordsTopupAdapter;Lteam/opay/pay/api/RecordsTopupRsp;)V

    .line 268
    .line 269
    .line 270
    invoke-static {v0, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 271
    .line 272
    .line 273
    iget-object v0, p0, Lteam/opay/pay/payment/record/RecordsTopupAdapter$RecordsTopupHolder;->a:Li0b;

    .line 274
    .line 275
    iget-object v0, v0, Li0b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 276
    .line 277
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    new-instance v2, Lbhc;

    .line 281
    .line 282
    invoke-direct {v2, v1, p1}, Lbhc;-><init>(Lteam/opay/pay/payment/record/RecordsTopupAdapter;Lteam/opay/pay/api/RecordsTopupRsp;)V

    .line 283
    .line 284
    .line 285
    invoke-static {v0, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 286
    .line 287
    .line 288
    return-void
.end method
