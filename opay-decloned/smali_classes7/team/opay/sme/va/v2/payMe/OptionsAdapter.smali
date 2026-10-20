.class public final Lteam/opay/sme/va/v2/payMe/OptionsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OptionsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/core/common/internal/BindingViewHolder<",
        "Lmyd;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J*\u0010\u000b\u001a\r\u0012\t\u0012\u00070\u0003\u00a2\u0006\u0002\u0008\n0\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ%\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u000e\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R6\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/sme/va/v2/payMe/OptionsAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/core/common/internal/BindingViewHolder;",
        "Lmyd;",
        "<init>",
        "()V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "n",
        "(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;",
        "holder",
        "position",
        "",
        "l",
        "(Lteam/opay/core/common/internal/BindingViewHolder;I)V",
        "getItemCount",
        "()I",
        "",
        "Lteam/opay/business/provider/active/HomeBusiness;",
        "value",
        "a",
        "Ljava/util/List;",
        "getDataList",
        "()Ljava/util/List;",
        "setDataList",
        "(Ljava/util/List;)V",
        "dataList",
        "sme-va_release"
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
            "Lteam/opay/business/provider/active/HomeBusiness;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lteam/opay/sme/va/v2/payMe/OptionsAdapter;->a:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic k(Lteam/opay/core/common/internal/BindingViewHolder;Lteam/opay/business/provider/active/HomeBusiness;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/va/v2/payMe/OptionsAdapter;->m(Lteam/opay/core/common/internal/BindingViewHolder;Lteam/opay/business/provider/active/HomeBusiness;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final m(Lteam/opay/core/common/internal/BindingViewHolder;Lteam/opay/business/provider/active/HomeBusiness;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmyd;

    .line 6
    .line 7
    iget-object v0, v0, Lmyd;->e:Lteam/opay/business/provider/active/ImageLottieView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 10
    .line 11
    .line 12
    sget-object v1, Lud;->a:Lud;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v0, "getContext(...)"

    .line 21
    .line 22
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lteam/opay/business/provider/active/HomeBusiness;->getAction()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    const-string v3, ""

    .line 32
    .line 33
    :cond_0
    const/4 v5, 0x4

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-static/range {v1 .. v6}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 40
    .line 41
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "id"

    .line 51
    .line 52
    invoke-virtual {p1}, Lteam/opay/business/provider/active/HomeBusiness;->getId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v0, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v2, "name"

    .line 61
    .line 62
    invoke-virtual {p1}, Lteam/opay/business/provider/active/HomeBusiness;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const/4 v2, 0x2

    .line 71
    new-array v2, v2, [Lkotlin/Pair;

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    aput-object v0, v2, v3

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    aput-object p1, v2, v0

    .line 78
    .line 79
    const-string p1, "pay_me_service_click"

    .line 80
    .line 81
    invoke-virtual {v1, p0, p1, v2}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 82
    .line 83
    .line 84
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p0
.end method


# virtual methods
.method public final getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/business/provider/active/HomeBusiness;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/v2/payMe/OptionsAdapter;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/v2/payMe/OptionsAdapter;->a:Ljava/util/List;

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

.method public l(Lteam/opay/core/common/internal/BindingViewHolder;I)V
    .locals 7
    .param p1    # Lteam/opay/core/common/internal/BindingViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Lmyd;",
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
    iget-object v0, p0, Lteam/opay/sme/va/v2/payMe/OptionsAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lteam/opay/business/provider/active/HomeBusiness;

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lmyd;

    .line 22
    .line 23
    iget-object v0, v0, Lmyd;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    invoke-virtual {p2}, Lteam/opay/business/provider/active/HomeBusiness;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, ""

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    move-object v1, v2

    .line 34
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lmyd;

    .line 42
    .line 43
    iget-object v0, v0, Lmyd;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    invoke-virtual {p2}, Lteam/opay/business/provider/active/HomeBusiness;->getDescription()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move-object v2, v1

    .line 53
    :goto_0
    const/4 v1, 0x0

    .line 54
    invoke-static {v2, v1}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lmyd;

    .line 66
    .line 67
    iget-object v0, v0, Lmyd;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    const-string v2, "itemContent"

    .line 70
    .line 71
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Lteam/opay/business/provider/active/HomeBusiness;->getDescription()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const/4 v3, 0x1

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    invoke-static {v2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_4

    .line 86
    .line 87
    :cond_3
    const/4 v1, 0x1

    .line 88
    :cond_4
    xor-int/2addr v1, v3

    .line 89
    invoke-static {v0, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lmyd;

    .line 97
    .line 98
    iget-object v0, v0, Lmyd;->c:Lteam/opay/business/provider/active/ImageLottieView;

    .line 99
    .line 100
    invoke-virtual {p2}, Lteam/opay/business/provider/active/HomeBusiness;->getImageUrl()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    sget v2, Lteam/opay/core/common/R$drawable;->common_default_logo_grey:I

    .line 105
    .line 106
    invoke-virtual {v0, v1, v2}, Lteam/opay/business/provider/active/ImageLottieView;->s(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Lteam/opay/business/provider/active/HomeBusiness;->getHasSuperscript()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    const-string v1, "itemRecommend"

    .line 114
    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lmyd;

    .line 122
    .line 123
    iget-object v0, v0, Lmyd;->e:Lteam/opay/business/provider/active/ImageLottieView;

    .line 124
    .line 125
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v0}, Lg0g;->h(Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Lmyd;

    .line 136
    .line 137
    iget-object v1, v0, Lmyd;->e:Lteam/opay/business/provider/active/ImageLottieView;

    .line 138
    .line 139
    invoke-virtual {p2}, Lteam/opay/business/provider/active/HomeBusiness;->getSuperscriptImageUrl()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {p2}, Lteam/opay/business/provider/active/HomeBusiness;->getSuperscriptAd()Lteam/opay/business/provider/active/AdItem;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    const/4 v5, 0x4

    .line 148
    const/4 v6, 0x0

    .line 149
    const/4 v4, 0x0

    .line 150
    invoke-static/range {v1 .. v6}, Lteam/opay/business/provider/active/ImageLottieView;->A(Lteam/opay/business/provider/active/ImageLottieView;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_5
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lmyd;

    .line 159
    .line 160
    iget-object v0, v0, Lmyd;->e:Lteam/opay/business/provider/active/ImageLottieView;

    .line 161
    .line 162
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 166
    .line 167
    .line 168
    :goto_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 169
    .line 170
    const-string v1, "itemView"

    .line 171
    .line 172
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance v1, Ldwa;

    .line 176
    .line 177
    invoke-direct {v1, p1, p2}, Ldwa;-><init>(Lteam/opay/core/common/internal/BindingViewHolder;Lteam/opay/business/provider/active/HomeBusiness;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v0, v1}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 181
    .line 182
    .line 183
    return-void
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
            "Lmyd;",
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
    invoke-static {v0, p1, v1}, Lmyd;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lmyd;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/payMe/OptionsAdapter;->l(Lteam/opay/core/common/internal/BindingViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/payMe/OptionsAdapter;->n(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;

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
            "Lteam/opay/business/provider/active/HomeBusiness;",
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
    iput-object p1, p0, Lteam/opay/sme/va/v2/payMe/OptionsAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
