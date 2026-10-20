.class public final Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;
.super Lteam/opay/core/common/internal/GenericViewHolder;
.source "HomeBannerViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BannerHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/common/internal/GenericViewHolder<",
        "Lteam/opay/sme/va/receive/StaticAccountConfigItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u0012\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;",
        "Lteam/opay/core/common/internal/GenericViewHolder;",
        "Lteam/opay/sme/va/receive/StaticAccountConfigItem;",
        "Landroid/view/View;",
        "itemView",
        "<init>",
        "(Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder;Landroid/view/View;)V",
        "",
        "position",
        "data",
        "",
        "d",
        "(ILteam/opay/sme/va/receive/StaticAccountConfigItem;)V",
        "Lhyd;",
        "a",
        "Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;",
        "c",
        "()Lhyd;",
        "binding",
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


# static fields
.field public static final synthetic c:[Lzo7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lzo7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic b:Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/sme/va/databinding/SmeVaItemHomeTopBannerImageBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;

    .line 7
    .line 8
    const-string v4, "binding"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->i(Lkotlin/jvm/internal/PropertyReference1;)Lbp7;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Lzo7;

    .line 19
    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    sput-object v1, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->c:[Lzo7;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1    # Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder;
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
    const-string v0, "itemView"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->b:Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Lteam/opay/core/common/internal/GenericViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 12
    .line 13
    const-class p2, Lhyd;

    .line 14
    .line 15
    invoke-direct {p1, p2}, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;-><init>(Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic a(Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder;ILteam/opay/sme/va/receive/StaticAccountConfigItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->f(Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder;ILteam/opay/sme/va/receive/StaticAccountConfigItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/sme/va/receive/StaticAccountConfigItem;Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->e(Lteam/opay/sme/va/receive/StaticAccountConfigItem;Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final e(Lteam/opay/sme/va/receive/StaticAccountConfigItem;Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;)Lkotlin/Unit;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/StaticAccountConfigItem;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getContext(...)"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v2, Lwqe;->a:Lwqe;

    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->c()Lhyd;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lhyd;->a()Lteam/opay/core/widget/fillet/CorpConstraintLayout;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    new-array v4, v4, [Lkotlin/Pair;

    .line 28
    .line 29
    invoke-virtual {v2, v3, v0, v4}, Lwqe;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    sget-object v5, Lud;->a:Lud;

    .line 33
    .line 34
    invoke-virtual {p1}, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->c()Lhyd;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lhyd;->a()Lteam/opay/core/widget/fillet/CorpConstraintLayout;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/StaticAccountConfigItem;->c()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    if-nez p0, :cond_1

    .line 54
    .line 55
    const-string p0, ""

    .line 56
    .line 57
    :cond_1
    move-object v7, p0

    .line 58
    const/4 v9, 0x4

    .line 59
    const/4 v10, 0x0

    .line 60
    const/4 v8, 0x0

    .line 61
    invoke-static/range {v5 .. v10}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p0
.end method

.method public static final f(Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder;ILteam/opay/sme/va/receive/StaticAccountConfigItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder;->e()Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method


# virtual methods
.method public final c()Lhyd;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->c:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;->c(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lhyd;

    .line 13
    .line 14
    return-object v0
.end method

.method public d(ILteam/opay/sme/va/receive/StaticAccountConfigItem;)V
    .locals 3
    .param p2    # Lteam/opay/sme/va/receive/StaticAccountConfigItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lteam/opay/sme/va/receive/StaticAccountConfigItem;->d()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "groupBanner"

    .line 11
    .line 12
    const-string v2, "ivBanner"

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p2}, Lteam/opay/sme/va/receive/StaticAccountConfigItem;->f()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->c()Lhyd;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v0, v0, Lhyd;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 41
    .line 42
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->c()Lhyd;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v0, v0, Lhyd;->g:Landroidx/constraintlayout/widget/Group;

    .line 53
    .line 54
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lg0g;->h(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->c()Lhyd;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v0, v0, Lhyd;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 65
    .line 66
    const-string v1, "bannerImage"

    .line 67
    .line 68
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lteam/opay/sme/va/receive/StaticAccountConfigItem;->e()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    sget v2, Lteam/opay/core/http/R$drawable;->http_layer_opay_banner:I

    .line 76
    .line 77
    invoke-static {v0, v1, v2}, Lle7;->d(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->c()Lhyd;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v0, v0, Lhyd;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    invoke-virtual {p2}, Lteam/opay/sme/va/receive/StaticAccountConfigItem;->d()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->c()Lhyd;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v0, v0, Lhyd;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    invoke-virtual {p2}, Lteam/opay/sme/va/receive/StaticAccountConfigItem;->f()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->c()Lhyd;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v0, v0, Lhyd;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 112
    .line 113
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v0}, Lg0g;->h(Landroid/view/View;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->c()Lhyd;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v0, v0, Lhyd;->g:Landroidx/constraintlayout/widget/Group;

    .line 124
    .line 125
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->c()Lhyd;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v0, v0, Lhyd;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 136
    .line 137
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Lteam/opay/sme/va/receive/StaticAccountConfigItem;->e()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    sget v2, Lteam/opay/core/http/R$drawable;->http_layer_opay_banner:I

    .line 145
    .line 146
    invoke-static {v0, v1, v2}, Lle7;->d(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    :goto_1
    invoke-virtual {p2}, Lteam/opay/sme/va/receive/StaticAccountConfigItem;->a()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const-string v1, "btnClose"

    .line 154
    .line 155
    if-eqz v0, :cond_4

    .line 156
    .line 157
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_3

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_3
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->c()Lhyd;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iget-object v0, v0, Lhyd;->f:Lcom/google/android/material/button/MaterialButton;

    .line 169
    .line 170
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v0}, Lg0g;->h(Landroid/view/View;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->c()Lhyd;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iget-object v0, v0, Lhyd;->f:Lcom/google/android/material/button/MaterialButton;

    .line 181
    .line 182
    invoke-virtual {p2}, Lteam/opay/sme/va/receive/StaticAccountConfigItem;->a()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->c()Lhyd;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    iget-object v0, v0, Lhyd;->f:Lcom/google/android/material/button/MaterialButton;

    .line 195
    .line 196
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 200
    .line 201
    .line 202
    :goto_3
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->c()Lhyd;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iget-object v0, v0, Lhyd;->f:Lcom/google/android/material/button/MaterialButton;

    .line 207
    .line 208
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    new-instance v1, Lqy6;

    .line 212
    .line 213
    invoke-direct {v1, p2, p0}, Lqy6;-><init>(Lteam/opay/sme/va/receive/StaticAccountConfigItem;Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v0, v1}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->c()Lhyd;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lhyd;->a()Lteam/opay/core/widget/fillet/CorpConstraintLayout;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    const-string v1, "getRoot(...)"

    .line 228
    .line 229
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v1, p0, Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder$BannerHolder;->b:Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder;

    .line 233
    .line 234
    new-instance v2, Lry6;

    .line 235
    .line 236
    invoke-direct {v2, v1, p1, p2}, Lry6;-><init>(Lteam/opay/sme/va/receive/staticAccount/home/HomeBannerViewHolder;ILteam/opay/sme/va/receive/StaticAccountConfigItem;)V

    .line 237
    .line 238
    .line 239
    invoke-static {v0, v2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 240
    .line 241
    .line 242
    return-void
.end method
