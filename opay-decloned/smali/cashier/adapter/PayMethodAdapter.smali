.class public final Lcashier/adapter/PayMethodAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "PaymentMethodAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcashier/data/MulDataEntity<",
        "Lcashier/data/PaymentItem;",
        ">;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0000\u0018\u00002\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001B?\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u001e\u0010\u000e\u001a\u001a\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J%\u0010\u0013\u001a\u00020\r2\u0014\u0010\u0012\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J%\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00042\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001f\u0010\u001d\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001f\u0010\u001f\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u001eJ\u001f\u0010 \u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008 \u0010\u001eJ\u0019\u0010#\u001a\u00020\r2\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u0019\u0010%\u001a\u00020\r2\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u0002\u00a2\u0006\u0004\u0008%\u0010$J\u0017\u0010&\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008&\u0010\'J\u001f\u0010(\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008(\u0010\u001eJ\u001f\u0010+\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010*\u001a\u00020)H\u0002\u00a2\u0006\u0004\u0008+\u0010,R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R,\u0010\u000e\u001a\u001a\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u000c\u0012\u0004\u0012\u00020\r0\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u001e\u00107\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106\u00a8\u00068"
    }
    d2 = {
        "Lcashier/adapter/PayMethodAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lcashier/data/MulDataEntity;",
        "Lcashier/data/PaymentItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "Lcashier/model/CashierViewModel;",
        "viewModel",
        "",
        "fromDesk",
        "Lag8;",
        "owner",
        "Lkotlin/Function2;",
        "",
        "",
        "onMethodSelect",
        "<init>",
        "(Lcashier/model/CashierViewModel;ZLag8;Lkotlin/jvm/functions/Function2;)V",
        "",
        "data",
        "setNewData",
        "(Ljava/util/List;)V",
        "helper",
        "item",
        "x",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/data/MulDataEntity;)V",
        "Lcashier/BindCardType;",
        "type",
        "t",
        "(Lcashier/BindCardType;)V",
        "s",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/data/PaymentItem;)V",
        "w",
        "u",
        "Lcashier/data/QuestionMark;",
        "questionMark",
        "z",
        "(Lcashier/data/QuestionMark;)V",
        "B",
        "y",
        "(Lcashier/data/PaymentItem;)Z",
        "v",
        "",
        "jumpUrl",
        "A",
        "(Lcashier/data/PaymentItem;Ljava/lang/String;)V",
        "a",
        "Lcashier/model/CashierViewModel;",
        "b",
        "Z",
        "c",
        "Lag8;",
        "d",
        "Lkotlin/jvm/functions/Function2;",
        "e",
        "Ljava/util/List;",
        "listData",
        "cashier_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcashier/model/CashierViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Z

.field public final c:Lag8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcashier/data/PaymentItem;",
            "Ljava/util/List<",
            "Lcashier/data/PaymentItem;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcashier/data/PaymentItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcashier/model/CashierViewModel;ZLag8;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lcashier/model/CashierViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/model/CashierViewModel;",
            "Z",
            "Lag8;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcashier/data/PaymentItem;",
            "-",
            "Ljava/util/List<",
            "Lcashier/data/PaymentItem;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "viewModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "owner"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "onMethodSelect"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcashier/adapter/PayMethodAdapter;->a:Lcashier/model/CashierViewModel;

    .line 21
    .line 22
    iput-boolean p2, p0, Lcashier/adapter/PayMethodAdapter;->b:Z

    .line 23
    .line 24
    iput-object p3, p0, Lcashier/adapter/PayMethodAdapter;->c:Lag8;

    .line 25
    .line 26
    iput-object p4, p0, Lcashier/adapter/PayMethodAdapter;->d:Lkotlin/jvm/functions/Function2;

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    sget p2, Lteam/opay/pay/cashier/R$layout;->pay_item_new_payment_single_line_method:I

    .line 30
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    sget p2, Lteam/opay/pay/cashier/R$layout;->pay_item_new_payment_method:I

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x2

    .line 41
    sget p2, Lteam/opay/pay/cashier/R$layout;->pay_item_available_balance_method:I

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 44
    .line 45
    .line 46
    sget p1, Lteam/opay/pay/cashier/R$layout;->pay_item_new_payment_add_card:I

    .line 47
    .line 48
    const/4 p2, 0x3

    .line 49
    invoke-virtual {p0, p2, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 50
    .line 51
    .line 52
    const/4 p2, 0x4

    .line 53
    invoke-virtual {p0, p2, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static final synthetic k(Lcashier/adapter/PayMethodAdapter;Lcashier/BindCardType;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcashier/adapter/PayMethodAdapter;->t(Lcashier/BindCardType;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l(Lcashier/adapter/PayMethodAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcashier/adapter/PayMethodAdapter;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic m(Lcashier/adapter/PayMethodAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcashier/adapter/PayMethodAdapter;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic n(Lcashier/adapter/PayMethodAdapter;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcashier/adapter/PayMethodAdapter;->d:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic o(Lcashier/adapter/PayMethodAdapter;)Lcashier/model/CashierViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcashier/adapter/PayMethodAdapter;->a:Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic p(Lcashier/adapter/PayMethodAdapter;Lcashier/data/PaymentItem;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcashier/adapter/PayMethodAdapter;->y(Lcashier/data/PaymentItem;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic q(Lcashier/adapter/PayMethodAdapter;Lcashier/data/QuestionMark;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcashier/adapter/PayMethodAdapter;->z(Lcashier/data/QuestionMark;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic r(Lcashier/adapter/PayMethodAdapter;Lcashier/data/PaymentItem;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcashier/adapter/PayMethodAdapter;->A(Lcashier/data/PaymentItem;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final A(Lcashier/data/PaymentItem;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v2

    .line 16
    :goto_0
    const-string v3, "paychannel"

    .line 17
    .line 18
    invoke-static {v3, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v3, "paychannel_status"

    .line 23
    .line 24
    invoke-virtual {p1}, Lcashier/data/PaymentItem;->c()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {v3, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p1}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lcashier/data/PayChannelItem;->k()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :cond_1
    const-string p1, "url"

    .line 43
    .line 44
    invoke-static {p1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v2, p0, Lcashier/adapter/PayMethodAdapter;->a:Lcashier/model/CashierViewModel;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->p0()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v4, "is_payment_process"

    .line 55
    .line 56
    invoke-static {v4, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const/4 v4, 0x4

    .line 61
    new-array v4, v4, [Lkotlin/Pair;

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    aput-object v1, v4, v5

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    aput-object v3, v4, v1

    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    aput-object p1, v4, v1

    .line 71
    .line 72
    const/4 p1, 0x3

    .line 73
    aput-object v2, v4, p1

    .line 74
    .line 75
    const/4 p1, 0x4

    .line 76
    const/4 v5, 0x0

    .line 77
    const-string v1, "COMMON_pay_window_jump_click"

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    move-object v2, v4

    .line 81
    move v4, p1

    .line 82
    invoke-static/range {v0 .. v5}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcashier/adapter/PayMethodAdapter;->a:Lcashier/model/CashierViewModel;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    sget-object v0, Lcashier/SchemeType;->ADD_MONEY:Lcashier/SchemeType;

    .line 94
    .line 95
    new-instance v1, Lcashier/adapter/PayMethodAdapter$openAction$1;

    .line 96
    .line 97
    invoke-direct {v1, p0}, Lcashier/adapter/PayMethodAdapter$openAction$1;-><init>(Lcashier/adapter/PayMethodAdapter;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {p1, v0, p2, v1}, Lcashier/CashierDelegate;->openScheme(Lcashier/SchemeType;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    return-void
.end method

.method public final B(Lcashier/data/QuestionMark;)V
    .locals 12

    .line 1
    sget-object v0, Lcashier/ui/PayNoticeDialog;->i:Lcashier/ui/PayNoticeDialog$Companion;

    .line 2
    .line 3
    sget v1, Lteam/opay/pay/cashier/R$string;->pay_tips:I

    .line 4
    .line 5
    invoke-static {v1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcashier/data/QuestionMark;->b()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p1, v1

    .line 18
    :goto_0
    if-nez p1, :cond_1

    .line 19
    .line 20
    const-string p1, ""

    .line 21
    .line 22
    :cond_1
    move-object v5, p1

    .line 23
    sget p1, Lteam/opay/pay/cashier/R$string;->pay_got_it:I

    .line 24
    .line 25
    invoke-static {p1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    new-instance p1, Lcashier/ui/PayNoticeData;

    .line 30
    .line 31
    const/16 v10, 0x61

    .line 32
    .line 33
    const/4 v11, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v7, 0x1

    .line 36
    const/4 v8, 0x0

    .line 37
    const/4 v9, 0x0

    .line 38
    move-object v2, p1

    .line 39
    invoke-direct/range {v2 .. v11}, Lcashier/ui/PayNoticeData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcashier/ui/PayNoticeDialog$Companion;->a(Lcashier/ui/PayNoticeData;)Lcashier/ui/PayNoticeDialog;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    sget-object v0, Ld00;->a:Ld00;

    .line 47
    .line 48
    invoke-virtual {v0}, Ld00;->e()Landroid/app/Activity;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    instance-of v2, v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    move-object v1, v0

    .line 57
    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 58
    .line 59
    :cond_2
    if-eqz v1, :cond_3

    .line 60
    .line 61
    invoke-static {v1, p1}, Lcashier/util/UtilsKt;->n(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/DialogFragment;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcashier/data/MulDataEntity;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcashier/adapter/PayMethodAdapter;->x(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/data/MulDataEntity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final s(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/data/PaymentItem;)V
    .locals 7

    .line 1
    sget v0, Lteam/opay/pay/cashier/R$id;->add_card_name:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    sget v1, Lteam/opay/pay/cashier/R$id;->add_card__tip:I

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/widget/TextView;

    .line 16
    .line 17
    sget v2, Lteam/opay/pay/cashier/R$id;->add_card_tag:I

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcashier/data/PaymentItem;->b()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x4

    .line 30
    if-ne v2, v3, :cond_0

    .line 31
    .line 32
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    sget v3, Lteam/opay/pay/cashier/R$string;->pay_cashier_add_account_title:I

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    const-string v0, "add_card__tip"

    .line 44
    .line 45
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v2, 0x0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0}, Lcashier/data/PayChannelItem;->p()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move-object v0, v2

    .line 61
    :goto_0
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x1

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const/4 v0, 0x0

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 75
    :goto_2
    xor-int/2addr v0, v4

    .line 76
    invoke-static {v1, v0}, Ld0g;->t(Landroid/view/View;Z)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Lteam/opay/swarmfoundation/color/DarkColors;->a:Lteam/opay/swarmfoundation/color/DarkColors;

    .line 80
    .line 81
    invoke-virtual {p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    if-eqz v5, :cond_4

    .line 86
    .line 87
    invoke-virtual {v5}, Lcashier/data/PayChannelItem;->p()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    goto :goto_3

    .line 92
    :cond_4
    move-object v5, v2

    .line 93
    :goto_3
    const-string v6, ""

    .line 94
    .line 95
    if-nez v5, :cond_5

    .line 96
    .line 97
    move-object v5, v6

    .line 98
    :cond_5
    invoke-virtual {v0, v5}, Lteam/opay/swarmfoundation/color/DarkColors;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    const-string v1, "add_card_tag"

    .line 106
    .line 107
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-eqz v1, :cond_6

    .line 115
    .line 116
    invoke-virtual {v1}, Lcashier/data/PayChannelItem;->r()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    goto :goto_4

    .line 121
    :cond_6
    move-object v1, v2

    .line 122
    :goto_4
    if-eqz v1, :cond_7

    .line 123
    .line 124
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-nez v1, :cond_8

    .line 129
    .line 130
    :cond_7
    const/4 v3, 0x1

    .line 131
    :cond_8
    xor-int/lit8 v1, v3, 0x1

    .line 132
    .line 133
    invoke-static {p1, v1}, Ld0g;->t(Landroid/view/View;Z)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    if-eqz p2, :cond_9

    .line 141
    .line 142
    invoke-virtual {p2}, Lcashier/data/PayChannelItem;->r()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    :cond_9
    if-nez v2, :cond_a

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_a
    move-object v6, v2

    .line 150
    :goto_5
    invoke-virtual {v0, v6}, Lteam/opay/swarmfoundation/color/DarkColors;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcashier/data/MulDataEntity<",
            "Lcashier/data/PaymentItem;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcashier/data/MulDataEntity;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcashier/data/MulDataEntity;->a()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcashier/data/PaymentItem;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :cond_2
    iput-object v0, p0, Lcashier/adapter/PayMethodAdapter;->e:Ljava/util/List;

    .line 41
    .line 42
    return-void
.end method

.method public final t(Lcashier/BindCardType;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter;->a:Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcashier/adapter/PayMethodAdapter$bindCard$1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcashier/adapter/PayMethodAdapter$bindCard$1;-><init>(Lcashier/adapter/PayMethodAdapter;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1, v1}, Lcashier/CashierDelegate;->bindCardOrAccount(Lcashier/BindCardType;Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final u(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/data/PaymentItem;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    sget v5, Lteam/opay/pay/cashier/R$id;->combine_rv_list:I

    .line 10
    .line 11
    invoke-virtual {v1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    sget v6, Lteam/opay/pay/cashier/R$id;->combine_ic_right:I

    .line 18
    .line 19
    invoke-virtual {v1, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    sget v7, Lteam/opay/pay/cashier/R$id;->method_add_money:I

    .line 24
    .line 25
    invoke-virtual {v1, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    check-cast v7, Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    const/4 v9, 0x0

    .line 36
    if-eqz v8, :cond_0

    .line 37
    .line 38
    invoke-virtual {v8}, Lcashier/data/PayChannelItem;->t()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v8, v9

    .line 44
    :goto_0
    const-string v10, "Y"

    .line 45
    .line 46
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    sget v10, Lteam/opay/pay/cashier/R$id;->combine_question:I

    .line 51
    .line 52
    invoke-virtual {v1, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    const-string v11, "question"

    .line 57
    .line 58
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/16 v11, 0x10

    .line 62
    .line 63
    invoke-static {v11}, Lcashier/util/UtilsKt;->a(I)I

    .line 64
    .line 65
    .line 66
    move-result v11

    .line 67
    invoke-static {v10, v11}, Ld0g;->b(Landroid/view/View;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    if-eqz v11, :cond_1

    .line 75
    .line 76
    invoke-virtual {v11}, Lcashier/data/PayChannelItem;->q()Lcashier/data/QuestionMark;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    move-object v11, v9

    .line 82
    :goto_1
    if-eqz v11, :cond_2

    .line 83
    .line 84
    const/4 v11, 0x1

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    const/4 v11, 0x0

    .line 87
    :goto_2
    invoke-static {v10, v11}, Ld0g;->t(Landroid/view/View;Z)V

    .line 88
    .line 89
    .line 90
    new-instance v11, Lcashier/adapter/PayMethodAdapter$bindCombine$1;

    .line 91
    .line 92
    invoke-direct {v11, v0, v2}, Lcashier/adapter/PayMethodAdapter$bindCombine$1;-><init>(Lcashier/adapter/PayMethodAdapter;Lcashier/data/PaymentItem;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v10, v11}, Ld0g;->o(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 96
    .line 97
    .line 98
    sget v10, Lteam/opay/pay/cashier/R$id;->combine_amount:I

    .line 99
    .line 100
    invoke-virtual {v1, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    check-cast v10, Landroid/widget/TextView;

    .line 105
    .line 106
    iget-object v11, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 107
    .line 108
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    sget v12, Lteam/opay/pay/cashier/R$string;->pay_format_meter_number:I

    .line 113
    .line 114
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    if-eqz v13, :cond_3

    .line 119
    .line 120
    invoke-virtual {v13}, Lcashier/data/PayChannelItem;->b()Lcashier/util/CurrencyAmount;

    .line 121
    .line 122
    .line 123
    move-result-object v13

    .line 124
    if-eqz v13, :cond_3

    .line 125
    .line 126
    invoke-static {v13, v9, v3, v9}, Lcashier/util/CurrencyAmount;->toText$default(Lcashier/util/CurrencyAmount;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v13

    .line 130
    goto :goto_3

    .line 131
    :cond_3
    move-object v13, v9

    .line 132
    :goto_3
    new-array v14, v3, [Ljava/lang/Object;

    .line 133
    .line 134
    aput-object v13, v14, v4

    .line 135
    .line 136
    invoke-virtual {v11, v12, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    sget v10, Lteam/opay/pay/cashier/R$id;->combine_label_desc:I

    .line 144
    .line 145
    invoke-virtual {v1, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    check-cast v10, Landroid/widget/TextView;

    .line 150
    .line 151
    const-string v11, "desc"

    .line 152
    .line 153
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    if-eqz v11, :cond_4

    .line 161
    .line 162
    invoke-virtual {v11}, Lcashier/data/PayChannelItem;->g()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    goto :goto_4

    .line 167
    :cond_4
    move-object v11, v9

    .line 168
    :goto_4
    if-eqz v11, :cond_6

    .line 169
    .line 170
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 171
    .line 172
    .line 173
    move-result v11

    .line 174
    if-nez v11, :cond_5

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_5
    const/4 v11, 0x0

    .line 178
    goto :goto_6

    .line 179
    :cond_6
    :goto_5
    const/4 v11, 0x1

    .line 180
    :goto_6
    xor-int/2addr v11, v3

    .line 181
    invoke-static {v10, v11}, Ld0g;->t(Landroid/view/View;Z)V

    .line 182
    .line 183
    .line 184
    sget-object v11, Lteam/opay/swarmfoundation/color/DarkColors;->a:Lteam/opay/swarmfoundation/color/DarkColors;

    .line 185
    .line 186
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 187
    .line 188
    .line 189
    move-result-object v12

    .line 190
    if-eqz v12, :cond_7

    .line 191
    .line 192
    invoke-virtual {v12}, Lcashier/data/PayChannelItem;->g()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v12

    .line 196
    goto :goto_7

    .line 197
    :cond_7
    move-object v12, v9

    .line 198
    :goto_7
    const-string v13, ""

    .line 199
    .line 200
    if-nez v12, :cond_8

    .line 201
    .line 202
    move-object v12, v13

    .line 203
    :cond_8
    invoke-virtual {v11, v12}, Lteam/opay/swarmfoundation/color/DarkColors;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 204
    .line 205
    .line 206
    move-result-object v12

    .line 207
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    if-eqz v10, :cond_9

    .line 215
    .line 216
    invoke-virtual {v10}, Lcashier/data/PayChannelItem;->j()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    goto :goto_8

    .line 221
    :cond_9
    move-object v10, v9

    .line 222
    :goto_8
    const-string v12, "methodAddMoney"

    .line 223
    .line 224
    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    if-eqz v10, :cond_b

    .line 228
    .line 229
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 230
    .line 231
    .line 232
    move-result v12

    .line 233
    if-nez v12, :cond_a

    .line 234
    .line 235
    goto :goto_9

    .line 236
    :cond_a
    const/4 v12, 0x0

    .line 237
    goto :goto_a

    .line 238
    :cond_b
    :goto_9
    const/4 v12, 0x1

    .line 239
    :goto_a
    xor-int/2addr v12, v3

    .line 240
    invoke-static {v7, v12}, Ld0g;->t(Landroid/view/View;Z)V

    .line 241
    .line 242
    .line 243
    if-nez v10, :cond_c

    .line 244
    .line 245
    goto :goto_b

    .line 246
    :cond_c
    move-object v13, v10

    .line 247
    :goto_b
    invoke-virtual {v11, v13}, Lteam/opay/swarmfoundation/color/DarkColors;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    .line 253
    .line 254
    new-instance v10, Lcashier/adapter/PayMethodAdapter$bindCombine$2;

    .line 255
    .line 256
    invoke-direct {v10, v0, v2}, Lcashier/adapter/PayMethodAdapter$bindCombine$2;-><init>(Lcashier/adapter/PayMethodAdapter;Lcashier/data/PaymentItem;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v7, v10}, Ld0g;->o(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 260
    .line 261
    .line 262
    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 263
    .line 264
    iget-object v10, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 265
    .line 266
    invoke-direct {v7, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 273
    .line 274
    .line 275
    move-result v7

    .line 276
    if-lez v7, :cond_d

    .line 277
    .line 278
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 279
    .line 280
    .line 281
    :cond_d
    new-instance v4, Lcashier/util/SpaceItemDecoration;

    .line 282
    .line 283
    const/4 v7, 0x3

    .line 284
    invoke-static {v7}, Lcashier/util/UtilsKt;->a(I)I

    .line 285
    .line 286
    .line 287
    move-result v11

    .line 288
    const/16 v18, 0x7e

    .line 289
    .line 290
    const/16 v19, 0x0

    .line 291
    .line 292
    const/4 v12, 0x0

    .line 293
    const/4 v13, 0x0

    .line 294
    const/4 v14, 0x0

    .line 295
    const/4 v15, 0x0

    .line 296
    const/16 v16, 0x0

    .line 297
    .line 298
    const/16 v17, 0x0

    .line 299
    .line 300
    move-object v10, v4

    .line 301
    invoke-direct/range {v10 .. v19}, Lcashier/util/SpaceItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 305
    .line 306
    .line 307
    new-instance v4, Lcashier/adapter/CombineInfoAdapter;

    .line 308
    .line 309
    invoke-direct {v4, v8}, Lcashier/adapter/CombineInfoAdapter;-><init>(Z)V

    .line 310
    .line 311
    .line 312
    new-instance v7, Lcashier/adapter/PayMethodAdapter$bindCombine$3$1;

    .line 313
    .line 314
    invoke-direct {v7, v0}, Lcashier/adapter/PayMethodAdapter$bindCombine$3$1;-><init>(Lcashier/adapter/PayMethodAdapter;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4, v7}, Lcashier/adapter/CombineInfoAdapter;->m(Lkotlin/jvm/functions/Function1;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 321
    .line 322
    .line 323
    move-result-object v7

    .line 324
    if-eqz v7, :cond_e

    .line 325
    .line 326
    invoke-virtual {v7}, Lcashier/data/PayChannelItem;->e()Ljava/util/List;

    .line 327
    .line 328
    .line 329
    move-result-object v9

    .line 330
    :cond_e
    invoke-virtual {v4, v9}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 337
    .line 338
    .line 339
    const-string v3, "combineIcRight"

    .line 340
    .line 341
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->f()Z

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    invoke-static {v6, v2}, Ld0g;->t(Landroid/view/View;Z)V

    .line 349
    .line 350
    .line 351
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 352
    .line 353
    invoke-virtual {v1, v8}, Landroid/view/View;->setClickable(Z)V

    .line 354
    .line 355
    .line 356
    return-void
.end method

.method public final v(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/data/PaymentItem;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Lcashier/adapter/PayMethodAdapter;->y(Lcashier/data/PaymentItem;)Z

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    if-eqz v6, :cond_0

    .line 16
    .line 17
    invoke-virtual {v6}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v6, 0x0

    .line 23
    :goto_0
    const-string v8, "OWealth"

    .line 24
    .line 25
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_2

    .line 30
    .line 31
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    invoke-virtual {v6}, Lcashier/data/PayChannelItem;->m()Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 v6, 0x0

    .line 49
    :goto_1
    if-eqz v6, :cond_2

    .line 50
    .line 51
    const/4 v6, 0x1

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/4 v6, 0x0

    .line 54
    :goto_2
    if-nez v5, :cond_4

    .line 55
    .line 56
    if-eqz v6, :cond_3

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    const v6, 0x3ee66666    # 0.45f

    .line 60
    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_4
    :goto_3
    const/high16 v6, 0x3f800000    # 1.0f

    .line 64
    .line 65
    :goto_4
    sget v9, Lteam/opay/pay/cashier/R$id;->info_icon:I

    .line 66
    .line 67
    invoke-virtual {v1, v9}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    check-cast v9, Landroid/widget/ImageView;

    .line 72
    .line 73
    sget v10, Lteam/opay/pay/cashier/R$id;->info_name:I

    .line 74
    .line 75
    invoke-virtual {v1, v10}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    check-cast v10, Landroid/widget/TextView;

    .line 80
    .line 81
    sget v11, Lteam/opay/pay/cashier/R$id;->method_desc:I

    .line 82
    .line 83
    invoke-virtual {v1, v11}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    check-cast v11, Landroid/widget/TextView;

    .line 88
    .line 89
    sget v12, Lteam/opay/pay/cashier/R$id;->method_tip:I

    .line 90
    .line 91
    invoke-virtual {v1, v12}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    check-cast v12, Landroid/widget/TextView;

    .line 96
    .line 97
    sget v13, Lteam/opay/pay/cashier/R$id;->info_amount:I

    .line 98
    .line 99
    invoke-virtual {v1, v13}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    check-cast v13, Landroid/widget/TextView;

    .line 104
    .line 105
    sget v14, Lteam/opay/pay/cashier/R$id;->method_action_end:I

    .line 106
    .line 107
    invoke-virtual {v1, v14}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v14

    .line 111
    check-cast v14, Landroid/widget/TextView;

    .line 112
    .line 113
    sget v15, Lteam/opay/pay/cashier/R$id;->method_action_bottom:I

    .line 114
    .line 115
    invoke-virtual {v1, v15}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v15

    .line 119
    check-cast v15, Landroid/widget/TextView;

    .line 120
    .line 121
    sget v4, Lteam/opay/pay/cashier/R$id;->info_ic_right:I

    .line 122
    .line 123
    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    .line 128
    .line 129
    sget v7, Lteam/opay/pay/cashier/R$id;->method_tag:I

    .line 130
    .line 131
    invoke-virtual {v1, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    check-cast v7, Landroid/widget/TextView;

    .line 136
    .line 137
    invoke-virtual {v9, v6}, Landroid/view/View;->setAlpha(F)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v10, v6}, Landroid/view/View;->setAlpha(F)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v11, v6}, Landroid/view/View;->setAlpha(F)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v12, v6}, Landroid/view/View;->setAlpha(F)V

    .line 147
    .line 148
    .line 149
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->a()Lcashier/data/Card;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    if-eqz v6, :cond_5

    .line 154
    .line 155
    invoke-virtual {v6}, Lcashier/data/Card;->g()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    if-nez v6, :cond_7

    .line 160
    .line 161
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    if-eqz v6, :cond_6

    .line 166
    .line 167
    invoke-virtual {v6}, Lcashier/data/PayChannelItem;->h()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    goto :goto_5

    .line 172
    :cond_6
    const/4 v6, 0x0

    .line 173
    :cond_7
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->a()Lcashier/data/Card;

    .line 174
    .line 175
    .line 176
    move-result-object v17

    .line 177
    const-string v3, "info_icon"

    .line 178
    .line 179
    if-eqz v17, :cond_8

    .line 180
    .line 181
    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v9}, Ld0g;->s(Landroid/view/View;)V

    .line 185
    .line 186
    .line 187
    move/from16 v17, v5

    .line 188
    .line 189
    goto :goto_8

    .line 190
    :cond_8
    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    if-eqz v6, :cond_a

    .line 194
    .line 195
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-nez v3, :cond_9

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_9
    move/from16 v17, v5

    .line 203
    .line 204
    const/4 v3, 0x1

    .line 205
    const/16 v18, 0x0

    .line 206
    .line 207
    goto :goto_7

    .line 208
    :cond_a
    :goto_6
    move/from16 v17, v5

    .line 209
    .line 210
    const/4 v3, 0x1

    .line 211
    const/16 v18, 0x1

    .line 212
    .line 213
    :goto_7
    xor-int/lit8 v5, v18, 0x1

    .line 214
    .line 215
    invoke-static {v9, v5}, Ld0g;->t(Landroid/view/View;Z)V

    .line 216
    .line 217
    .line 218
    :goto_8
    sget v3, Lteam/opay/pay/cashier/R$drawable;->pay_svg_cashier_balance:I

    .line 219
    .line 220
    invoke-static {v9, v6, v3}, Ld0g;->i(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->a()Lcashier/data/Card;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    if-eqz v3, :cond_b

    .line 228
    .line 229
    invoke-virtual {v3}, Lcashier/data/Card;->c()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    if-nez v3, :cond_d

    .line 234
    .line 235
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    if-eqz v3, :cond_c

    .line 240
    .line 241
    invoke-virtual {v3}, Lcashier/data/PayChannelItem;->f()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    goto :goto_9

    .line 246
    :cond_c
    const/4 v3, 0x0

    .line 247
    :cond_d
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    if-eqz v5, :cond_e

    .line 252
    .line 253
    invoke-virtual {v5}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    goto :goto_a

    .line 258
    :cond_e
    const/4 v5, 0x0

    .line 259
    :goto_a
    const-string v6, "BankAccount"

    .line 260
    .line 261
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    const-string v9, "info_amount"

    .line 266
    .line 267
    const-string v1, "BankCard"

    .line 268
    .line 269
    const-string v19, ""

    .line 270
    .line 271
    if-nez v5, :cond_10

    .line 272
    .line 273
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    if-eqz v5, :cond_f

    .line 278
    .line 279
    invoke-virtual {v5}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    goto :goto_b

    .line 284
    :cond_f
    const/4 v5, 0x0

    .line 285
    :goto_b
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    if-eqz v5, :cond_11

    .line 290
    .line 291
    :cond_10
    move-object/from16 v16, v4

    .line 292
    .line 293
    const/4 v4, 0x0

    .line 294
    goto/16 :goto_10

    .line 295
    .line 296
    :cond_11
    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-static {v13}, Ld0g;->e(Landroid/view/View;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    if-eqz v5, :cond_12

    .line 307
    .line 308
    invoke-virtual {v5}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    goto :goto_c

    .line 313
    :cond_12
    const/4 v5, 0x0

    .line 314
    :goto_c
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-eqz v5, :cond_14

    .line 319
    .line 320
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    if-eqz v5, :cond_13

    .line 325
    .line 326
    invoke-virtual {v5}, Lcashier/data/PayChannelItem;->m()Ljava/lang/Boolean;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 331
    .line 332
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    goto :goto_d

    .line 337
    :cond_13
    const/4 v5, 0x0

    .line 338
    :goto_d
    if-nez v5, :cond_14

    .line 339
    .line 340
    move-object/from16 v16, v4

    .line 341
    .line 342
    move-object/from16 v4, v19

    .line 343
    .line 344
    goto :goto_f

    .line 345
    :cond_14
    iget-object v5, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 346
    .line 347
    sget v8, Lteam/opay/pay/cashier/R$string;->pay_format_meter_number:I

    .line 348
    .line 349
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 350
    .line 351
    .line 352
    move-result-object v9

    .line 353
    if-eqz v9, :cond_15

    .line 354
    .line 355
    invoke-virtual {v9}, Lcashier/data/PayChannelItem;->b()Lcashier/util/CurrencyAmount;

    .line 356
    .line 357
    .line 358
    move-result-object v9

    .line 359
    if-eqz v9, :cond_15

    .line 360
    .line 361
    move-object/from16 v16, v4

    .line 362
    .line 363
    const/4 v4, 0x1

    .line 364
    const/4 v13, 0x0

    .line 365
    invoke-static {v9, v13, v4, v13}, Lcashier/util/CurrencyAmount;->toText$default(Lcashier/util/CurrencyAmount;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v9

    .line 369
    goto :goto_e

    .line 370
    :cond_15
    move-object/from16 v16, v4

    .line 371
    .line 372
    const/4 v4, 0x1

    .line 373
    const/4 v13, 0x0

    .line 374
    move-object v9, v13

    .line 375
    :goto_e
    new-array v13, v4, [Ljava/lang/Object;

    .line 376
    .line 377
    const/4 v4, 0x0

    .line 378
    aput-object v9, v13, v4

    .line 379
    .line 380
    invoke-virtual {v5, v8, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    const-string v5, "{\n                      \u2026  )\n                    }"

    .line 385
    .line 386
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    :goto_f
    new-instance v5, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    const/16 v3, 0x20

    .line 398
    .line 399
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    const/4 v4, 0x0

    .line 410
    goto :goto_13

    .line 411
    :goto_10
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    if-eqz v5, :cond_16

    .line 416
    .line 417
    invoke-virtual {v5}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    goto :goto_11

    .line 422
    :cond_16
    move-object v5, v4

    .line 423
    :goto_11
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v5

    .line 427
    if-eqz v5, :cond_17

    .line 428
    .line 429
    iget-object v5, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 430
    .line 431
    sget v8, Lteam/opay/pay/cashier/R$string;->pay_card:I

    .line 432
    .line 433
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    goto :goto_12

    .line 438
    :cond_17
    iget-object v5, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 439
    .line 440
    sget v8, Lteam/opay/pay/cashier/R$string;->pay_account:I

    .line 441
    .line 442
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    :goto_12
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    .line 448
    .line 449
    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    invoke-static {v13}, Ld0g;->s(Landroid/view/View;)V

    .line 453
    .line 454
    .line 455
    :goto_13
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    if-eqz v3, :cond_18

    .line 463
    .line 464
    invoke-virtual {v3}, Lcashier/data/PayChannelItem;->j()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v13

    .line 468
    goto :goto_14

    .line 469
    :cond_18
    move-object v13, v4

    .line 470
    :goto_14
    if-eqz v13, :cond_1a

    .line 471
    .line 472
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    .line 473
    .line 474
    .line 475
    move-result v3

    .line 476
    if-nez v3, :cond_19

    .line 477
    .line 478
    goto :goto_15

    .line 479
    :cond_19
    const/4 v3, 0x0

    .line 480
    goto :goto_16

    .line 481
    :cond_1a
    :goto_15
    const/4 v3, 0x1

    .line 482
    :goto_16
    const-string v5, "method_action_end"

    .line 483
    .line 484
    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->f()Z

    .line 488
    .line 489
    .line 490
    move-result v5

    .line 491
    if-nez v5, :cond_1b

    .line 492
    .line 493
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->g()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v5

    .line 497
    const-string v8, "N"

    .line 498
    .line 499
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result v5

    .line 503
    if-eqz v5, :cond_1b

    .line 504
    .line 505
    if-nez v3, :cond_1b

    .line 506
    .line 507
    const/4 v5, 0x1

    .line 508
    goto :goto_17

    .line 509
    :cond_1b
    const/4 v5, 0x0

    .line 510
    :goto_17
    invoke-static {v14, v5}, Ld0g;->t(Landroid/view/View;Z)V

    .line 511
    .line 512
    .line 513
    const-string v5, "method_action_bottom"

    .line 514
    .line 515
    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 519
    .line 520
    .line 521
    move-result v5

    .line 522
    const/16 v8, 0x8

    .line 523
    .line 524
    if-ne v5, v8, :cond_1c

    .line 525
    .line 526
    if-nez v3, :cond_1c

    .line 527
    .line 528
    const/4 v3, 0x1

    .line 529
    goto :goto_18

    .line 530
    :cond_1c
    const/4 v3, 0x0

    .line 531
    :goto_18
    invoke-static {v15, v3}, Ld0g;->t(Landroid/view/View;Z)V

    .line 532
    .line 533
    .line 534
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 535
    .line 536
    .line 537
    move-result-object v3

    .line 538
    if-eqz v3, :cond_1d

    .line 539
    .line 540
    invoke-virtual {v3}, Lcashier/data/PayChannelItem;->j()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    if-eqz v3, :cond_1d

    .line 545
    .line 546
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 547
    .line 548
    .line 549
    move-result v3

    .line 550
    goto :goto_19

    .line 551
    :cond_1d
    const/4 v3, 0x0

    .line 552
    :goto_19
    const/16 v5, 0xa

    .line 553
    .line 554
    if-le v3, v5, :cond_1f

    .line 555
    .line 556
    new-instance v3, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    .line 560
    .line 561
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 562
    .line 563
    .line 564
    move-result-object v9

    .line 565
    if-eqz v9, :cond_1e

    .line 566
    .line 567
    invoke-virtual {v9}, Lcashier/data/PayChannelItem;->j()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v9

    .line 571
    if-eqz v9, :cond_1e

    .line 572
    .line 573
    const/4 v10, 0x0

    .line 574
    invoke-virtual {v9, v10, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 575
    .line 576
    .line 577
    move-result-object v13

    .line 578
    goto :goto_1a

    .line 579
    :cond_1e
    const/4 v10, 0x0

    .line 580
    move-object v13, v4

    .line 581
    :goto_1a
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    const-string v5, "..."

    .line 585
    .line 586
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v13

    .line 593
    goto :goto_1b

    .line 594
    :cond_1f
    const/4 v10, 0x0

    .line 595
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 596
    .line 597
    .line 598
    move-result-object v3

    .line 599
    if-eqz v3, :cond_20

    .line 600
    .line 601
    invoke-virtual {v3}, Lcashier/data/PayChannelItem;->j()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v13

    .line 605
    goto :goto_1b

    .line 606
    :cond_20
    move-object v13, v4

    .line 607
    :goto_1b
    sget-object v3, Lteam/opay/swarmfoundation/color/DarkColors;->a:Lteam/opay/swarmfoundation/color/DarkColors;

    .line 608
    .line 609
    if-nez v13, :cond_21

    .line 610
    .line 611
    move-object/from16 v13, v19

    .line 612
    .line 613
    :cond_21
    invoke-virtual {v3, v13}, Lteam/opay/swarmfoundation/color/DarkColors;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 614
    .line 615
    .line 616
    move-result-object v5

    .line 617
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 621
    .line 622
    .line 623
    move-result-object v5

    .line 624
    if-eqz v5, :cond_22

    .line 625
    .line 626
    invoke-virtual {v5}, Lcashier/data/PayChannelItem;->j()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v13

    .line 630
    goto :goto_1c

    .line 631
    :cond_22
    move-object v13, v4

    .line 632
    :goto_1c
    if-nez v13, :cond_23

    .line 633
    .line 634
    move-object/from16 v13, v19

    .line 635
    .line 636
    :cond_23
    invoke-virtual {v3, v13}, Lteam/opay/swarmfoundation/color/DarkColors;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 637
    .line 638
    .line 639
    move-result-object v5

    .line 640
    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    .line 642
    .line 643
    new-instance v5, Lcashier/adapter/PayMethodAdapter$bindInfo$1;

    .line 644
    .line 645
    invoke-direct {v5, v0, v2}, Lcashier/adapter/PayMethodAdapter$bindInfo$1;-><init>(Lcashier/adapter/PayMethodAdapter;Lcashier/data/PaymentItem;)V

    .line 646
    .line 647
    .line 648
    invoke-static {v14, v5}, Ld0g;->o(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 649
    .line 650
    .line 651
    new-instance v5, Lcashier/adapter/PayMethodAdapter$bindInfo$2;

    .line 652
    .line 653
    invoke-direct {v5, v0, v2}, Lcashier/adapter/PayMethodAdapter$bindInfo$2;-><init>(Lcashier/adapter/PayMethodAdapter;Lcashier/data/PaymentItem;)V

    .line 654
    .line 655
    .line 656
    invoke-static {v15, v5}, Ld0g;->o(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 657
    .line 658
    .line 659
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->a()Lcashier/data/Card;

    .line 660
    .line 661
    .line 662
    move-result-object v5

    .line 663
    if-eqz v5, :cond_24

    .line 664
    .line 665
    invoke-virtual {v5}, Lcashier/data/Card;->j()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v13

    .line 669
    if-nez v13, :cond_26

    .line 670
    .line 671
    :cond_24
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 672
    .line 673
    .line 674
    move-result-object v5

    .line 675
    if-eqz v5, :cond_25

    .line 676
    .line 677
    invoke-virtual {v5}, Lcashier/data/PayChannelItem;->r()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v13

    .line 681
    goto :goto_1d

    .line 682
    :cond_25
    move-object v13, v4

    .line 683
    :cond_26
    :goto_1d
    const-string v5, "method_tag"

    .line 684
    .line 685
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    if-eqz v13, :cond_28

    .line 689
    .line 690
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    .line 691
    .line 692
    .line 693
    move-result v5

    .line 694
    if-nez v5, :cond_27

    .line 695
    .line 696
    goto :goto_1e

    .line 697
    :cond_27
    const/4 v5, 0x1

    .line 698
    const/16 v18, 0x0

    .line 699
    .line 700
    goto :goto_1f

    .line 701
    :cond_28
    :goto_1e
    const/4 v5, 0x1

    .line 702
    const/16 v18, 0x1

    .line 703
    .line 704
    :goto_1f
    xor-int/lit8 v9, v18, 0x1

    .line 705
    .line 706
    invoke-static {v7, v9}, Ld0g;->t(Landroid/view/View;Z)V

    .line 707
    .line 708
    .line 709
    if-nez v13, :cond_29

    .line 710
    .line 711
    move-object/from16 v13, v19

    .line 712
    .line 713
    :cond_29
    invoke-virtual {v3, v13}, Lteam/opay/swarmfoundation/color/DarkColors;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 714
    .line 715
    .line 716
    move-result-object v5

    .line 717
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->a()Lcashier/data/Card;

    .line 721
    .line 722
    .line 723
    move-result-object v5

    .line 724
    if-eqz v5, :cond_2a

    .line 725
    .line 726
    invoke-virtual {v5}, Lcashier/data/Card;->i()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v13

    .line 730
    if-nez v13, :cond_2c

    .line 731
    .line 732
    :cond_2a
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 733
    .line 734
    .line 735
    move-result-object v5

    .line 736
    if-eqz v5, :cond_2b

    .line 737
    .line 738
    invoke-virtual {v5}, Lcashier/data/PayChannelItem;->p()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v13

    .line 742
    goto :goto_20

    .line 743
    :cond_2b
    move-object v13, v4

    .line 744
    :cond_2c
    :goto_20
    const-string v5, "method_tip"

    .line 745
    .line 746
    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    if-eqz v13, :cond_2e

    .line 750
    .line 751
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    .line 752
    .line 753
    .line 754
    move-result v5

    .line 755
    if-nez v5, :cond_2d

    .line 756
    .line 757
    goto :goto_21

    .line 758
    :cond_2d
    const/4 v5, 0x1

    .line 759
    const/16 v18, 0x0

    .line 760
    .line 761
    goto :goto_22

    .line 762
    :cond_2e
    :goto_21
    const/4 v5, 0x1

    .line 763
    const/16 v18, 0x1

    .line 764
    .line 765
    :goto_22
    xor-int/lit8 v7, v18, 0x1

    .line 766
    .line 767
    invoke-static {v12, v7}, Ld0g;->t(Landroid/view/View;Z)V

    .line 768
    .line 769
    .line 770
    if-nez v13, :cond_2f

    .line 771
    .line 772
    move-object/from16 v13, v19

    .line 773
    .line 774
    :cond_2f
    invoke-virtual {v3, v13}, Lteam/opay/swarmfoundation/color/DarkColors;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 775
    .line 776
    .line 777
    move-result-object v5

    .line 778
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    .line 780
    .line 781
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 782
    .line 783
    .line 784
    move-result-object v5

    .line 785
    if-eqz v5, :cond_30

    .line 786
    .line 787
    invoke-virtual {v5}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v13

    .line 791
    goto :goto_23

    .line 792
    :cond_30
    move-object v13, v4

    .line 793
    :goto_23
    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 794
    .line 795
    .line 796
    move-result v5

    .line 797
    if-nez v5, :cond_32

    .line 798
    .line 799
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 800
    .line 801
    .line 802
    move-result-object v5

    .line 803
    if-eqz v5, :cond_31

    .line 804
    .line 805
    invoke-virtual {v5}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v13

    .line 809
    goto :goto_24

    .line 810
    :cond_31
    move-object v13, v4

    .line 811
    :goto_24
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 812
    .line 813
    .line 814
    move-result v1

    .line 815
    if-eqz v1, :cond_33

    .line 816
    .line 817
    :cond_32
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->a()Lcashier/data/Card;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    if-eqz v1, :cond_33

    .line 822
    .line 823
    const/4 v1, 0x1

    .line 824
    goto :goto_25

    .line 825
    :cond_33
    const/4 v1, 0x0

    .line 826
    :goto_25
    const-string v5, "method_desc"

    .line 827
    .line 828
    if-eqz v1, :cond_37

    .line 829
    .line 830
    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    invoke-static {v11}, Ld0g;->s(Landroid/view/View;)V

    .line 834
    .line 835
    .line 836
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->a()Lcashier/data/Card;

    .line 837
    .line 838
    .line 839
    move-result-object v1

    .line 840
    if-eqz v1, :cond_34

    .line 841
    .line 842
    invoke-virtual {v1}, Lcashier/data/Card;->m()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v13

    .line 846
    goto :goto_26

    .line 847
    :cond_34
    move-object v13, v4

    .line 848
    :goto_26
    const-string v1, "card"

    .line 849
    .line 850
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 851
    .line 852
    .line 853
    move-result v1

    .line 854
    if-eqz v1, :cond_35

    .line 855
    .line 856
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->a()Lcashier/data/Card;

    .line 857
    .line 858
    .line 859
    move-result-object v1

    .line 860
    invoke-virtual {v1}, Lcashier/data/Card;->d()Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v1

    .line 864
    goto :goto_28

    .line 865
    :cond_35
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->a()Lcashier/data/Card;

    .line 866
    .line 867
    .line 868
    move-result-object v1

    .line 869
    if-eqz v1, :cond_36

    .line 870
    .line 871
    invoke-virtual {v1}, Lcashier/data/Card;->b()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v7

    .line 875
    goto :goto_27

    .line 876
    :cond_36
    move-object v7, v4

    .line 877
    :goto_27
    move-object v1, v7

    .line 878
    :goto_28
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    .line 880
    .line 881
    const/4 v1, 0x1

    .line 882
    goto :goto_2d

    .line 883
    :cond_37
    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 887
    .line 888
    .line 889
    move-result-object v1

    .line 890
    if-eqz v1, :cond_38

    .line 891
    .line 892
    invoke-virtual {v1}, Lcashier/data/PayChannelItem;->g()Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v13

    .line 896
    goto :goto_29

    .line 897
    :cond_38
    move-object v13, v4

    .line 898
    :goto_29
    if-eqz v13, :cond_3a

    .line 899
    .line 900
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    .line 901
    .line 902
    .line 903
    move-result v1

    .line 904
    if-nez v1, :cond_39

    .line 905
    .line 906
    goto :goto_2a

    .line 907
    :cond_39
    const/4 v1, 0x1

    .line 908
    const/16 v18, 0x0

    .line 909
    .line 910
    goto :goto_2b

    .line 911
    :cond_3a
    :goto_2a
    const/4 v1, 0x1

    .line 912
    const/16 v18, 0x1

    .line 913
    .line 914
    :goto_2b
    xor-int/lit8 v5, v18, 0x1

    .line 915
    .line 916
    invoke-static {v11, v5}, Ld0g;->t(Landroid/view/View;Z)V

    .line 917
    .line 918
    .line 919
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 920
    .line 921
    .line 922
    move-result-object v5

    .line 923
    if-eqz v5, :cond_3b

    .line 924
    .line 925
    invoke-virtual {v5}, Lcashier/data/PayChannelItem;->g()Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v7

    .line 929
    goto :goto_2c

    .line 930
    :cond_3b
    move-object v7, v4

    .line 931
    :goto_2c
    if-nez v7, :cond_3c

    .line 932
    .line 933
    move-object/from16 v7, v19

    .line 934
    .line 935
    :cond_3c
    invoke-virtual {v3, v7}, Lteam/opay/swarmfoundation/color/DarkColors;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 936
    .line 937
    .line 938
    move-result-object v3

    .line 939
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 940
    .line 941
    .line 942
    :goto_2d
    const-string v3, "info_ic_right"

    .line 943
    .line 944
    move-object/from16 v4, v16

    .line 945
    .line 946
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 947
    .line 948
    .line 949
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->f()Z

    .line 950
    .line 951
    .line 952
    move-result v2

    .line 953
    if-eqz v2, :cond_3d

    .line 954
    .line 955
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 956
    .line 957
    .line 958
    move-result v2

    .line 959
    if-ne v2, v8, :cond_3d

    .line 960
    .line 961
    const/4 v3, 0x1

    .line 962
    goto :goto_2e

    .line 963
    :cond_3d
    const/4 v3, 0x0

    .line 964
    :goto_2e
    invoke-static {v4, v3}, Ld0g;->t(Landroid/view/View;Z)V

    .line 965
    .line 966
    .line 967
    sget v1, Lteam/opay/pay/cashier/R$mipmap;->pay_pay_method_select:I

    .line 968
    .line 969
    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 970
    .line 971
    .line 972
    move-object/from16 v1, p1

    .line 973
    .line 974
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 975
    .line 976
    move/from16 v2, v17

    .line 977
    .line 978
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 979
    .line 980
    .line 981
    return-void
.end method

.method public final w(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/data/PaymentItem;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    sget v4, Lteam/opay/pay/cashier/R$id;->single_method_icon:I

    .line 7
    .line 8
    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    check-cast v4, Landroid/widget/ImageView;

    .line 13
    .line 14
    sget v5, Lteam/opay/pay/cashier/R$id;->single_method_name:I

    .line 15
    .line 16
    invoke-virtual {v1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    check-cast v5, Landroid/widget/TextView;

    .line 21
    .line 22
    sget v6, Lteam/opay/pay/cashier/R$id;->single_method_amount:I

    .line 23
    .line 24
    invoke-virtual {v1, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Landroid/widget/TextView;

    .line 29
    .line 30
    sget v7, Lteam/opay/pay/cashier/R$id;->single_ic_right:I

    .line 31
    .line 32
    invoke-virtual {v1, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    check-cast v7, Landroid/widget/ImageView;

    .line 37
    .line 38
    sget v8, Lteam/opay/pay/cashier/R$id;->single_method_tag:I

    .line 39
    .line 40
    invoke-virtual {v1, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    check-cast v8, Landroid/widget/TextView;

    .line 45
    .line 46
    move-object/from16 v9, p2

    .line 47
    .line 48
    invoke-virtual {v0, v9}, Lcashier/adapter/PayMethodAdapter;->y(Lcashier/data/PaymentItem;)Z

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    const-string v11, "single_method_icon"

    .line 53
    .line 54
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    const/4 v12, 0x0

    .line 62
    if-eqz v11, :cond_0

    .line 63
    .line 64
    invoke-virtual {v11}, Lcashier/data/PayChannelItem;->h()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move-object v11, v12

    .line 70
    :goto_0
    sget v13, Lteam/opay/pay/cashier/R$drawable;->pay_svg_cashier_balance:I

    .line 71
    .line 72
    invoke-static {v4, v11, v13}, Ld0g;->i(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    sget-object v11, Lteam/opay/swarmfoundation/color/DarkColors;->a:Lteam/opay/swarmfoundation/color/DarkColors;

    .line 76
    .line 77
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    if-eqz v13, :cond_1

    .line 82
    .line 83
    invoke-virtual {v13}, Lcashier/data/PayChannelItem;->f()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    move-object v13, v12

    .line 89
    :goto_1
    const-string v14, ""

    .line 90
    .line 91
    if-nez v13, :cond_2

    .line 92
    .line 93
    move-object v13, v14

    .line 94
    :cond_2
    invoke-virtual {v11, v13}, Lteam/opay/swarmfoundation/color/DarkColors;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    const-string v13, "single_method_amount"

    .line 102
    .line 103
    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v6}, Ld0g;->s(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    iget-object v13, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    sget v15, Lteam/opay/pay/cashier/R$string;->pay_format_meter_number:I

    .line 112
    .line 113
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 114
    .line 115
    .line 116
    move-result-object v16

    .line 117
    if-eqz v16, :cond_3

    .line 118
    .line 119
    invoke-virtual/range {v16 .. v16}, Lcashier/data/PayChannelItem;->b()Lcashier/util/CurrencyAmount;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    if-eqz v2, :cond_3

    .line 124
    .line 125
    invoke-static {v2, v12, v3, v12}, Lcashier/util/CurrencyAmount;->toText$default(Lcashier/util/CurrencyAmount;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    goto :goto_2

    .line 130
    :cond_3
    move-object v2, v12

    .line 131
    :goto_2
    new-array v12, v3, [Ljava/lang/Object;

    .line 132
    .line 133
    const/16 v17, 0x0

    .line 134
    .line 135
    aput-object v2, v12, v17

    .line 136
    .line 137
    invoke-virtual {v13, v15, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    const-string v2, "single_ic_right"

    .line 145
    .line 146
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->f()Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_4

    .line 154
    .line 155
    if-eqz v10, :cond_4

    .line 156
    .line 157
    const/4 v2, 0x1

    .line 158
    goto :goto_3

    .line 159
    :cond_4
    const/4 v2, 0x0

    .line 160
    :goto_3
    invoke-static {v7, v2}, Ld0g;->t(Landroid/view/View;Z)V

    .line 161
    .line 162
    .line 163
    const-string v2, "single_method_tag"

    .line 164
    .line 165
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    if-eqz v2, :cond_5

    .line 173
    .line 174
    invoke-virtual {v2}, Lcashier/data/PayChannelItem;->r()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    goto :goto_4

    .line 179
    :cond_5
    const/4 v2, 0x0

    .line 180
    :goto_4
    if-eqz v2, :cond_7

    .line 181
    .line 182
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-nez v2, :cond_6

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_6
    const/4 v2, 0x0

    .line 190
    goto :goto_6

    .line 191
    :cond_7
    :goto_5
    const/4 v2, 0x1

    .line 192
    :goto_6
    xor-int/2addr v2, v3

    .line 193
    invoke-static {v8, v2}, Ld0g;->t(Landroid/view/View;Z)V

    .line 194
    .line 195
    .line 196
    invoke-virtual/range {p2 .. p2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    if-eqz v2, :cond_8

    .line 201
    .line 202
    invoke-virtual {v2}, Lcashier/data/PayChannelItem;->r()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    goto :goto_7

    .line 207
    :cond_8
    const/4 v12, 0x0

    .line 208
    :goto_7
    if-nez v12, :cond_9

    .line 209
    .line 210
    goto :goto_8

    .line 211
    :cond_9
    move-object v14, v12

    .line 212
    :goto_8
    invoke-virtual {v11, v14}, Lteam/opay/swarmfoundation/color/DarkColors;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    .line 218
    .line 219
    sget v2, Lteam/opay/pay/cashier/R$mipmap;->pay_pay_method_select:I

    .line 220
    .line 221
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    .line 223
    .line 224
    if-eqz v10, :cond_a

    .line 225
    .line 226
    const/high16 v2, 0x3f800000    # 1.0f

    .line 227
    .line 228
    goto :goto_9

    .line 229
    :cond_a
    const v2, 0x3ee66666    # 0.45f

    .line 230
    .line 231
    .line 232
    :goto_9
    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    .line 239
    .line 240
    .line 241
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 242
    .line 243
    invoke-virtual {v1, v10}, Landroid/view/View;->setClickable(Z)V

    .line 244
    .line 245
    .line 246
    return-void
.end method

.method public x(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/data/MulDataEntity;)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcashier/data/MulDataEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseViewHolder;",
            "Lcashier/data/MulDataEntity<",
            "Lcashier/data/PaymentItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcashier/data/MulDataEntity;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcashier/data/PaymentItem;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcashier/data/MulDataEntity;->a()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcashier/data/PaymentItem;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcashier/data/PaymentItem;->f()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcashier/data/MulDataEntity;->b()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    if-eq v0, v1, :cond_3

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    if-eq v0, v1, :cond_2

    .line 46
    .line 47
    const/4 v1, 0x3

    .line 48
    if-eq v0, v1, :cond_1

    .line 49
    .line 50
    const/4 v1, 0x4

    .line 51
    if-eq v0, v1, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p2}, Lcashier/data/MulDataEntity;->a()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcashier/data/PaymentItem;

    .line 59
    .line 60
    invoke-virtual {p0, p1, v0}, Lcashier/adapter/PayMethodAdapter;->s(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/data/PaymentItem;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p2}, Lcashier/data/MulDataEntity;->a()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcashier/data/PaymentItem;

    .line 69
    .line 70
    invoke-virtual {p0, p1, v0}, Lcashier/adapter/PayMethodAdapter;->u(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/data/PaymentItem;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {p2}, Lcashier/data/MulDataEntity;->a()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcashier/data/PaymentItem;

    .line 79
    .line 80
    invoke-virtual {p0, p1, v0}, Lcashier/adapter/PayMethodAdapter;->v(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/data/PaymentItem;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {p2}, Lcashier/data/MulDataEntity;->a()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcashier/data/PaymentItem;

    .line 89
    .line 90
    invoke-virtual {p0, p1, v0}, Lcashier/adapter/PayMethodAdapter;->w(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/data/PaymentItem;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 94
    .line 95
    const-string v0, "helper.itemView"

    .line 96
    .line 97
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Lcashier/adapter/PayMethodAdapter$convert$1;

    .line 101
    .line 102
    invoke-direct {v0, p2, p0}, Lcashier/adapter/PayMethodAdapter$convert$1;-><init>(Lcashier/data/MulDataEntity;Lcashier/adapter/PayMethodAdapter;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p1, v0}, Ld0g;->o(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final y(Lcashier/data/PaymentItem;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcashier/adapter/PayMethodAdapter;->b:Z

    .line 2
    .line 3
    const-string v1, "Y"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcashier/data/PaymentItem;->g()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcashier/data/PaymentItem;->g()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter;->a:Lcashier/model/CashierViewModel;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->T()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter;->a:Lcashier/model/CashierViewModel;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcashier/data/ConfirmPayReq;->c()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 p1, 0x0

    .line 56
    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    :cond_2
    const/4 p1, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const/4 p1, 0x0

    .line 65
    :goto_1
    return p1
.end method

.method public final z(Lcashier/data/QuestionMark;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcashier/data/QuestionMark;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const-string v1, "jump"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcashier/adapter/PayMethodAdapter;->a:Lcashier/model/CashierViewModel;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcashier/data/QuestionMark;->b()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    const-string p1, ""

    .line 26
    .line 27
    :cond_1
    iget-object v1, p0, Lcashier/adapter/PayMethodAdapter;->c:Lag8;

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Lcashier/model/CashierViewModel;->W(Ljava/lang/String;Lag8;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {p0, p1}, Lcashier/adapter/PayMethodAdapter;->B(Lcashier/data/QuestionMark;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    return-void
.end method
