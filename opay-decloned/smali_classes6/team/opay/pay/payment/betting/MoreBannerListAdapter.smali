.class public final Lteam/opay/pay/payment/betting/MoreBannerListAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "MoreBannerListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0011\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u000f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000cJ\u0017\u0010\u0010\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lteam/opay/pay/payment/betting/MoreBannerListAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "Lteam/opay/pay/ad/AdReachHelp;",
        "adReachHelp",
        "<init>",
        "(Lteam/opay/pay/ad/AdReachHelp;)V",
        "vh",
        "item",
        "",
        "m",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;)V",
        "holder",
        "bean",
        "k",
        "l",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;)V",
        "a",
        "Lteam/opay/pay/ad/AdReachHelp;",
        "Lteam/opay/pay/ad/AdAnalyticsEventReport;",
        "b",
        "Lteam/opay/pay/ad/AdAnalyticsEventReport;",
        "adAnalyticsEvent",
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
.field public final a:Lteam/opay/pay/ad/AdReachHelp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Lteam/opay/pay/ad/AdAnalyticsEventReport;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/pay/ad/AdReachHelp;)V
    .locals 1
    .param p1    # Lteam/opay/pay/ad/AdReachHelp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lteam/opay/pay/payment/betting/MoreBannerListAdapter;->a:Lteam/opay/pay/ad/AdReachHelp;

    .line 6
    .line 7
    new-instance v0, Lteam/opay/pay/ad/AdAnalyticsEventReport;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lteam/opay/pay/ad/AdAnalyticsEventReport;-><init>(Lteam/opay/pay/ad/AdReachHelp;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lteam/opay/pay/payment/betting/MoreBannerListAdapter;->b:Lteam/opay/pay/ad/AdAnalyticsEventReport;

    .line 13
    .line 14
    const/16 p1, 0xb

    .line 15
    .line 16
    sget v0, Lteam/opay/pay/R$layout;->osdk_more_banner_item:I

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 19
    .line 20
    .line 21
    const/16 p1, 0xc

    .line 22
    .line 23
    sget v0, Lteam/opay/pay/R$layout;->osdk_more_banner_bottom_more:I

    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/betting/MoreBannerListAdapter;->m(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;)V
    .locals 10

    .line 1
    sget v0, Lteam/opay/pay/R$id;->home_banner_go:I

    .line 2
    .line 3
    filled-new-array {v0}, [I

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 8
    .line 9
    .line 10
    sget v1, Lteam/opay/pay/R$id;->home_banner_title:I

    .line 11
    .line 12
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;->getTitle()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lteam/opay/pay/payment/betting/MoreBannerListAdapter;->b:Lteam/opay/pay/ad/AdAnalyticsEventReport;

    .line 20
    .line 21
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;->getId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;->getAdpCode()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;->getCallbackShow()Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;->getAction()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    const-string v6, "More_event_ads"

    .line 40
    .line 41
    invoke-virtual/range {v3 .. v9}, Lteam/opay/pay/ad/AdAnalyticsEventReport;->d(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;->getActionTitle()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v1, 0x0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 60
    :goto_1
    xor-int/lit8 v2, v1, 0x1

    .line 61
    .line 62
    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 63
    .line 64
    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;->getActionTitle()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 72
    .line 73
    .line 74
    :cond_2
    sget v0, Lteam/opay/pay/R$id;->home_banner_img:I

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    move-object v1, v0

    .line 81
    check-cast v1, Lcom/opay/team/newhome/home/ImageLottieView;

    .line 82
    .line 83
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;->getImageIconUrl()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const/16 v0, 0xc

    .line 88
    .line 89
    invoke-static {v0}, Lkmf;->g(I)I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    const/16 v8, 0x3a

    .line 94
    .line 95
    const/4 v9, 0x0

    .line 96
    const/4 v3, 0x0

    .line 97
    const/4 v5, 0x0

    .line 98
    const/4 v6, 0x0

    .line 99
    const/4 v7, 0x0

    .line 100
    invoke-static/range {v1 .. v9}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    sget v0, Lteam/opay/pay/R$id;->home_banner_content:I

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 110
    .line 111
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;->getRichDesc()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_3

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;->getRichDesc()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-static {p2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    goto :goto_3

    .line 133
    :cond_4
    :goto_2
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;->getDesc()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public final l(Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public m(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "vh"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0xb

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/16 p2, 0xc

    .line 17
    .line 18
    if-eq v0, p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/MoreBannerListAdapter;->l(Lcom/chad/library/adapter/base/BaseViewHolder;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-eqz p2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/betting/MoreBannerListAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/betting/MoreBannerListAdapterBean;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    return-void
.end method
