.class public abstract Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "PaymentVerificationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$Companion;,
        Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008&\u0018\u0000 82\u00020\u0001:\u00029:B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J#\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\t2\u0006\u0010\u0005\u001a\u00020\u0004H$\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u001d\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001d\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u0008R\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R$\u0010)\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u00048\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\u0019\u001a\u0004\u0008(\u0010\u001bR\u001a\u0010/\u001a\u00020*8\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.R\u0014\u00103\u001a\u0002008&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u00102R\u0014\u00107\u001a\u0002048&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00085\u00106\u00a8\u0006;"
    }
    d2 = {
        "Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "",
        "input",
        "",
        "A",
        "(Ljava/lang/String;)V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/api/GraphQL$OrderStatus;",
        "C",
        "(Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lteam/opay/pay/payment/verification/VerificationState;",
        "a",
        "Landroidx/lifecycle/MutableLiveData;",
        "_state",
        "b",
        "Landroidx/lifecycle/LiveData;",
        "w",
        "()Landroidx/lifecycle/LiveData;",
        "state",
        "c",
        "Ljava/lang/String;",
        "v",
        "()Ljava/lang/String;",
        "z",
        "orderId",
        "",
        "d",
        "I",
        "u",
        "()I",
        "y",
        "(I)V",
        "orderAmount",
        "value",
        "e",
        "t",
        "message",
        "",
        "f",
        "Z",
        "s",
        "()Z",
        "maskInput",
        "Lteam/opay/pay/android/validation/FieldValidation;",
        "x",
        "()Lteam/opay/pay/android/validation/FieldValidation;",
        "validator",
        "Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;",
        "r",
        "()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;",
        "configuration",
        "g",
        "UiConfiguration",
        "Companion",
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


# static fields
.field public static final g:Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/payment/verification/VerificationState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/payment/verification/VerificationState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:I

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->g:Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->b:Landroidx/lifecycle/LiveData;

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    iput-object v1, p0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->c:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    iput v2, p0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->d:I

    .line 19
    .line 20
    iput-object v1, p0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->e:Ljava/lang/String;

    .line 21
    .line 22
    sget-object v1, Lteam/opay/pay/payment/verification/VerificationState;->IDLE:Lteam/opay/pay/payment/verification/VerificationState;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->f:Z

    .line 29
    .line 30
    return-void
.end method

.method public static final B(Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->c()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget-object p0, Lteam/opay/pay/payment/verification/VerificationState;->SUCCESS:Lteam/opay/pay/payment/verification/VerificationState;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->d()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lteam/opay/core/android/arch/ResourceError;

    .line 38
    .line 39
    invoke-virtual {p1}, Lteam/opay/core/android/arch/ResourceError;->c()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    const-string p1, ""

    .line 46
    .line 47
    :cond_3
    iput-object p1, p0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->e:Ljava/lang/String;

    .line 48
    .line 49
    sget-object p0, Lteam/opay/pay/payment/verification/VerificationState;->FAILURE:Lteam/opay/pay/payment/verification/VerificationState;

    .line 50
    .line 51
    :goto_1
    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 58
    .line 59
    return-object p0
.end method

.method public static synthetic q(Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->B(Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "input"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->c:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    sget-object v0, Lteam/opay/pay/payment/verification/VerificationState;->FAILURE:Lteam/opay/pay/payment/verification/VerificationState;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lteam/opay/pay/payment/verification/VerificationState;->LOADING:Lteam/opay/pay/payment/verification/VerificationState;

    .line 31
    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->C(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v0, Lxhb;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lxhb;-><init>(Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v0}, Lqna;->b(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public abstract C(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
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
.end method

.method public abstract r()Lteam/opay/pay/payment/verification/PaymentVerificationViewModel$UiConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/payment/verification/VerificationState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->b:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract x()Lteam/opay/pay/android/validation/FieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final y(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/payment/verification/PaymentVerificationViewModel;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
