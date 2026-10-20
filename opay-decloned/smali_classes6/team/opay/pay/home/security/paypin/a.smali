.class public final Lteam/opay/pay/home/security/paypin/a;
.super Ljava/lang/Object;
.source "PayPinInputFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u001aW\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0008\u001a\u00020\u00072\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "",
        "message",
        "",
        "setPin",
        "code",
        "",
        "from",
        "Lteam/opay/pay/cashier/PaySheetViewModel;",
        "viewModel",
        "Lkotlin/Function0;",
        "",
        "closeCallback",
        "a",
        "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ZLjava/lang/String;ILteam/opay/pay/cashier/PaySheetViewModel;Lkotlin/jvm/functions/Function0;)V",
        "sdk_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ZLjava/lang/String;ILteam/opay/pay/cashier/PaySheetViewModel;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lteam/opay/pay/cashier/PaySheetViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "I",
            "Lteam/opay/pay/cashier/PaySheetViewModel;",
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
    const-string v0, "message"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget p1, Lteam/opay/pay/R$string;->bad_gateway_error:I

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "getString(...)"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object v0, Lteam/opay/pay/home/security/paypin/PayPinInputPromptFragment;->o:Lteam/opay/pay/home/security/paypin/PayPinInputPromptFragment$Companion;

    .line 29
    .line 30
    invoke-virtual {v0, p2, p1, p3, p4}, Lteam/opay/pay/home/security/paypin/PayPinInputPromptFragment$Companion;->a(ZLjava/lang/String;Ljava/lang/String;I)Lteam/opay/pay/home/security/paypin/PayPinInputPromptFragment;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2, p6}, Lteam/opay/pay/home/security/paypin/PayPinInputPromptFragment;->S(Lkotlin/jvm/functions/Function0;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p2}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 41
    .line 42
    if-eqz p5, :cond_1

    .line 43
    .line 44
    invoke-virtual {p5}, Lteam/opay/pay/cashier/PaySheetViewModel;->m0()Lteam/opay/pay/cashier/OrderInput;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 p2, 0x0

    .line 50
    :goto_0
    new-instance p3, Lkotlin/Pair;

    .line 51
    .line 52
    const-string p5, "error_message"

    .line 53
    .line 54
    invoke-direct {p3, p5, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string p4, "from"

    .line 62
    .line 63
    invoke-static {p4, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/4 p4, 0x2

    .line 68
    new-array p4, p4, [Lkotlin/Pair;

    .line 69
    .line 70
    const/4 p5, 0x0

    .line 71
    aput-object p3, p4, p5

    .line 72
    .line 73
    const/4 p3, 0x1

    .line 74
    aput-object p1, p4, p3

    .line 75
    .line 76
    const-string p1, "COMMON_enter_payment_pin_error_show"

    .line 77
    .line 78
    invoke-virtual {p0, p1, p2, p4}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->a(Ljava/lang/String;Lteam/opay/pay/cashier/OrderInput;[Lkotlin/Pair;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public static synthetic b(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ZLjava/lang/String;ILteam/opay/pay/cashier/PaySheetViewModel;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 9

    .line 1
    and-int/lit8 v0, p7, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v5, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v5, p3

    .line 9
    :goto_0
    and-int/lit8 v0, p7, 0x20

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v7, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v7, p5

    .line 16
    :goto_1
    and-int/lit8 v0, p7, 0x40

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    move-object v8, v1

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    move-object v8, p6

    .line 23
    :goto_2
    move-object v2, p0

    .line 24
    move-object v3, p1

    .line 25
    move v4, p2

    .line 26
    move v6, p4

    .line 27
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/home/security/paypin/a;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ZLjava/lang/String;ILteam/opay/pay/cashier/PaySheetViewModel;Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
