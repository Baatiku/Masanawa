.class public final Lteam/opay/pay/customerservice/OCustomerServiceHeadAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "OCustomerServiceHeadAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/opay/team/newhome/bean/NewBusinessData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B#\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/pay/customerservice/OCustomerServiceHeadAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/opay/team/newhome/bean/NewBusinessData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "",
        "fromHome",
        "Lkotlin/Function0;",
        "",
        "callback",
        "<init>",
        "(ZLkotlin/jvm/functions/Function0;)V",
        "helper",
        "data",
        "l",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/bean/NewBusinessData;)V",
        "a",
        "Z",
        "b",
        "Lkotlin/jvm/functions/Function0;",
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
.field public final a:Z

.field public final b:Lkotlin/jvm/functions/Function0;
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
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v0}, Lteam/opay/pay/customerservice/OCustomerServiceHeadAdapter;-><init>(ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget v0, Lteam/opay/pay/R$layout;->item_customer_service:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    iput-boolean p1, p0, Lteam/opay/pay/customerservice/OCustomerServiceHeadAdapter;->a:Z

    iput-object p2, p0, Lteam/opay/pay/customerservice/OCustomerServiceHeadAdapter;->b:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2}, Lteam/opay/pay/customerservice/OCustomerServiceHeadAdapter;-><init>(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/customerservice/OCustomerServiceHeadAdapter;Lcom/opay/team/newhome/bean/NewBusinessData;Lcom/chad/library/adapter/base/BaseViewHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/customerservice/OCustomerServiceHeadAdapter;->m(Lteam/opay/pay/customerservice/OCustomerServiceHeadAdapter;Lcom/opay/team/newhome/bean/NewBusinessData;Lcom/chad/library/adapter/base/BaseViewHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final m(Lteam/opay/pay/customerservice/OCustomerServiceHeadAdapter;Lcom/opay/team/newhome/bean/NewBusinessData;Lcom/chad/library/adapter/base/BaseViewHolder;)Lkotlin/Unit;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-boolean v2, p0, Lteam/opay/pay/customerservice/OCustomerServiceHeadAdapter;->a:Z

    .line 4
    .line 5
    const-string v3, "self_service_ID"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    sget-object v2, Lx7b;->a:Lx7b;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getId()Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v5, v4

    .line 20
    :goto_0
    invoke-static {v3, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string v5, "position"

    .line 33
    .line 34
    invoke-static {v5, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const/4 v5, 0x2

    .line 39
    new-array v5, v5, [Lkotlin/Pair;

    .line 40
    .line 41
    aput-object v3, v5, v1

    .line 42
    .line 43
    aput-object p2, v5, v0

    .line 44
    .line 45
    const-string p2, "service_center_hotline_self_service_click"

    .line 46
    .line 47
    invoke-virtual {v2, p2, v5}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    sget-object p2, Lx7b;->a:Lx7b;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getId()Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move-object v2, v4

    .line 61
    :goto_1
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    new-array v0, v0, [Lkotlin/Pair;

    .line 66
    .line 67
    aput-object v2, v0, v1

    .line 68
    .line 69
    const-string v1, "service_center_hotline_self_service_more_click"

    .line 70
    .line 71
    invoke-virtual {p2, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 72
    .line 73
    .line 74
    :goto_2
    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    const-string v0, "mContext"

    .line 77
    .line 78
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAction()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    :cond_3
    if-nez v4, :cond_4

    .line 88
    .line 89
    const-string v4, ""

    .line 90
    .line 91
    :cond_4
    invoke-static {p2, v4}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lteam/opay/pay/customerservice/OCustomerServiceHeadAdapter;->b:Lkotlin/jvm/functions/Function0;

    .line 95
    .line 96
    if-eqz p0, :cond_5

    .line 97
    .line 98
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 102
    .line 103
    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/customerservice/OCustomerServiceHeadAdapter;->l(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/bean/NewBusinessData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/bean/NewBusinessData;)V
    .locals 13
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/bean/NewBusinessData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "helper"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-boolean v1, p0, Lteam/opay/pay/customerservice/OCustomerServiceHeadAdapter;->a:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    sget-object v1, Lx7b;->a:Lx7b;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/NewBusinessData;->getId()Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v3, v2

    .line 22
    :goto_0
    const-string v4, "self_service_ID"

    .line 23
    .line 24
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const-string v5, "position"

    .line 37
    .line 38
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const/4 v5, 0x2

    .line 43
    new-array v5, v5, [Lkotlin/Pair;

    .line 44
    .line 45
    aput-object v3, v5, v0

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    aput-object v4, v5, v3

    .line 49
    .line 50
    const-string v3, "service_center_hotline_self_service_show"

    .line 51
    .line 52
    invoke-virtual {v1, v3, v5}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    sget v1, Lteam/opay/pay/R$id;->name:I

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroid/widget/TextView;

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    if-eqz p2, :cond_2

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/NewBusinessData;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move-object v3, v2

    .line 73
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    sget v1, Lteam/opay/pay/R$id;->img:I

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lcom/opay/team/newhome/home/ImageLottieView;

    .line 83
    .line 84
    if-eqz p2, :cond_4

    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/NewBusinessData;->getImageIconUrl()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    move-object v3, v2

    .line 92
    :goto_2
    const-string v12, ""

    .line 93
    .line 94
    if-nez v3, :cond_5

    .line 95
    .line 96
    move-object v4, v12

    .line 97
    goto :goto_3

    .line 98
    :cond_5
    move-object v4, v3

    .line 99
    :goto_3
    sget v5, Lteam/opay/pay/R$mipmap;->osdk_logo_place_holder:I

    .line 100
    .line 101
    const/16 v10, 0x3c

    .line 102
    .line 103
    const/4 v11, 0x0

    .line 104
    const/4 v6, 0x0

    .line 105
    const/4 v7, 0x0

    .line 106
    const/4 v8, 0x0

    .line 107
    const/4 v9, 0x0

    .line 108
    move-object v3, v1

    .line 109
    invoke-static/range {v3 .. v11}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    sget-object v3, Lc03;->a:Lc03;

    .line 113
    .line 114
    invoke-virtual {v3}, Lc03;->c()Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_6

    .line 119
    .line 120
    sget v3, Lteam/opay/pay/R$color;->osdk_home_first_tint:I

    .line 121
    .line 122
    invoke-virtual {v1, v3}, Lcom/opay/team/newhome/home/ImageLottieView;->setTintColor(I)V

    .line 123
    .line 124
    .line 125
    :cond_6
    sget v1, Lteam/opay/pay/R$id;->hot_img:I

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Lcom/opay/team/newhome/home/ImageLottieView;

    .line 132
    .line 133
    if-eqz p2, :cond_7

    .line 134
    .line 135
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/NewBusinessData;->showSuper()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    :cond_7
    if-eqz v1, :cond_8

    .line 140
    .line 141
    invoke-static {v1, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 142
    .line 143
    .line 144
    :cond_8
    if-eqz v0, :cond_c

    .line 145
    .line 146
    if-eqz v1, :cond_c

    .line 147
    .line 148
    if-eqz p2, :cond_9

    .line 149
    .line 150
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/NewBusinessData;->getImageSuperscriptUrl()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    goto :goto_4

    .line 155
    :cond_9
    move-object v0, v2

    .line 156
    :goto_4
    if-nez v0, :cond_a

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_a
    move-object v12, v0

    .line 160
    :goto_5
    if-eqz p2, :cond_b

    .line 161
    .line 162
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/NewBusinessData;->getSuperscriptAd()Lteam/opay/odialog/net/AdDataItem;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    :cond_b
    invoke-virtual {v1, v12, v2}, Lcom/opay/team/newhome/home/ImageLottieView;->t(Ljava/lang/String;Lteam/opay/odialog/net/AdDataItem;)V

    .line 167
    .line 168
    .line 169
    :cond_c
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 170
    .line 171
    const-string v1, "itemView"

    .line 172
    .line 173
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    new-instance v1, Lu1a;

    .line 177
    .line 178
    invoke-direct {v1, p0, p2, p1}, Lu1a;-><init>(Lteam/opay/pay/customerservice/OCustomerServiceHeadAdapter;Lcom/opay/team/newhome/bean/NewBusinessData;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method
