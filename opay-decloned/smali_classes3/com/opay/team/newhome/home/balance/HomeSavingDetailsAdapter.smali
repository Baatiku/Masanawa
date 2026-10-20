.class public final Lcom/opay/team/newhome/home/balance/HomeSavingDetailsAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "HomeSavingDetailsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/opay/team/newhome/bean/FinanceDetailData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001b\u0010\u000f\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/balance/HomeSavingDetailsAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/opay/team/newhome/bean/FinanceDetailData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "<init>",
        "(Lteam/opay/core/settings/SettingsStorage;)V",
        "helper",
        "item",
        "",
        "k",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/bean/FinanceDetailData;)V",
        "",
        "amountValue",
        "l",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "a",
        "Lteam/opay/core/settings/SettingsStorage;",
        "getSettingsStorage",
        "()Lteam/opay/core/settings/SettingsStorage;",
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
.field public final a:Lteam/opay/core/settings/SettingsStorage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/settings/SettingsStorage;)V
    .locals 1
    .param p1    # Lteam/opay/core/settings/SettingsStorage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "settingsStorage"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lteam/opay/pay/R$layout;->item_saving_details:I

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsAdapter;->a:Lteam/opay/core/settings/SettingsStorage;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/opay/team/newhome/bean/FinanceDetailData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/bean/FinanceDetailData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/bean/FinanceDetailData;)V
    .locals 5
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/bean/FinanceDetailData;
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
    if-eqz p2, :cond_1

    .line 7
    .line 8
    sget v0, Lteam/opay/pay/R$id;->icon:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "getView(...)"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast v0, Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/FinanceDetailData;->getPeriodImgUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x2

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static {v0, v1, v2, v3, v4}, Lkzf;->k(Landroid/widget/ImageView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget v0, Lteam/opay/pay/R$id;->tv_title:I

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/FinanceDetailData;->getTitle()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/opay/team/newhome/finance/FinanceUtil;->a:Lcom/opay/team/newhome/finance/FinanceUtil$Companion;

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/FinanceDetailData;->getSavingAmount()Ljava/lang/Double;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    :cond_0
    invoke-virtual {v0, v4}, Lcom/opay/team/newhome/finance/FinanceUtil$Companion;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    sget v0, Lteam/opay/pay/R$id;->tv_amount:I

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/FinanceDetailData;->getSavingAmount()Ljava/lang/Double;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p0, p2}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsAdapter;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public final l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsAdapter;->a:Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->u()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget p1, Lteam/opay/pay/R$string;->omain_pay_balance_place_holder:I

    .line 10
    .line 11
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/opay/team/newhome/finance/FinanceUtil;->a:Lcom/opay/team/newhome/finance/FinanceUtil$Companion;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/opay/team/newhome/finance/FinanceUtil$Companion;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    return-object p1
.end method
