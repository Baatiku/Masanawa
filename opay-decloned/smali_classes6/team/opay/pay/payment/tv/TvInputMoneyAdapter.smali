.class public final Lteam/opay/pay/payment/tv/TvInputMoneyAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "TvInputMoneyAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0011\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lteam/opay/pay/payment/tv/TvInputMoneyAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "helper",
        "item",
        "",
        "l",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/GraphQL$CurrencyAmount;)V",
        "",
        "pos",
        "o",
        "(I)V",
        "a",
        "I",
        "mPos",
        "Ljava/text/DecimalFormat;",
        "b",
        "Lid8;",
        "n",
        "()Ljava/text/DecimalFormat;",
        "decimalFormat",
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
.field public a:I

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->osdk_tv_input_money_item:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lteam/opay/pay/payment/tv/TvInputMoneyAdapter;->a:I

    .line 8
    .line 9
    new-instance v0, Lwdf;

    .line 10
    .line 11
    invoke-direct {v0}, Lwdf;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lteam/opay/pay/payment/tv/TvInputMoneyAdapter;->b:Lid8;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic k()Ljava/text/DecimalFormat;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/payment/tv/TvInputMoneyAdapter;->m()Ljava/text/DecimalFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final m()Ljava/text/DecimalFormat;
    .locals 1

    .line 1
    sget-object v0, Lbd9;->a:Lbd9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lbd9;->g()Ljava/text/DecimalFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/tv/TvInputMoneyAdapter;->l(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/GraphQL$CurrencyAmount;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/GraphQL$CurrencyAmount;)V
    .locals 4
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
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
    sget v0, Lteam/opay/pay/R$id;->money:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p2}, Lteam/opay/core/android/money/MoneyAmount;->getAmount()Ljava/math/BigDecimal;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    :cond_0
    sget-object p2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TvInputMoneyAdapter;->n()Ljava/text/DecimalFormat;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string/jumbo v3, "\u20a6"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iget p2, p0, Lteam/opay/pay/payment/tv/TvInputMoneyAdapter;->a:I

    .line 64
    .line 65
    if-ne p1, p2, :cond_2

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/4 p1, 0x0

    .line 70
    :goto_0
    invoke-virtual {v1, p1}, Landroid/view/View;->setSelected(Z)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final n()Ljava/text/DecimalFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TvInputMoneyAdapter;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/text/DecimalFormat;

    .line 8
    .line 9
    return-object v0
.end method

.method public final o(I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    iput p1, p0, Lteam/opay/pay/payment/tv/TvInputMoneyAdapter;->a:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
