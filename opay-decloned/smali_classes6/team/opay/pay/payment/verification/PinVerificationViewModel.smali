.class public final Lteam/opay/pay/payment/verification/PinVerificationViewModel;
.super Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;
.source "PinVerificationActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J#\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0014\u001a\u00020\u000f8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u001a\u001a\u00020\u00158\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/pay/payment/verification/PinVerificationViewModel;",
        "Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;",
        "Lteam/opay/pay/payment/PaymentRepository;",
        "paymentRepository",
        "<init>",
        "(Lteam/opay/pay/payment/PaymentRepository;)V",
        "",
        "input",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/api/GraphQL$OrderStatus;",
        "C",
        "(Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "h",
        "Lteam/opay/pay/payment/PaymentRepository;",
        "Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;",
        "i",
        "Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;",
        "r",
        "()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;",
        "configuration",
        "Lteam/opay/pay/android/validation/FieldValidation;",
        "j",
        "Lteam/opay/pay/android/validation/FieldValidation;",
        "x",
        "()Lteam/opay/pay/android/validation/FieldValidation;",
        "validator",
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
.field public final h:Lteam/opay/pay/payment/PaymentRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lteam/opay/pay/android/validation/FieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/PaymentRepository;)V
    .locals 10
    .param p1    # Lteam/opay/pay/payment/PaymentRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "paymentRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/payment/verification/PinVerificationViewModel;->h:Lteam/opay/pay/payment/PaymentRepository;

    .line 10
    .line 11
    new-instance p1, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;

    .line 12
    .line 13
    sget v0, Lteam/opay/pay/R$string;->pin_verification_title:I

    .line 14
    .line 15
    sget v1, Lteam/opay/pay/R$string;->pin_verification_description:I

    .line 16
    .line 17
    sget v2, Lteam/opay/pay/R$string;->pin_verification_label:I

    .line 18
    .line 19
    sget v3, Lteam/opay/pay/R$string;->pin_verification_hint:I

    .line 20
    .line 21
    invoke-direct {p1, v0, v1, v2, v3}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;-><init>(IIII)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lteam/opay/pay/payment/verification/PinVerificationViewModel;->i:Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;

    .line 25
    .line 26
    new-instance p1, Lteam/opay/pay/android/validation/FieldValidation;

    .line 27
    .line 28
    invoke-static {}, Lm7e;->a0()Lkotlin/jvm/functions/Function1;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    const/4 v8, 0x4

    .line 33
    const/4 v9, 0x0

    .line 34
    const/4 v5, 0x1

    .line 35
    const/4 v7, 0x0

    .line 36
    move-object v4, p1

    .line 37
    invoke-direct/range {v4 .. v9}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lteam/opay/pay/payment/verification/PinVerificationViewModel;->j:Lteam/opay/pay/android/validation/FieldValidation;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/GraphQL$OrderStatus;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "input"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ltfb;->a:Ltfb;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Lkotlin/Pair;

    .line 10
    .line 11
    const-string v2, "pin_verification_complete_click"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Ltfb;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/pay/payment/verification/PinVerificationViewModel;->h:Lteam/opay/pay/payment/PaymentRepository;

    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->v()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, p1, v1}, Lteam/opay/pay/payment/PaymentRepository;->o(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public r()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/verification/PinVerificationViewModel;->i:Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Lteam/opay/pay/android/validation/FieldValidation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/verification/PinVerificationViewModel;->j:Lteam/opay/pay/android/validation/FieldValidation;

    .line 2
    .line 3
    return-object v0
.end method
