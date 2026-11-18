.class public final Lteam/opay/pay/android/validation/AllInputValidLiveData;
.super Landroidx/lifecycle/MediatorLiveData;
.source "AllInputValidLiveData.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/MediatorLiveData<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u001b\u0012\u0012\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\u0004\"\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001d\u0010\u000c\u001a\u00020\u00002\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/pay/android/validation/AllInputValidLiveData;",
        "Landroidx/lifecycle/MediatorLiveData;",
        "",
        "",
        "",
        "Lteam/opay/pay/android/validation/FieldValidation;",
        "inputValidations",
        "<init>",
        "([Lteam/opay/pay/android/validation/FieldValidation;)V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/android/validation/ValidationInfo;",
        "validation",
        "g",
        "(Landroidx/lifecycle/LiveData;)Lteam/opay/pay/android/validation/AllInputValidLiveData;",
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


# direct methods
.method public varargs constructor <init>([Lteam/opay/pay/android/validation/FieldValidation;)V
    .locals 5
    .param p1    # [Lteam/opay/pay/android/validation/FieldValidation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "inputValidations"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lteam/opay/pay/android/validation/a;->a([Lteam/opay/pay/android/validation/FieldValidation;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    array-length v0, p1

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-ge v1, v0, :cond_0

    .line 23
    .line 24
    aget-object v2, p1, v1

    .line 25
    .line 26
    invoke-virtual {v2}, Lteam/opay/pay/android/validation/FieldValidation;->e()Landroidx/lifecycle/LiveData;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Ldr;

    .line 31
    .line 32
    invoke-direct {v3, p0, p1}, Ldr;-><init>(Lteam/opay/pay/android/validation/AllInputValidLiveData;[Lteam/opay/pay/android/validation/FieldValidation;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/android/validation/a$a;

    .line 36
    .line 37
    invoke-direct {v4, v3}, Lteam/opay/pay/android/validation/a$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2, v4}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public static synthetic d(Lteam/opay/pay/android/validation/AllInputValidLiveData;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/android/validation/AllInputValidLiveData;->h(Lteam/opay/pay/android/validation/AllInputValidLiveData;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lteam/opay/pay/android/validation/AllInputValidLiveData;[Lteam/opay/pay/android/validation/FieldValidation;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/android/validation/AllInputValidLiveData;->f(Lteam/opay/pay/android/validation/AllInputValidLiveData;[Lteam/opay/pay/android/validation/FieldValidation;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final f(Lteam/opay/pay/android/validation/AllInputValidLiveData;[Lteam/opay/pay/android/validation/FieldValidation;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lteam/opay/pay/android/validation/a;->a([Lteam/opay/pay/android/validation/FieldValidation;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final h(Lteam/opay/pay/android/validation/AllInputValidLiveData;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/android/validation/ValidationInfo;->d()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public g(Landroidx/lifecycle/LiveData;)Lteam/opay/pay/android/validation/AllInputValidLiveData;
    .locals 2
    .param p1    # Landroidx/lifecycle/LiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/android/validation/ValidationInfo;",
            ">;)",
            "Lteam/opay/pay/android/validation/AllInputValidLiveData;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "validation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ler;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Ler;-><init>(Lteam/opay/pay/android/validation/AllInputValidLiveData;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lteam/opay/pay/android/validation/a$a;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lteam/opay/pay/android/validation/a$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, v1}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method
