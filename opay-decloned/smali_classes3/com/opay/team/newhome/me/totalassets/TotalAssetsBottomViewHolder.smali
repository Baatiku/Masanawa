.class public final Lcom/opay/team/newhome/me/totalassets/TotalAssetsBottomViewHolder;
.super Lcom/opay/team/newhome/me/totalassets/TotalAssetsViewHolder;
.source "TotalAssetsBottomViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u001a\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/opay/team/newhome/me/totalassets/TotalAssetsBottomViewHolder;",
        "Lcom/opay/team/newhome/me/totalassets/TotalAssetsViewHolder;",
        "Laia;",
        "binding",
        "<init>",
        "(Laia;)V",
        "Lteam/opay/core/android/money/MoneyAmount;",
        "amount",
        "",
        "d",
        "(Lteam/opay/core/android/money/MoneyAmount;)Ljava/lang/String;",
        "",
        "position",
        "Lcom/opay/team/newhome/bean/TotalAssetsItemData;",
        "data",
        "",
        "a",
        "(ILcom/opay/team/newhome/bean/TotalAssetsItemData;)V",
        "Laia;",
        "getBinding",
        "()Laia;",
        "Lteam/opay/core/settings/SettingsStorage;",
        "b",
        "Lid8;",
        "e",
        "()Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
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
.field public final a:Laia;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laia;)V
    .locals 2
    .param p1    # Laia;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Laia;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "getRoot(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsBottomViewHolder;->a:Laia;

    .line 19
    .line 20
    new-instance p1, Lvpe;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lvpe;-><init>(Lcom/opay/team/newhome/me/totalassets/TotalAssetsBottomViewHolder;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsBottomViewHolder;->b:Lid8;

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic b(Lcom/opay/team/newhome/me/totalassets/TotalAssetsBottomViewHolder;)Lteam/opay/core/settings/SettingsStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsBottomViewHolder;->g(Lcom/opay/team/newhome/me/totalassets/TotalAssetsBottomViewHolder;)Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Landroid/app/Activity;Lcom/opay/team/newhome/bean/TotalAssetsItemData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsBottomViewHolder;->f(Landroid/app/Activity;Lcom/opay/team/newhome/bean/TotalAssetsItemData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d(Lteam/opay/core/android/money/MoneyAmount;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget v0, Lteam/opay/pay/R$string;->account_balance_unknown:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "getString(...)"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    sget-object v0, Lbd9;->a:Lbd9;

    .line 22
    .line 23
    sget-object v1, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 24
    .line 25
    invoke-virtual {v0, p1, v1}, Lbd9;->k(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method private final e()Lteam/opay/core/settings/SettingsStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsBottomViewHolder;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/settings/SettingsStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final f(Landroid/app/Activity;Lcom/opay/team/newhome/bean/TotalAssetsItemData;)Lkotlin/Unit;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->b()Lcom/opay/team/newhome/bean/AccountBottomListInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/4 v10, 0x0

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/opay/team/newhome/bean/AccountBottomListInfo;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    move-object v3, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v3, v10

    .line 18
    :goto_0
    new-array v7, v0, [Lkotlin/Pair;

    .line 19
    .line 20
    const/16 v8, 0x1c

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    move-object v2, p0

    .line 27
    invoke-static/range {v1 .. v9}, Lcom/opay/team/home/a;->z(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lx7b;->a:Lx7b;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->b()Lcom/opay/team/newhome/bean/AccountBottomListInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/AccountBottomListInfo;->d()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 45
    .line 46
    const-string v3, "US"

    .line 47
    .line 48
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "toLowerCase(...)"

    .line 56
    .line 57
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move-object v1, v10

    .line 62
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v3, "assets_"

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, "_click"

    .line 76
    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    new-instance v2, Lkotlin/Pair;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->b()Lcom/opay/team/newhome/bean/AccountBottomListInfo;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/AccountBottomListInfo;->b()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    :cond_2
    const-string p1, "url"

    .line 97
    .line 98
    invoke-direct {v2, p1, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    const/4 p1, 0x1

    .line 102
    new-array p1, p1, [Lkotlin/Pair;

    .line 103
    .line 104
    aput-object v2, p1, v0

    .line 105
    .line 106
    invoke-virtual {p0, v1, p1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 107
    .line 108
    .line 109
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 110
    .line 111
    return-object p0
.end method

.method public static final g(Lcom/opay/team/newhome/me/totalassets/TotalAssetsBottomViewHolder;)Lteam/opay/core/settings/SettingsStorage;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v1, "getContext(...)"

    .line 10
    .line 11
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method


# virtual methods
.method public a(ILcom/opay/team/newhome/bean/TotalAssetsItemData;)V
    .locals 3
    .param p2    # Lcom/opay/team/newhome/bean/TotalAssetsItemData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "data"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->b()Lcom/opay/team/newhome/bean/AccountBottomListInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget v0, Lteam/opay/pay/R$drawable;->omain_bg_white_radius_8:I

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/16 v0, 0x10

    .line 24
    .line 25
    invoke-static {v0}, Ljmf;->d(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v0}, Ljmf;->d(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static {p1, v1, v2, v0, v2}, Lteam/opay/core/android/ViewKt;->r(Landroid/view/View;IIII)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsBottomViewHolder;->a:Laia;

    .line 38
    .line 39
    iget-object v0, v0, Laia;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->b()Lcom/opay/team/newhome/bean/AccountBottomListInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/AccountBottomListInfo;->c()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget v2, Lteam/opay/pay/R$string;->omain_cashback_title:I

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "getString(...)"

    .line 67
    .line 68
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 75
    .line 76
    const-string v1, "itemView"

    .line 77
    .line 78
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Ljzf;->a(Landroid/view/View;)Landroid/app/Activity;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    new-instance v1, Lupe;

    .line 88
    .line 89
    invoke-direct {v1, v0, p2}, Lupe;-><init>(Landroid/app/Activity;Lcom/opay/team/newhome/bean/TotalAssetsItemData;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p1, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-direct {p0}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsBottomViewHolder;->e()Lteam/opay/core/settings/SettingsStorage;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->u()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    sget p2, Lteam/opay/pay/R$string;->omain_pay_balance_place_holder:I

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->b()Lcom/opay/team/newhome/bean/AccountBottomListInfo;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-eqz p1, :cond_5

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/AccountBottomListInfo;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    goto :goto_1

    .line 136
    :cond_5
    const/4 p1, 0x0

    .line 137
    :goto_1
    sget-object p2, Lnyc;->a:Lnyc;

    .line 138
    .line 139
    invoke-direct {p0, p1}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsBottomViewHolder;->d(Lteam/opay/core/android/money/MoneyAmount;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const/16 v0, 0x16

    .line 144
    .line 145
    invoke-virtual {p2, p1, v0}, Lnyc;->h(Ljava/lang/String;I)Ljava/lang/CharSequence;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    :goto_2
    iget-object p2, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsBottomViewHolder;->a:Laia;

    .line 150
    .line 151
    iget-object p2, p2, Laia;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 152
    .line 153
    if-eqz p2, :cond_6

    .line 154
    .line 155
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    :cond_6
    return-void
.end method
