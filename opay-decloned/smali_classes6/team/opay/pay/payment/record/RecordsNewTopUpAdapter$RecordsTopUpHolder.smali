.class public final Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter$RecordsTopUpHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecordsNewTopupAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecordsTopUpHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter$RecordsTopUpHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lh0b;",
        "binding",
        "<init>",
        "(Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;Lh0b;)V",
        "Lteam/opay/pay/api/RecordsTopupRsp;",
        "data",
        "",
        "c",
        "(Lteam/opay/pay/api/RecordsTopupRsp;)V",
        "a",
        "Lh0b;",
        "getBinding",
        "()Lh0b;",
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
.field public final a:Lh0b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic b:Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;Lh0b;)V
    .locals 1
    .param p1    # Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0b;",
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
    iput-object p1, p0, Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter$RecordsTopUpHolder;->b:Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;

    .line 7
    .line 8
    invoke-virtual {p2}, Lh0b;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter$RecordsTopUpHolder;->a:Lh0b;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;Lteam/opay/pay/api/RecordsTopupRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter$RecordsTopUpHolder;->e(Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;Lteam/opay/pay/api/RecordsTopupRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;Lteam/opay/pay/api/RecordsTopupRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter$RecordsTopUpHolder;->d(Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;Lteam/opay/pay/api/RecordsTopupRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d(Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;Lteam/opay/pay/api/RecordsTopupRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;->r()Lkotlin/jvm/functions/Function1;

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

.method public static final e(Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;Lteam/opay/pay/api/RecordsTopupRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;->s()Lkotlin/jvm/functions/Function1;

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
    .locals 7
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
    iget-object v1, p0, Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter$RecordsTopUpHolder;->b:Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;

    .line 9
    .line 10
    sget-object v2, Lteam/opay/core/api/GraphQL$ServiceType;->AIRTIME:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 11
    .line 12
    sget-object v3, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    new-array v4, v4, [Lteam/opay/core/api/GraphQL$ServiceType;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    aput-object v2, v4, v5

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    aput-object v3, v4, v5

    .line 22
    .line 23
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v1}, Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;->l(Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;)Lteam/opay/core/api/GraphQL$ServiceType;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const-string v5, ""

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Lteam/opay/pay/api/RecordsTopupRsp;->c()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-nez v4, :cond_0

    .line 44
    .line 45
    move-object v4, v5

    .line 46
    :cond_0
    invoke-static {v4}, Lsob;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p1}, Lteam/opay/pay/api/RecordsTopupRsp;->c()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    move-object v4, v5

    .line 58
    :cond_2
    :goto_0
    iget-object v6, p0, Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter$RecordsTopUpHolder;->a:Lh0b;

    .line 59
    .line 60
    iget-object v6, v6, Lh0b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    .line 62
    invoke-virtual {v1, v4}, Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    iget-object v4, p0, Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter$RecordsTopUpHolder;->a:Lh0b;

    .line 70
    .line 71
    iget-object v4, v4, Lh0b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    invoke-virtual {p1}, Lteam/opay/pay/api/RecordsTopupRsp;->e()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    if-nez v6, :cond_3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    move-object v5, v6

    .line 81
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v1}, Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;->l(Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;)Lteam/opay/core/api/GraphQL$ServiceType;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    const-string v5, "recordsTag"

    .line 89
    .line 90
    const-string v6, "recordsDelete"

    .line 91
    .line 92
    if-eq v4, v2, :cond_5

    .line 93
    .line 94
    invoke-static {v1}, Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;->l(Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;)Lteam/opay/core/api/GraphQL$ServiceType;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-ne v2, v3, :cond_4

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    iget-object v2, p0, Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter$RecordsTopUpHolder;->a:Lh0b;

    .line 102
    .line 103
    iget-object v2, v2, Lh0b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 104
    .line 105
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v2}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter$RecordsTopUpHolder;->a:Lh0b;

    .line 112
    .line 113
    iget-object v2, v2, Lh0b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 114
    .line 115
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_5
    :goto_2
    iget-object v2, p0, Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter$RecordsTopUpHolder;->a:Lh0b;

    .line 123
    .line 124
    iget-object v2, v2, Lh0b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 125
    .line 126
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lteam/opay/pay/api/RecordsTopupRsp;->c()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    sget-object v4, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 134
    .line 135
    invoke-virtual {v4}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-virtual {v5}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    invoke-static {v2, v3}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 148
    .line 149
    .line 150
    iget-object v2, p0, Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter$RecordsTopUpHolder;->a:Lh0b;

    .line 151
    .line 152
    iget-object v2, v2, Lh0b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 153
    .line 154
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lteam/opay/pay/api/RecordsTopupRsp;->c()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v4}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v4}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    invoke-static {v2, v3}, Lteam/opay/core/android/ViewKt;->f(Landroid/view/View;Z)V

    .line 174
    .line 175
    .line 176
    :goto_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    new-instance v2, Lygc;

    .line 180
    .line 181
    invoke-direct {v2, v1, p1}, Lygc;-><init>(Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;Lteam/opay/pay/api/RecordsTopupRsp;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v0, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter$RecordsTopUpHolder;->a:Lh0b;

    .line 188
    .line 189
    iget-object v0, v0, Lh0b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 190
    .line 191
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    new-instance v2, Lzgc;

    .line 195
    .line 196
    invoke-direct {v2, v1, p1}, Lzgc;-><init>(Lteam/opay/pay/payment/record/RecordsNewTopUpAdapter;Lteam/opay/pay/api/RecordsTopupRsp;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v0, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 200
    .line 201
    .line 202
    return-void
.end method
