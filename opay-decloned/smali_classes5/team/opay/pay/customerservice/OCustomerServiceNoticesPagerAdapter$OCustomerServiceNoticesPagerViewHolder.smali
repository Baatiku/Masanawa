.class public final Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OCustomerServiceNoticesPagerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OCustomerServiceNoticesPagerViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nR\u0017\u0010\u0010\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View;",
        "view",
        "<init>",
        "(Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;Landroid/view/View;)V",
        "Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;",
        "data",
        "",
        "b",
        "(Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;)V",
        "Lqj7;",
        "a",
        "Lqj7;",
        "getBinding",
        "()Lqj7;",
        "binding",
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
.field public final a:Lqj7;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic b:Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;


# direct methods
.method public constructor <init>(Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;->b:Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lqj7;->bind(Landroid/view/View;)Lqj7;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "bind(...)"

    .line 16
    .line 17
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;->a:Lqj7;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;->c(Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;)Lkotlin/Unit;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;->h()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lx7b;->a:Lx7b;

    .line 9
    .line 10
    const-string v2, "Business_Type"

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;->b()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "Question_Type"

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;->f()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-static {v3, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/4 v4, 0x2

    .line 31
    new-array v4, v4, [Lkotlin/Pair;

    .line 32
    .line 33
    aput-object v2, v4, v0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    aput-object v3, v4, v0

    .line 37
    .line 38
    const-string v0, "service_center_my_feedback_latest_detail_click_new"

    .line 39
    .line 40
    invoke-virtual {v1, v0, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object v1, Lx7b;->a:Lx7b;

    .line 45
    .line 46
    new-array v0, v0, [Lkotlin/Pair;

    .line 47
    .line 48
    const-string v2, "service_center_restriction_notice_latest_detail_click_new"

    .line 49
    .line 50
    invoke-virtual {v1, v2, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object p1, p1, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;->a:Lqj7;

    .line 54
    .line 55
    invoke-virtual {p1}, Lqj7;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v0, "getContext(...)"

    .line 64
    .line 65
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;->a()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p1, p0}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;->k()Lkotlin/jvm/functions/Function0;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    if-eqz p0, :cond_1

    .line 80
    .line 81
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p0
.end method


# virtual methods
.method public final b(Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;)V
    .locals 6
    .param p1    # Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;
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
    invoke-virtual {p1}, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;->e()Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v1, "arrowRight"

    .line 17
    .line 18
    const-string v2, "tvStatus"

    .line 19
    .line 20
    const-string v3, "content"

    .line 21
    .line 22
    const-string v4, "redPoint"

    .line 23
    .line 24
    const-string v5, "tvNoRecords"

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;->a:Lqj7;

    .line 29
    .line 30
    iget-object v0, v0, Lqj7;->e:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;->a:Lqj7;

    .line 39
    .line 40
    iget-object v0, v0, Lqj7;->e:Landroid/widget/TextView;

    .line 41
    .line 42
    sget v5, Lteam/opay/pay/R$string;->osdk_90_no_records_in_feed_back:I

    .line 43
    .line 44
    invoke-static {v5}, Ljmf;->k(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;->a:Lqj7;

    .line 52
    .line 53
    iget-object v0, v0, Lqj7;->d:Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;->a:Lqj7;

    .line 62
    .line 63
    iget-object v0, v0, Lqj7;->c:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;->a:Lqj7;

    .line 72
    .line 73
    iget-object v0, v0, Lqj7;->f:Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;->a:Lqj7;

    .line 82
    .line 83
    iget-object v0, v0, Lqj7;->b:Landroid/widget/ImageView;

    .line 84
    .line 85
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;->a:Lqj7;

    .line 93
    .line 94
    iget-object v0, v0, Lqj7;->d:Landroid/widget/ImageView;

    .line 95
    .line 96
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;->d()Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    invoke-static {v0, v4}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;->a:Lqj7;

    .line 107
    .line 108
    iget-object v0, v0, Lqj7;->c:Landroid/widget/TextView;

    .line 109
    .line 110
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;->a:Lqj7;

    .line 117
    .line 118
    iget-object v0, v0, Lqj7;->f:Landroid/widget/TextView;

    .line 119
    .line 120
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;->a:Lqj7;

    .line 127
    .line 128
    iget-object v0, v0, Lqj7;->b:Landroid/widget/ImageView;

    .line 129
    .line 130
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;->a:Lqj7;

    .line 137
    .line 138
    iget-object v0, v0, Lqj7;->e:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;->a:Lqj7;

    .line 147
    .line 148
    iget-object v0, v0, Lqj7;->c:Landroid/widget/TextView;

    .line 149
    .line 150
    invoke-virtual {p1}, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;->c()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;->a:Lqj7;

    .line 158
    .line 159
    iget-object v0, v0, Lqj7;->f:Landroid/widget/TextView;

    .line 160
    .line 161
    invoke-virtual {p1}, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;->g()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;->a:Lqj7;

    .line 169
    .line 170
    invoke-virtual {v0}, Lqj7;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    const-string v1, "getRoot(...)"

    .line 175
    .line 176
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v1, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;->b:Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;

    .line 180
    .line 181
    new-instance v2, Lc3a;

    .line 182
    .line 183
    invoke-direct {v2, p1, p0, v1}, Lc3a;-><init>(Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v0, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 187
    .line 188
    .line 189
    return-void
.end method
