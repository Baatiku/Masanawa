.class public final Lteam/opay/pay/payment/verification/OtpVerificationViewModel;
.super Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;
.source "OtpVerificationActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ#\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\t0\u00082\u0006\u0010\u000e\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u001d\u001a\u00020\u00188\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u001a\u0010#\u001a\u00020\u001e8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "Lteam/opay/pay/payment/verification/OtpVerificationViewModel;",
        "Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;",
        "Lteam/opay/pay/payment/PaymentRepository;",
        "paymentRepository",
        "Lteam/opay/pay/cashier/CashierRepository;",
        "cashierRepository",
        "<init>",
        "(Lteam/opay/pay/payment/PaymentRepository;Lteam/opay/pay/cashier/CashierRepository;)V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "",
        "D",
        "()Landroidx/lifecycle/LiveData;",
        "",
        "input",
        "Lteam/opay/core/api/GraphQL$OrderStatus;",
        "C",
        "(Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "h",
        "Lteam/opay/pay/payment/PaymentRepository;",
        "i",
        "Lteam/opay/pay/cashier/CashierRepository;",
        "getCashierRepository",
        "()Lteam/opay/pay/cashier/CashierRepository;",
        "Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;",
        "j",
        "Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;",
        "r",
        "()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;",
        "configuration",
        "Lteam/opay/pay/android/validation/FieldValidation;",
        "k",
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

.field public final i:Lteam/opay/pay/cashier/CashierRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lteam/opay/pay/android/validation/FieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/PaymentRepository;Lteam/opay/pay/cashier/CashierRepository;)V
    .locals 9
    .param p1    # Lteam/opay/pay/payment/PaymentRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/cashier/CashierRepository;
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
    const-string v0, "cashierRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/pay/payment/verification/OtpVerificationViewModel;->h:Lteam/opay/pay/payment/PaymentRepository;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/pay/payment/verification/OtpVerificationViewModel;->i:Lteam/opay/pay/cashier/CashierRepository;

    .line 17
    .line 18
    new-instance p1, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;

    .line 19
    .line 20
    sget p2, Lteam/opay/pay/R$string;->otp_verification_title:I

    .line 21
    .line 22
    sget v0, Lteam/opay/pay/R$string;->otp_verification_description:I

    .line 23
    .line 24
    sget v1, Lteam/opay/pay/R$string;->otp_verification_label:I

    .line 25
    .line 26
    sget v2, Lteam/opay/pay/R$string;->otp_verification_hint:I

    .line 27
    .line 28
    invoke-direct {p1, p2, v0, v1, v2}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;-><init>(IIII)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lteam/opay/pay/payment/verification/OtpVerificationViewModel;->j:Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;

    .line 32
    .line 33
    new-instance p1, Lteam/opay/pay/android/validation/FieldValidation;

    .line 34
    .line 35
    invoke-static {}, Lm7e;->c0()Lkotlin/jvm/functions/Function1;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const/4 v7, 0x4

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v4, 0x1

    .line 42
    const/4 v6, 0x0

    .line 43
    move-object v3, p1

    .line 44
    invoke-direct/range {v3 .. v8}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lteam/opay/pay/payment/verification/OtpVerificationViewModel;->k:Lteam/opay/pay/android/validation/FieldValidation;

    .line 48
    .line 49
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
    sget-object v0, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Lkotlin/Pair;

    .line 10
    .line 11
    const-string v2, "otp_verification_complete_click"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/pay/payment/verification/OtpVerificationViewModel;->h:Lteam/opay/pay/payment/PaymentRepository;

    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->v()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, p1, v1}, Lteam/opay/pay/payment/PaymentRepository;->m(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public final D()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/verification/OtpVerificationViewModel;->i:Lteam/opay/pay/cashier/CashierRepository;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->v()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashier/CashierRepository;->m(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public r()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/verification/OtpVerificationViewModel;->j:Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Lteam/opay/pay/android/validation/FieldValidation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/verification/OtpVerificationViewModel;->k:Lteam/opay/pay/android/validation/FieldValidation;

    .line 2
    .line 3
    return-object v0
.end method
