.class public final Lteam/opay/pay/payment/airtimeMobileData/DataBundlesAdapter;
.super Lteam/opay/pay/payment/airtimeMobileData/AbsDataBundlesAdapter;
.source "DataBundlesAdapter.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/payment/airtimeMobileData/AbsDataBundlesAdapter<",
        "Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J)\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lteam/opay/pay/payment/airtimeMobileData/DataBundlesAdapter;",
        "Lteam/opay/pay/payment/airtimeMobileData/AbsDataBundlesAdapter;",
        "Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;",
        "<init>",
        "()V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "y",
        "(Landroid/view/ViewGroup;I)Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;",
        "getItemCount",
        "()I",
        "holder",
        "position",
        "",
        "v",
        "(Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;I)V",
        "",
        "price",
        "",
        "backGroundColor",
        "u",
        "(Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;FLjava/lang/String;)V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/airtimeMobileData/AbsDataBundlesAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s(Lteam/opay/pay/payment/airtimeMobileData/DataBundlesAdapter;Lteam/opay/pay/api/BundleInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/airtimeMobileData/DataBundlesAdapter;->w(Lteam/opay/pay/payment/airtimeMobileData/DataBundlesAdapter;Lteam/opay/pay/api/BundleInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lteam/opay/pay/payment/airtimeMobileData/DataBundlesAdapter;Lteam/opay/pay/api/BundleInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/airtimeMobileData/DataBundlesAdapter;->x(Lteam/opay/pay/payment/airtimeMobileData/DataBundlesAdapter;Lteam/opay/pay/api/BundleInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final w(Lteam/opay/pay/payment/airtimeMobileData/DataBundlesAdapter;Lteam/opay/pay/api/BundleInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/AbsDataBundlesAdapter;->m()Lkotlin/jvm/functions/Function1;

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

.method public static final x(Lteam/opay/pay/payment/airtimeMobileData/DataBundlesAdapter;Lteam/opay/pay/api/BundleInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/AbsDataBundlesAdapter;->l()Lkotlin/jvm/functions/Function1;

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
.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/AbsDataBundlesAdapter;->k()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/airtimeMobileData/DataBundlesAdapter;->v(Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/airtimeMobileData/DataBundlesAdapter;->y(Landroid/view/ViewGroup;I)Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final u(Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;FLjava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->d()Lxoe;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lxoe;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    const-string v1, "llContent"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/AbsDataBundlesAdapter;->n()Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "vBottomTextBg"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/AbsDataBundlesAdapter;->n()Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 33
    .line 34
    :goto_0
    cmpl-float p2, p2, v1

    .line 35
    .line 36
    if-ltz p2, :cond_1

    .line 37
    .line 38
    sget p2, Lteam/opay/pay/R$drawable;->topup_betting_bundle_hight:I

    .line 39
    .line 40
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->d()Lxoe;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p1, p1, Lxoe;->l:Landroid/view/View;

    .line 48
    .line 49
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p2, 0x1

    .line 53
    invoke-static {p2}, Lkmf;->g(I)I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    invoke-static {p2}, Lkmf;->g(I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {p2}, Lkmf;->g(I)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-static {p1, p3, v3, v0, p2}, Lteam/opay/core/android/ViewKt;->r(Landroid/view/View;IIII)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    sget-object p2, Lc03;->a:Lc03;

    .line 70
    .line 71
    if-nez p3, :cond_2

    .line 72
    .line 73
    const-string p3, ""

    .line 74
    .line 75
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    sget v4, Lteam/opay/pay/R$color;->osdk_color_F8F8FB:I

    .line 80
    .line 81
    invoke-static {v1, v4}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p2, p3, v1}, Lc03;->e(Ljava/lang/String;Ljava/lang/Integer;)I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    sget v1, Lteam/opay/pay/R$drawable;->osdk_ripple_white_8:I

    .line 98
    .line 99
    invoke-static {p3, v1}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.RippleDrawable"

    .line 104
    .line 105
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    check-cast p3, Landroid/graphics/drawable/RippleDrawable;

    .line 109
    .line 110
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->d()Lxoe;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object p1, p1, Lxoe;->l:Landroid/view/View;

    .line 121
    .line 122
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {p1, v3, v3, v3, v3}, Lteam/opay/core/android/ViewKt;->r(Landroid/view/View;IIII)V

    .line 126
    .line 127
    .line 128
    :goto_1
    return-void
.end method

.method public v(Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;I)V
    .locals 4
    .param p1    # Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;
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
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/AbsDataBundlesAdapter;->k()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lteam/opay/pay/api/BundleInfo;

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->b(Lteam/opay/pay/api/BundleInfo;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lteam/opay/pay/api/BundleInfo;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_0
    invoke-virtual {p2}, Lteam/opay/pay/api/BundleInfo;->getBackgroundColor()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p0, p1, v0, v1}, Lteam/opay/pay/payment/airtimeMobileData/DataBundlesAdapter;->u(Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;FLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 48
    .line 49
    const-string v1, "itemView"

    .line 50
    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Ln03;

    .line 55
    .line 56
    invoke-direct {v1, p0, p2}, Ln03;-><init>(Lteam/opay/pay/payment/airtimeMobileData/DataBundlesAdapter;Lteam/opay/pay/api/BundleInfo;)V

    .line 57
    .line 58
    .line 59
    const-wide/16 v2, 0x320

    .line 60
    .line 61
    invoke-static {v0, v2, v3, v1}, Lfe1;->a(Landroid/view/View;JLkotlin/jvm/functions/Function0;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->d()Lxoe;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object p1, p1, Lxoe;->l:Landroid/view/View;

    .line 69
    .line 70
    const-string v0, "vBottomTextBg"

    .line 71
    .line 72
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lo03;

    .line 76
    .line 77
    invoke-direct {v0, p0, p2}, Lo03;-><init>(Lteam/opay/pay/payment/airtimeMobileData/DataBundlesAdapter;Lteam/opay/pay/api/BundleInfo;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v2, v3, v0}, Lfe1;->a(Landroid/view/View;JLkotlin/jvm/functions/Function0;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public y(Landroid/view/ViewGroup;I)Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;
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
    sget p2, Lteam/opay/pay/R$layout;->topup_data_bundle_item:I

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {p1, p2, v2, v0, v1}, Lozf;->b(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance p2, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;

    .line 16
    .line 17
    invoke-static {p1}, Lxoe;->bind(Landroid/view/View;)Lxoe;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "bind(...)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p1}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;-><init>(Lxoe;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method
