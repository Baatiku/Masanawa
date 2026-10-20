.class public final Lcashier/model/PaymentManagerKt;
.super Ljava/lang/Object;
.source "PaymentManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a%\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0007H\u0000\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcashier/model/CashierViewModel;",
        "viewModel",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "",
        "b",
        "(Lcashier/model/CashierViewModel;Landroidx/fragment/app/FragmentActivity;)V",
        "Lkotlin/Function0;",
        "cancelBlock",
        "a",
        "(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function0;)V",
        "cashier_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function0;)V
    .locals 14
    .param p0    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cancelBlock"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcashier/ui/PayAlertFragment;->g:Lcashier/ui/PayAlertFragment$Companion;

    .line 12
    .line 13
    new-instance v13, Lcashier/ui/AlertInfo;

    .line 14
    .line 15
    sget v1, Lteam/opay/pay/cashier/R$string;->pay_reminder:I

    .line 16
    .line 17
    invoke-static {v1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sget v1, Lteam/opay/pay/cashier/R$string;->pay_exit_notice:I

    .line 22
    .line 23
    invoke-static {v1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    sget v1, Lteam/opay/pay/cashier/R$string;->pay_exit_continue:I

    .line 28
    .line 29
    invoke-static {v1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    sget v1, Lteam/opay/pay/cashier/R$string;->pay_cancel:I

    .line 34
    .line 35
    invoke-static {v1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const/16 v11, 0x1f0

    .line 40
    .line 41
    const/4 v12, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v9, 0x0

    .line 46
    const/4 v10, 0x0

    .line 47
    move-object v1, v13

    .line 48
    invoke-direct/range {v1 .. v12}, Lcashier/ui/AlertInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/text/SpannableStringBuilder;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v13}, Lcashier/ui/PayAlertFragment$Companion;->a(Lcashier/ui/AlertInfo;)Lcashier/ui/PayAlertFragment;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Lcashier/model/PaymentManagerKt$showConfirmDialog$2$1;

    .line 56
    .line 57
    invoke-direct {v1, p1}, Lcashier/model/PaymentManagerKt$showConfirmDialog$2$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcashier/ui/PayAlertFragment;->I(Lkotlin/jvm/functions/Function1;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0}, Lcashier/util/UtilsKt;->n(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/DialogFragment;)V

    .line 64
    .line 65
    .line 66
    sget-object v2, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 67
    .line 68
    const/4 v6, 0x6

    .line 69
    const-string v3, "COMMON_pay_window_close_window_show"

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    const/4 v5, 0x0

    .line 73
    invoke-static/range {v2 .. v7}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public static final b(Lcashier/model/CashierViewModel;Landroidx/fragment/app/FragmentActivity;)V
    .locals 14
    .param p0    # Lcashier/model/CashierViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "viewModel"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "activity"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcashier/ui/PayAlertFragment;->g:Lcashier/ui/PayAlertFragment$Companion;

    .line 12
    .line 13
    new-instance v13, Lcashier/ui/AlertInfo;

    .line 14
    .line 15
    sget v1, Lteam/opay/pay/cashier/R$string;->pay_reminder:I

    .line 16
    .line 17
    invoke-static {v1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0}, Lcashier/model/CashierViewModel;->h0()Lcashier/data/CashierInfoRsp;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lcashier/data/CashierInfoRsp;->m()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    move-object v3, v1

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :goto_1
    sget v1, Lteam/opay/pay/cashier/R$string;->pay_exit_notice:I

    .line 37
    .line 38
    invoke-static {v1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_0

    .line 43
    :goto_2
    sget v1, Lteam/opay/pay/cashier/R$string;->pay_exit_continue:I

    .line 44
    .line 45
    invoke-static {v1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    sget v1, Lteam/opay/pay/cashier/R$string;->pay_cancel:I

    .line 50
    .line 51
    invoke-static {v1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const/16 v11, 0x1f0

    .line 56
    .line 57
    const/4 v12, 0x0

    .line 58
    const/4 v6, 0x0

    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v8, 0x0

    .line 61
    const/4 v9, 0x0

    .line 62
    const/4 v10, 0x0

    .line 63
    move-object v1, v13

    .line 64
    invoke-direct/range {v1 .. v12}, Lcashier/ui/AlertInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/text/SpannableStringBuilder;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v13}, Lcashier/ui/PayAlertFragment$Companion;->a(Lcashier/ui/AlertInfo;)Lcashier/ui/PayAlertFragment;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Lcashier/model/PaymentManagerKt$showConfirmDialog$1$1;

    .line 72
    .line 73
    invoke-direct {v1, p0, p1}, Lcashier/model/PaymentManagerKt$showConfirmDialog$1$1;-><init>(Lcashier/model/CashierViewModel;Landroidx/fragment/app/FragmentActivity;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcashier/ui/PayAlertFragment;->I(Lkotlin/jvm/functions/Function1;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1, v0}, Lcashier/util/UtilsKt;->n(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/DialogFragment;)V

    .line 80
    .line 81
    .line 82
    sget-object v2, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 83
    .line 84
    const/4 v6, 0x6

    .line 85
    const-string v3, "COMMON_pay_window_close_window_show"

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    const/4 v5, 0x0

    .line 89
    invoke-static/range {v2 .. v7}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
