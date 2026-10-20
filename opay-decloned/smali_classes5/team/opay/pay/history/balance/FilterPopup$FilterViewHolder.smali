.class final Lteam/opay/pay/history/balance/FilterPopup$FilterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FilterWindow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/history/balance/FilterPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilterViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J+\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/pay/history/balance/FilterPopup$FilterViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lt4g;",
        "viewBinding",
        "<init>",
        "(Lt4g;)V",
        "",
        "position",
        "Lteam/opay/pay/history/balance/CategoryItem;",
        "item",
        "Landroidx/lifecycle/MutableLiveData;",
        "observableSelection",
        "",
        "b",
        "(ILteam/opay/pay/history/balance/CategoryItem;Landroidx/lifecycle/MutableLiveData;)V",
        "a",
        "Lt4g;",
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
.field public final a:Lt4g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt4g;)V
    .locals 1
    .param p1    # Lt4g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "viewBinding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lt4g;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lteam/opay/pay/history/balance/FilterPopup$FilterViewHolder;->a:Lt4g;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a(Landroidx/lifecycle/MutableLiveData;Lteam/opay/pay/history/balance/CategoryItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/history/balance/FilterPopup$FilterViewHolder;->c(Landroidx/lifecycle/MutableLiveData;Lteam/opay/pay/history/balance/CategoryItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final c(Landroidx/lifecycle/MutableLiveData;Lteam/opay/pay/history/balance/CategoryItem;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/history/balance/FilterPopup;->h:Lteam/opay/pay/history/balance/FilterPopup$Companion;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-static {p2}, Lteam/opay/pay/history/balance/FilterPopup;->b(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final b(ILteam/opay/pay/history/balance/CategoryItem;Landroidx/lifecycle/MutableLiveData;)V
    .locals 5
    .param p2    # Lteam/opay/pay/history/balance/CategoryItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lteam/opay/pay/history/balance/CategoryItem;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/history/balance/CategoryItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "observableSelection"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lteam/opay/pay/history/balance/CategoryItem;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/history/balance/FilterPopup$FilterViewHolder;->a:Lt4g;

    .line 25
    .line 26
    iget-object v0, v0, Lt4g;->b:Landroid/widget/ImageView;

    .line 27
    .line 28
    const-string v1, "walletFilterCategoryItemIcon"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lteam/opay/pay/history/balance/CategoryItem;->b()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x2

    .line 42
    const/4 v3, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-static {v0, v1, v4, v2, v3}, Lme7;->s(Landroid/widget/ImageView;Landroid/net/Uri;ZILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lteam/opay/pay/history/balance/CategoryItem;->a()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/history/balance/FilterPopup$FilterViewHolder;->a:Lt4g;

    .line 62
    .line 63
    iget-object v0, v0, Lt4g;->b:Landroid/widget/ImageView;

    .line 64
    .line 65
    sget v1, Lteam/opay/pay/R$drawable;->ic_misc_transaction:I

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    :goto_1
    iget-object v0, p0, Lteam/opay/pay/history/balance/FilterPopup$FilterViewHolder;->a:Lt4g;

    .line 72
    .line 73
    iget-object v0, v0, Lt4g;->b:Landroid/widget/ImageView;

    .line 74
    .line 75
    sget v1, Lteam/opay/pay/R$drawable;->ic_wallet_filter_all_categories:I

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    .line 79
    .line 80
    :goto_2
    iget-object v0, p0, Lteam/opay/pay/history/balance/FilterPopup$FilterViewHolder;->a:Lt4g;

    .line 81
    .line 82
    iget-object v0, v0, Lt4g;->c:Landroid/widget/TextView;

    .line 83
    .line 84
    invoke-virtual {p2}, Lteam/opay/pay/history/balance/CategoryItem;->c()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 92
    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 101
    .line 102
    new-instance v1, Lteam/opay/pay/history/balance/a;

    .line 103
    .line 104
    invoke-direct {v1, p3, p2}, Lteam/opay/pay/history/balance/a;-><init>(Landroidx/lifecycle/MutableLiveData;Lteam/opay/pay/history/balance/CategoryItem;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    iget-object p2, p0, Lteam/opay/pay/history/balance/FilterPopup$FilterViewHolder;->a:Lt4g;

    .line 111
    .line 112
    iget-object p2, p2, Lt4g;->c:Landroid/widget/TextView;

    .line 113
    .line 114
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 115
    .line 116
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-static {}, Lteam/opay/pay/history/balance/FilterPopup;->a()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-ne p1, v0, :cond_4

    .line 125
    .line 126
    sget p1, Lteam/opay/pay/R$color;->mint:I

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_4
    sget p1, Lteam/opay/pay/R$color;->wallet_filter_icon_tint:I

    .line 130
    .line 131
    :goto_3
    invoke-static {p3, p1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    .line 137
    .line 138
    return-void
.end method
