.class public final Lteam/opay/pay/payment/verification/PhoneVerificationViewModel;
.super Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;
.source "PhoneVerificationActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J#\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n2\u0006\u0010\t\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0018\u001a\u00020\u00138\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u001e\u001a\u00020\u00198\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u001a\u0010$\u001a\u00020\u001f8\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\u00a8\u0006%"
    }
    d2 = {
        "Lteam/opay/pay/payment/verification/PhoneVerificationViewModel;",
        "Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;",
        "Lteam/opay/core/api/e;",
        "sessionProvider",
        "Lteam/opay/pay/payment/PaymentRepository;",
        "paymentRepository",
        "<init>",
        "(Lteam/opay/core/api/e;Lteam/opay/pay/payment/PaymentRepository;)V",
        "",
        "input",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/api/GraphQL$OrderStatus;",
        "C",
        "(Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "h",
        "Lteam/opay/core/api/e;",
        "i",
        "Lteam/opay/pay/payment/PaymentRepository;",
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
        "",
        "l",
        "Z",
        "s",
        "()Z",
        "maskInput",
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
.field public final h:Lteam/opay/core/api/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lteam/opay/pay/payment/PaymentRepository;
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

.field public final l:Z


# direct methods
.method public constructor <init>(Lteam/opay/core/api/e;Lteam/opay/pay/payment/PaymentRepository;)V
    .locals 9
    .param p1    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/payment/PaymentRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sessionProvider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "paymentRepository"

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
    iput-object p1, p0, Lteam/opay/pay/payment/verification/PhoneVerificationViewModel;->h:Lteam/opay/core/api/e;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/pay/payment/verification/PhoneVerificationViewModel;->i:Lteam/opay/pay/payment/PaymentRepository;

    .line 17
    .line 18
    new-instance p2, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;

    .line 19
    .line 20
    sget v0, Lteam/opay/pay/R$string;->phone_verification_header:I

    .line 21
    .line 22
    sget v1, Lteam/opay/pay/R$string;->phone_verification_description:I

    .line 23
    .line 24
    sget v2, Lteam/opay/pay/R$string;->phone_number:I

    .line 25
    .line 26
    invoke-direct {p2, v0, v1, v2, v2}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;-><init>(IIII)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lteam/opay/pay/payment/verification/PhoneVerificationViewModel;->j:Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;

    .line 30
    .line 31
    new-instance p2, Lteam/opay/pay/android/validation/FieldValidation;

    .line 32
    .line 33
    sget v0, Lteam/opay/pay/R$string;->invalid_phone:I

    .line 34
    .line 35
    invoke-static {p1, v0}, Lm7e;->o0(Lteam/opay/core/api/e;I)Lkotlin/jvm/functions/Function1;

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
    move-object v3, p2

    .line 44
    invoke-direct/range {v3 .. v8}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Lteam/opay/pay/payment/verification/PhoneVerificationViewModel;->k:Lteam/opay/pay/android/validation/FieldValidation;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
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
    iget-object v0, p0, Lteam/opay/pay/payment/verification/PhoneVerificationViewModel;->i:Lteam/opay/pay/payment/PaymentRepository;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->v()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, p1, v1}, Lteam/opay/pay/payment/PaymentRepository;->n(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public r()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/verification/PhoneVerificationViewModel;->j:Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/payment/verification/PhoneVerificationViewModel;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public x()Lteam/opay/pay/android/validation/FieldValidation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/verification/PhoneVerificationViewModel;->k:Lteam/opay/pay/android/validation/FieldValidation;

    .line 2
    .line 3
    return-object v0
.end method
