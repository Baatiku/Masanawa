.class public final Lcom/opay/team/newhome/finance/FinInvestmentAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "FinInvestmentAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/opay/team/newhome/finance/InvestmentItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\r\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u001f\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ-\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J#\u0010\u0019\u001a\u00020\u00162\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/opay/team/newhome/finance/FinInvestmentAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lcom/opay/team/newhome/finance/InvestmentItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "Landroid/content/Context;",
        "context",
        "Lcom/opay/team/newhome/viewmodel/FinanceViewModel;",
        "viewModel",
        "<init>",
        "(Landroid/content/Context;Lcom/opay/team/newhome/viewmodel/FinanceViewModel;)V",
        "helper",
        "item",
        "",
        "o",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/finance/InvestmentItem;)V",
        "n",
        "m",
        "",
        "amountStr",
        "",
        "changeSize",
        "symbol",
        "",
        "p",
        "(Ljava/lang/String;ZZ)Ljava/lang/CharSequence;",
        "k",
        "(Ljava/lang/String;Z)Ljava/lang/CharSequence;",
        "a",
        "Landroid/content/Context;",
        "b",
        "Lcom/opay/team/newhome/viewmodel/FinanceViewModel;",
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
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/opay/team/newhome/viewmodel/FinanceViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/opay/team/newhome/viewmodel/FinanceViewModel;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/viewmodel/FinanceViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "viewModel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/opay/team/newhome/finance/FinInvestmentAdapter;->a:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/opay/team/newhome/finance/FinInvestmentAdapter;->b:Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    sget p2, Lteam/opay/pay/R$layout;->osdk_item_fin_investment_init:I

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    sget p2, Lteam/opay/pay/R$layout;->osdk_item_fin_investment_title:I

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x2

    .line 32
    sget p2, Lteam/opay/pay/R$layout;->osdk_item_fin_investment_divider:I

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x3

    .line 38
    sget p2, Lteam/opay/pay/R$layout;->osdk_item_fin_investment_data:I

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x4

    .line 44
    sget p2, Lteam/opay/pay/R$layout;->osdk_item_fin_investment_expand:I

    .line 45
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static synthetic l(Lcom/opay/team/newhome/finance/FinInvestmentAdapter;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/finance/FinInvestmentAdapter;->k(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic q(Lcom/opay/team/newhome/finance/FinInvestmentAdapter;Ljava/lang/String;ZZILjava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/team/newhome/finance/FinInvestmentAdapter;->p(Ljava/lang/String;ZZ)Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/opay/team/newhome/finance/InvestmentItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/finance/FinInvestmentAdapter;->o(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/finance/InvestmentItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k(Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 10
    .line 11
    :cond_1
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_2

    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    move-object v1, p0

    .line 23
    move-object v2, p1

    .line 24
    move v4, p2

    .line 25
    invoke-static/range {v1 .. v6}, Lcom/opay/team/newhome/finance/FinInvestmentAdapter;->q(Lcom/opay/team/newhome/finance/FinInvestmentAdapter;Ljava/lang/String;ZZILjava/lang/Object;)Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const-string p1, ""

    .line 31
    .line 32
    :goto_0
    return-object p1
.end method

.method public final m(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/finance/InvestmentItem;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/opay/team/newhome/finance/InvestmentItem;->a()Lcom/opay/team/newhome/bean/FinanceDetailData;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget v0, Lteam/opay/pay/R$id;->investmentTitle:I

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/FinanceDetailData;->title()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 15
    .line 16
    .line 17
    sget v0, Lteam/opay/pay/R$id;->investmentValue:I

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/FinanceDetailData;->getSavingAmount()Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v6, 0x6

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    move-object v2, p0

    .line 32
    invoke-static/range {v2 .. v7}, Lcom/opay/team/newhome/finance/FinInvestmentAdapter;->q(Lcom/opay/team/newhome/finance/FinInvestmentAdapter;Ljava/lang/String;ZZILjava/lang/Object;)Ljava/lang/CharSequence;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 37
    .line 38
    .line 39
    sget v0, Lteam/opay/pay/R$id;->investmentAddValue:I

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/FinanceDetailData;->getTodayInterest()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const/4 v1, 0x2

    .line 46
    const/4 v2, 0x0

    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-static {p0, p2, v3, v1, v2}, Lcom/opay/team/newhome/finance/FinInvestmentAdapter;->l(Lcom/opay/team/newhome/finance/FinInvestmentAdapter;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/CharSequence;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final n(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/finance/InvestmentItem;)V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$id;->investItemTitle:I

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/opay/team/newhome/finance/InvestmentItem;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const-string p2, ""

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public o(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/finance/InvestmentItem;)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/finance/InvestmentItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p2}, Lcom/opay/team/newhome/finance/InvestmentItem;->getItemType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/finance/FinInvestmentAdapter;->m(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/finance/InvestmentItem;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/finance/FinInvestmentAdapter;->n(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/finance/InvestmentItem;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public final p(Ljava/lang/String;ZZ)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/finance/FinInvestmentAdapter;->b:Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->Z()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_6

    .line 8
    .line 9
    iget-object v0, p0, Lcom/opay/team/newhome/finance/FinInvestmentAdapter;->b:Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->U()Lteam/opay/core/settings/SettingsStorage;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->u()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    if-eqz p1, :cond_5

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const-string v0, "null"

    .line 32
    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    if-eqz p2, :cond_3

    .line 41
    .line 42
    sget-object p2, Lnyc;->a:Lnyc;

    .line 43
    .line 44
    invoke-static {p1}, Ljmf;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/16 p3, 0x10

    .line 49
    .line 50
    invoke-virtual {p2, p1, p3}, Lnyc;->h(Ljava/lang/String;I)Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    if-eqz p3, :cond_4

    .line 56
    .line 57
    const-string p2, "+"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    const-string p2, ""

    .line 61
    .line 62
    :goto_0
    invoke-static {p1}, Ljmf;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance p3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    :goto_1
    const-string p1, "--.--"

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/opay/team/newhome/finance/FinInvestmentAdapter;->a:Landroid/content/Context;

    .line 86
    .line 87
    sget p2, Lteam/opay/pay/R$string;->omain_amount_place_holder:I

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :goto_3
    return-object p1
.end method
