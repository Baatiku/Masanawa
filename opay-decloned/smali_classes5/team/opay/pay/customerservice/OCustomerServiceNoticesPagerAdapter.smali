.class public final Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OCustomerServiceNoticesPagerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;,
        Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0002#$B\u0011\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J#\u0010\u000b\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ#\u0010\u0010\u001a\u00020\u000f2\n\u0010\r\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R*\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;",
        "Lteam/opay/core/api/graphql/OCustomerServiceRemindData;",
        "feedBackData",
        "<init>",
        "(Lteam/opay/core/api/graphql/OCustomerServiceRemindData;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "m",
        "(Landroid/view/ViewGroup;I)Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;",
        "holder",
        "position",
        "",
        "l",
        "(Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;I)V",
        "getItemCount",
        "()I",
        "a",
        "Lteam/opay/core/api/graphql/OCustomerServiceRemindData;",
        "",
        "Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;",
        "b",
        "Ljava/util/List;",
        "mDatas",
        "Lkotlin/Function0;",
        "c",
        "Lkotlin/jvm/functions/Function0;",
        "k",
        "()Lkotlin/jvm/functions/Function0;",
        "n",
        "(Lkotlin/jvm/functions/Function0;)V",
        "shouldRefreshCallback",
        "OCustomerServiceNoticesPagerViewHolder",
        "OCustomerServiceFeedBackPagerData",
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
.field public final a:Lteam/opay/core/api/graphql/OCustomerServiceRemindData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/api/graphql/OCustomerServiceRemindData;)V
    .locals 18
    .param p1    # Lteam/opay/core/api/graphql/OCustomerServiceRemindData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;->a:Lteam/opay/core/api/graphql/OCustomerServiceRemindData;

    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;->b:Ljava/util/List;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/graphql/OCustomerServiceRemindData;->d()Lteam/opay/core/api/graphql/OCustomerServiceFeedBackData;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v4, 0x0

    .line 25
    :goto_0
    new-instance v14, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/OCustomerServiceFeedBackData;->e()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v5, 0x0

    .line 35
    :goto_1
    const-string v15, ""

    .line 36
    .line 37
    if-nez v5, :cond_2

    .line 38
    .line 39
    move-object v6, v15

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move-object v6, v5

    .line 42
    :goto_2
    if-eqz v4, :cond_3

    .line 43
    .line 44
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/OCustomerServiceFeedBackData;->c()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    const/4 v5, 0x0

    .line 50
    :goto_3
    const-string v13, "Y"

    .line 51
    .line 52
    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v4, :cond_4

    .line 57
    .line 58
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/OCustomerServiceFeedBackData;->a()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    goto :goto_4

    .line 63
    :cond_4
    const/4 v5, 0x0

    .line 64
    :goto_4
    if-nez v5, :cond_5

    .line 65
    .line 66
    move-object v8, v15

    .line 67
    goto :goto_5

    .line 68
    :cond_5
    move-object v8, v5

    .line 69
    :goto_5
    if-eqz v4, :cond_6

    .line 70
    .line 71
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/OCustomerServiceFeedBackData;->b()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    goto :goto_6

    .line 76
    :cond_6
    const/4 v5, 0x0

    .line 77
    :goto_6
    if-nez v5, :cond_7

    .line 78
    .line 79
    move-object v10, v15

    .line 80
    goto :goto_7

    .line 81
    :cond_7
    move-object v10, v5

    .line 82
    :goto_7
    if-eqz v4, :cond_8

    .line 83
    .line 84
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/OCustomerServiceFeedBackData;->d()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    goto :goto_8

    .line 89
    :cond_8
    const/4 v5, 0x0

    .line 90
    :goto_8
    if-nez v5, :cond_9

    .line 91
    .line 92
    move-object v11, v15

    .line 93
    goto :goto_9

    .line 94
    :cond_9
    move-object v11, v5

    .line 95
    :goto_9
    const/16 v16, 0x1

    .line 96
    .line 97
    const/16 v17, 0x0

    .line 98
    .line 99
    if-nez v4, :cond_a

    .line 100
    .line 101
    const/4 v4, 0x1

    .line 102
    goto :goto_a

    .line 103
    :cond_a
    const/4 v4, 0x0

    .line 104
    :goto_a
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    const/4 v9, 0x0

    .line 109
    const/4 v12, 0x1

    .line 110
    move-object v5, v14

    .line 111
    move-object v3, v13

    .line 112
    move-object v13, v4

    .line 113
    invoke-direct/range {v5 .. v13}, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    if-eqz v1, :cond_b

    .line 120
    .line 121
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/graphql/OCustomerServiceRemindData;->a()Ljava/lang/Boolean;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 126
    .line 127
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    goto :goto_b

    .line 132
    :cond_b
    const/4 v4, 0x0

    .line 133
    :goto_b
    if-eqz v4, :cond_13

    .line 134
    .line 135
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/graphql/OCustomerServiceRemindData;->b()Lteam/opay/core/api/graphql/OCustomerServiceReceivedData;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    new-instance v13, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;

    .line 140
    .line 141
    if-eqz v1, :cond_c

    .line 142
    .line 143
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/OCustomerServiceReceivedData;->d()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    goto :goto_c

    .line 148
    :cond_c
    const/4 v4, 0x0

    .line 149
    :goto_c
    if-nez v4, :cond_d

    .line 150
    .line 151
    move-object v5, v15

    .line 152
    goto :goto_d

    .line 153
    :cond_d
    move-object v5, v4

    .line 154
    :goto_d
    if-eqz v1, :cond_e

    .line 155
    .line 156
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/OCustomerServiceReceivedData;->b()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    goto :goto_e

    .line 161
    :cond_e
    const/4 v4, 0x0

    .line 162
    :goto_e
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-eqz v1, :cond_f

    .line 167
    .line 168
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/OCustomerServiceReceivedData;->a()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    goto :goto_f

    .line 173
    :cond_f
    const/4 v3, 0x0

    .line 174
    :goto_f
    if-nez v3, :cond_10

    .line 175
    .line 176
    move-object v7, v15

    .line 177
    goto :goto_10

    .line 178
    :cond_10
    move-object v7, v3

    .line 179
    :goto_10
    if-eqz v1, :cond_11

    .line 180
    .line 181
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/OCustomerServiceReceivedData;->c()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    move-object v8, v3

    .line 186
    goto :goto_11

    .line 187
    :cond_11
    const/4 v8, 0x0

    .line 188
    :goto_11
    if-nez v1, :cond_12

    .line 189
    .line 190
    goto :goto_12

    .line 191
    :cond_12
    const/16 v16, 0x0

    .line 192
    .line 193
    :goto_12
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 194
    .line 195
    .line 196
    move-result-object v12

    .line 197
    const-string v9, ""

    .line 198
    .line 199
    const-string v10, ""

    .line 200
    .line 201
    const/4 v11, 0x0

    .line 202
    move-object v4, v13

    .line 203
    invoke-direct/range {v4 .. v12}, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;)V

    .line 204
    .line 205
    .line 206
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    :cond_13
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;->b:Ljava/util/List;

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

.method public final k()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;->c:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;I)V
    .locals 1
    .param p1    # Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;->b(Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceFeedBackPagerData;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public m(Landroid/view/ViewGroup;I)Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    new-instance p2, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;

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
    sget v1, Lteam/opay/pay/R$layout;->item_pager_customer_service_notice:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "inflate(...)"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, p0, p1}, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;-><init>(Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    return-object p2
.end method

.method public final n(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;->c:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;->l(Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter;->m(Landroid/view/ViewGroup;I)Lteam/opay/pay/customerservice/OCustomerServiceNoticesPagerAdapter$OCustomerServiceNoticesPagerViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
