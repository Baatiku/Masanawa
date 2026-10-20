.class public final Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "QuickAmountAdapter.kt"


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
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ+\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00080\u0011\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\r\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001aR\u0016\u0010#\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u001a\u00a8\u0006$"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "holder",
        "item",
        "",
        "p",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/GraphQL$CurrencyAmount;)V",
        "Lteam/opay/pay/home/pay/Service;",
        "service",
        "s",
        "(Lteam/opay/pay/home/pay/Service;)V",
        "Landroid/widget/EditText;",
        "inputText",
        "Lkotlin/Function1;",
        "",
        "selectedCallBack",
        "m",
        "(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)V",
        "",
        "r",
        "()Z",
        "a",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "q",
        "()Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "setSelectedAmount",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V",
        "selectedAmount",
        "b",
        "min",
        "c",
        "max",
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
.field public a:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->item_quick_amount:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;->a:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 13
    .line 14
    new-instance v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 15
    .line 16
    sget-object v1, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 17
    .line 18
    invoke-virtual {v1}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "100"

    .line 23
    .line 24
    invoke-direct {v0, v3, v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;->b:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 28
    .line 29
    new-instance v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 30
    .line 31
    const-string v2, "999999"

    .line 32
    .line 33
    invoke-virtual {v1}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v2, v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 41
    .line 42
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;->o(Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;Landroid/text/Editable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;Lkotlin/jvm/functions/Function1;Landroid/widget/EditText;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;->n(Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;Lkotlin/jvm/functions/Function1;Landroid/widget/EditText;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final n(Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;Lkotlin/jvm/functions/Function1;Landroid/widget/EditText;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const-string p4, "getData(...)"

    .line 6
    .line 7
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p3, p5}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    check-cast p3, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 15
    .line 16
    if-nez p3, :cond_0

    .line 17
    .line 18
    sget-object p3, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 19
    .line 20
    invoke-virtual {p3}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    :cond_0
    sget-object p4, Lbd9;->a:Lbd9;

    .line 25
    .line 26
    invoke-virtual {p4}, Lbd9;->h()Ljava/text/DecimalFormat;

    .line 27
    .line 28
    .line 29
    move-result-object p4

    .line 30
    invoke-virtual {p3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->toBigDecimal()Ljava/math/BigDecimal;

    .line 31
    .line 32
    .line 33
    move-result-object p5

    .line 34
    invoke-virtual {p4, p5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    invoke-static {p2}, Lpf5;->b(Landroid/widget/EditText;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iput-object p3, p0, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;->a:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static final o(Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 14

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;->a:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

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
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const/4 v6, 0x4

    .line 33
    const/4 v7, 0x0

    .line 34
    const-string v3, ".00"

    .line 35
    .line 36
    const-string v4, ""

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    if-eqz v8, :cond_1

    .line 44
    .line 45
    const/4 v12, 0x4

    .line 46
    const/4 v13, 0x0

    .line 47
    const-string v9, ","

    .line 48
    .line 49
    const-string v10, ""

    .line 50
    .line 51
    const/4 v11, 0x0

    .line 52
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;->a:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 59
    .line 60
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_1

    .line 69
    .line 70
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;->a:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;->p(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/GraphQL$CurrencyAmount;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final m(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroid/widget/EditText;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/EditText;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "selectedCallBack"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lsbc;

    .line 7
    .line 8
    invoke-direct {v0, p0, p2, p1}, Lsbc;-><init>(Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;Lkotlin/jvm/functions/Function1;Landroid/widget/EditText;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance p2, Ltbc;

    .line 17
    .line 18
    invoke-direct {p2, p0}, Ltbc;-><init>(Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2}, Lpf5;->a(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)Landroid/text/TextWatcher;

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public p(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/GraphQL$CurrencyAmount;)V
    .locals 9
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget v0, Lteam/opay/pay/R$id;->tv_amount:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p2, v2, v1, v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->toText$default(Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v7, 0x4

    .line 18
    const/4 v8, 0x0

    .line 19
    const-string v4, ".00"

    .line 20
    .line 21
    const-string v5, ""

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 29
    .line 30
    .line 31
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 32
    .line 33
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;->a:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 34
    .line 35
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final q()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;->a:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;->a:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    return v0
.end method

.method public final s(Lteam/opay/pay/home/pay/Service;)V
    .locals 3
    .param p1    # Lteam/opay/pay/home/pay/Service;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/home/pay/Service;->e()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    new-instance v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 10
    .line 11
    sget-object v1, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "100"

    .line 18
    .line 19
    invoke-direct {v0, v2, v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;->b:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/pay/home/pay/Service;->d()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_3

    .line 31
    .line 32
    :cond_2
    new-instance p1, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 33
    .line 34
    sget-object v0, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 35
    .line 36
    invoke-virtual {v0}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "999999"

    .line 41
    .line 42
    invoke-direct {p1, v1, v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 48
    .line 49
    .line 50
    return-void
.end method
