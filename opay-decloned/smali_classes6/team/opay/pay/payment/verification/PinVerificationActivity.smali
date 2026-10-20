.class public final Lteam/opay/pay/payment/verification/PinVerificationActivity;
.super Lteam/opay/pay/payment/verification/Hilt_PinVerificationActivity;
.source "PinVerificationActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003R\u001a\u0010\u000b\u001a\u00020\u00068\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\u0011\u001a\u00020\u000c8TX\u0094\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/pay/payment/verification/PinVerificationActivity;",
        "Lteam/opay/pay/payment/verification/PaymentVerificationActivity;",
        "<init>",
        "()V",
        "",
        "onBackPressed",
        "",
        "j",
        "Ljava/lang/String;",
        "getTAG",
        "()Ljava/lang/String;",
        "TAG",
        "Lteam/opay/pay/payment/verification/PinVerificationViewModel;",
        "k",
        "Lid8;",
        "b0",
        "()Lteam/opay/pay/payment/verification/PinVerificationViewModel;",
        "viewModel",
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
.field public final j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/verification/Hilt_PinVerificationActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "CardPinVerActivity"

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/pay/payment/verification/PinVerificationActivity;->j:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lteam/opay/pay/payment/verification/PinVerificationActivity$special$$inlined$viewModels$default$1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/verification/PinVerificationActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 14
    .line 15
    const-class v2, Lteam/opay/pay/payment/verification/PinVerificationViewModel;

    .line 16
    .line 17
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v3, Lteam/opay/pay/payment/verification/PinVerificationActivity$special$$inlined$viewModels$default$2;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/verification/PinVerificationActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lteam/opay/pay/payment/verification/PinVerificationActivity$special$$inlined$viewModels$default$3;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/verification/PinVerificationActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lteam/opay/pay/payment/verification/PinVerificationActivity;->k:Lid8;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic O()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PinVerificationActivity;->b0()Lteam/opay/pay/payment/verification/PinVerificationViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public b0()Lteam/opay/pay/payment/verification/PinVerificationViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/verification/PinVerificationActivity;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/verification/PinVerificationViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/verification/PinVerificationActivity;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    sget-object v0, Ltfb;->a:Ltfb;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "pin_verification_back_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Ltfb;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationActivity;->onBackPressed()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
