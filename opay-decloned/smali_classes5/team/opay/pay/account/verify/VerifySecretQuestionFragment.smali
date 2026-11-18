.class public final Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;
.super Lteam/opay/pay/account/verify/BaseVerifyFragment;
.source "VerifySecretQuestionFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/account/verify/VerifySecretQuestionFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/account/verify/BaseVerifyFragment<",
        "Lhvf;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 $2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001%B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J!\u0010\u000c\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001d\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R!\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u001b\u001a\u0004\u0008!\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;",
        "Lteam/opay/pay/account/verify/BaseVerifyFragment;",
        "Lhvf;",
        "<init>",
        "()V",
        "",
        "F0",
        "M0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/pay/home/security/SecretQuestionResult;",
        "data",
        "",
        "Lteam/opay/core/card/MultiDataItemEntry;",
        "H0",
        "(Lteam/opay/pay/home/security/SecretQuestionResult;)Ljava/util/List;",
        "Lteam/opay/pay/account/verify/ValidationType;",
        "q",
        "Lteam/opay/pay/account/verify/ValidationType;",
        "validationType",
        "",
        "Lteam/opay/pay/home/security/SecretQuestion;",
        "r",
        "Lid8;",
        "E0",
        "()Ljava/util/List;",
        "questionList",
        "Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;",
        "s",
        "D0",
        "()Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;",
        "adapter",
        "t",
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
.field public static final t:Lteam/opay/pay/account/verify/VerifySecretQuestionFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final q:Lteam/opay/pay/account/verify/ValidationType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->t:Lteam/opay/pay/account/verify/VerifySecretQuestionFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment$1;->INSTANCE:Lteam/opay/pay/account/verify/VerifySecretQuestionFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/account/verify/ValidationType;->SECRET_QUESTION:Lteam/opay/pay/account/verify/ValidationType;

    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->q:Lteam/opay/pay/account/verify/ValidationType;

    .line 9
    .line 10
    new-instance v0, Lcvf;

    .line 11
    .line 12
    invoke-direct {v0}, Lcvf;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->r:Lid8;

    .line 20
    .line 21
    new-instance v0, Ldvf;

    .line 22
    .line 23
    invoke-direct {v0}, Ldvf;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->s:Lid8;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic A0(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->I0(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B0(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/account/verify/ValidationType;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->O0(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/account/verify/ValidationType;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final C0()Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final F0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->q0()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "getViewLifecycleOwner(...)"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lgvf;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lgvf;-><init>(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static final G0(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    sget-object v2, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 11
    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lhvf;

    .line 19
    .line 20
    iget-object v1, v1, Lhvf;->f:Lteam/opay/core/android/views/PulseLoaderView;

    .line 21
    .line 22
    const-string v2, "loading"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lhvf;

    .line 35
    .line 36
    iget-object v1, v1, Lhvf;->c:Lcom/google/android/material/button/MaterialButton;

    .line 37
    .line 38
    const-string v2, "btnConfirm"

    .line 39
    .line 40
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_2
    sget-object v1, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 53
    .line 54
    if-ne v0, v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->D0()Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lteam/opay/pay/home/security/SecretQuestionResult;

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->H0(Lteam/opay/pay/home/security/SecretQuestionResult;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v0, p0}, Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;->setNewData(Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p0
.end method

.method public static final I0(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->r0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final J0(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->E0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v3, v1

    .line 21
    check-cast v3, Lteam/opay/pay/home/security/SecretQuestion;

    .line 22
    .line 23
    invoke-virtual {v3}, Lteam/opay/pay/home/security/SecretQuestion;->b()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v1, v2

    .line 35
    :goto_0
    check-cast v1, Lteam/opay/pay/home/security/SecretQuestion;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    if-nez p2, :cond_2

    .line 40
    .line 41
    const-string p1, ""

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move-object p1, p2

    .line 45
    :goto_1
    invoke-virtual {v1, p1}, Lteam/opay/pay/home/security/SecretQuestion;->d(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    const/4 p1, 0x0

    .line 49
    if-eqz p2, :cond_8

    .line 50
    .line 51
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_4

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Lhvf;

    .line 63
    .line 64
    iget-object p2, p2, Lhvf;->c:Lcom/google/android/material/button/MaterialButton;

    .line 65
    .line 66
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->E0()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    move-object v1, v0

    .line 85
    check-cast v1, Lteam/opay/pay/home/security/SecretQuestion;

    .line 86
    .line 87
    invoke-virtual {v1}, Lteam/opay/pay/home/security/SecretQuestion;->a()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_5

    .line 96
    .line 97
    move-object v2, v0

    .line 98
    :cond_6
    if-nez v2, :cond_7

    .line 99
    .line 100
    const/4 p1, 0x1

    .line 101
    :cond_7
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    check-cast p0, Lhvf;

    .line 110
    .line 111
    iget-object p0, p0, Lhvf;->c:Lcom/google/android/material/button/MaterialButton;

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 114
    .line 115
    .line 116
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 117
    .line 118
    return-object p0
.end method

.method public static final K0(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lhvf;

    .line 6
    .line 7
    iget-object v0, v0, Lhvf;->f:Lteam/opay/core/android/views/PulseLoaderView;

    .line 8
    .line 9
    const-string v1, "loading"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->M0()V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method public static final L0()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final M0()V
    .locals 30

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValChainId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    const-string v2, ""

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    move-object v14, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move-object v14, v0

    .line 27
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getSecurityId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_2
    if-nez v1, :cond_3

    .line 42
    .line 43
    move-object/from16 v20, v2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    move-object/from16 v20, v1

    .line 47
    .line 48
    :goto_2
    new-instance v0, Lcom/google/gson/Gson;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->E0()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "toJson(...)"

    .line 62
    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v12, v0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->X(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v15

    .line 70
    iget-object v0, v12, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->q:Lteam/opay/pay/account/verify/ValidationType;

    .line 71
    .line 72
    move-object/from16 v16, v0

    .line 73
    .line 74
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v18

    .line 82
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v17

    .line 90
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->R()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v19

    .line 98
    new-instance v1, Lteam/opay/pay/account/verify/ValidationRequest;

    .line 99
    .line 100
    move-object v13, v1

    .line 101
    const/16 v28, 0x3f80

    .line 102
    .line 103
    const/16 v29, 0x0

    .line 104
    .line 105
    const/16 v21, 0x0

    .line 106
    .line 107
    const/16 v22, 0x0

    .line 108
    .line 109
    const/16 v23, 0x0

    .line 110
    .line 111
    const/16 v24, 0x0

    .line 112
    .line 113
    const/16 v25, 0x0

    .line 114
    .line 115
    const/16 v26, 0x0

    .line 116
    .line 117
    const/16 v27, 0x0

    .line 118
    .line 119
    invoke-direct/range {v13 .. v29}, Lteam/opay/pay/account/verify/ValidationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 120
    .line 121
    .line 122
    new-instance v9, Levf;

    .line 123
    .line 124
    invoke-direct {v9, v12}, Levf;-><init>(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object v3, v12, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->q:Lteam/opay/pay/account/verify/ValidationType;

    .line 132
    .line 133
    new-instance v8, Lfvf;

    .line 134
    .line 135
    invoke-direct {v8, v12, v9}, Lfvf;-><init>(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;Lkotlin/jvm/functions/Function1;)V

    .line 136
    .line 137
    .line 138
    const/16 v10, 0x78

    .line 139
    .line 140
    const/4 v11, 0x0

    .line 141
    const/4 v4, 0x0

    .line 142
    const/4 v5, 0x0

    .line 143
    const/4 v6, 0x0

    .line 144
    const/4 v7, 0x0

    .line 145
    move-object/from16 v2, p0

    .line 146
    .line 147
    invoke-static/range {v0 .. v11}, Lteam/opay/pay/account/verify/VerifyViewModel;->P0(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/verify/ValidationRequest;Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/pay/account/verify/ValidationType;ZLjava/lang/String;Ljava/lang/String;ZLhm6;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public static final N0(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lhvf;

    .line 11
    .line 12
    iget-object v0, v0, Lhvf;->f:Lteam/opay/core/android/views/PulseLoaderView;

    .line 13
    .line 14
    const-string v1, "loading"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    sget p1, Lteam/opay/pay/R$string;->verify_error_msg:I

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string p0, "getString(...)"

    .line 39
    .line 40
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-static {v0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p0
.end method

.method public static final O0(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/account/verify/ValidationType;Z)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "resource"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "validationType"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget v1, Lteam/opay/pay/R$string;->osdk_verification_pass:I

    .line 16
    .line 17
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->S()Lteam/opay/pay/account/verify/VerifyManager;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0, p2, p3, p4, p1}, Lteam/opay/pay/account/verify/VerifyManager;->Y(Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/account/verify/ValidationType;ZLkotlin/jvm/functions/Function1;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method

.method public static synthetic u0()Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->C0()Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic v0(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->J0(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w0(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->K0(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x0(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->N0(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y0(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->G0(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z0()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->L0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final D0()Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->s:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final E0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/home/security/SecretQuestion;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->r:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method public final H0(Lteam/opay/pay/home/security/SecretQuestionResult;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/security/SecretQuestionResult;",
            ")",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/home/security/SecretQuestionResult;->a()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_a

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_7

    .line 15
    .line 16
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/home/security/SecretQuestionResult;->a()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_9

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lteam/opay/pay/home/security/QuestionAnswerList;

    .line 40
    .line 41
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->E0()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3}, Lteam/opay/pay/home/security/QuestionAnswerList;->d()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const-string v6, ""

    .line 50
    .line 51
    if-nez v5, :cond_2

    .line 52
    .line 53
    move-object v8, v6

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move-object v8, v5

    .line 56
    :goto_0
    invoke-virtual {v3}, Lteam/opay/pay/home/security/QuestionAnswerList;->e()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    if-nez v5, :cond_3

    .line 61
    .line 62
    move-object v11, v6

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    move-object v11, v5

    .line 65
    :goto_1
    invoke-virtual {v3}, Lteam/opay/pay/home/security/QuestionAnswerList;->c()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    if-nez v5, :cond_4

    .line 70
    .line 71
    move-object v9, v6

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move-object v9, v5

    .line 74
    :goto_2
    invoke-virtual {v3}, Lteam/opay/pay/home/security/QuestionAnswerList;->f()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    if-nez v5, :cond_5

    .line 79
    .line 80
    move-object v12, v6

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    move-object v12, v5

    .line 83
    :goto_3
    invoke-virtual {v3}, Lteam/opay/pay/home/security/QuestionAnswerList;->b()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-nez v5, :cond_6

    .line 88
    .line 89
    move-object v14, v6

    .line 90
    goto :goto_4

    .line 91
    :cond_6
    move-object v14, v5

    .line 92
    :goto_4
    new-instance v5, Lteam/opay/pay/home/security/SecretQuestion;

    .line 93
    .line 94
    const/16 v15, 0x24

    .line 95
    .line 96
    const/16 v16, 0x0

    .line 97
    .line 98
    const/4 v10, 0x0

    .line 99
    const/4 v13, 0x0

    .line 100
    move-object v7, v5

    .line 101
    invoke-direct/range {v7 .. v16}, Lteam/opay/pay/home/security/SecretQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    new-instance v4, Lteam/opay/core/card/MultiDataItemEntry;

    .line 108
    .line 109
    invoke-virtual {v3}, Lteam/opay/pay/home/security/QuestionAnswerList;->c()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    const/4 v6, 0x0

    .line 114
    invoke-direct {v4, v6, v5}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Lteam/opay/pay/home/security/QuestionAnswerList;->a()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    if-eqz v4, :cond_1

    .line 125
    .line 126
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_1

    .line 135
    .line 136
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    add-int/lit8 v7, v6, 0x1

    .line 141
    .line 142
    if-gez v6, :cond_7

    .line 143
    .line 144
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 145
    .line 146
    .line 147
    :cond_7
    check-cast v5, Lteam/opay/pay/home/security/QuestionAnswerListItem;

    .line 148
    .line 149
    invoke-virtual {v3}, Lteam/opay/pay/home/security/QuestionAnswerList;->a()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    sub-int/2addr v8, v0

    .line 158
    if-ne v6, v8, :cond_8

    .line 159
    .line 160
    invoke-virtual {v3}, Lteam/opay/pay/home/security/QuestionAnswerList;->c()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v5, v6}, Lteam/opay/pay/home/security/QuestionAnswerListItem;->d(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 168
    .line 169
    new-instance v6, Lteam/opay/core/card/MultiDataItemEntry;

    .line 170
    .line 171
    const/4 v8, 0x2

    .line 172
    invoke-direct {v6, v8, v5}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_8
    invoke-virtual {v3}, Lteam/opay/pay/home/security/QuestionAnswerList;->c()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-virtual {v5, v6}, Lteam/opay/pay/home/security/QuestionAnswerListItem;->d(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 187
    .line 188
    new-instance v6, Lteam/opay/core/card/MultiDataItemEntry;

    .line 189
    .line 190
    invoke-direct {v6, v0, v5}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    :goto_6
    move v6, v7

    .line 197
    goto :goto_5

    .line 198
    :cond_9
    return-object v1

    .line 199
    :cond_a
    :goto_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lhvf;

    .line 14
    .line 15
    iget-object p1, p1, Lhvf;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    const-string p2, "verifyOther"

    .line 18
    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->t0(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lhvf;

    .line 30
    .line 31
    iget-object p1, p1, Lhvf;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    .line 33
    new-instance p2, Lzuf;

    .line 34
    .line 35
    invoke-direct {p2, p0}, Lzuf;-><init>(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->D0()Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    sget v0, Lteam/opay/pay/R$layout;->layout_verify_titile:I

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-static {p2, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;)I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lhvf;

    .line 64
    .line 65
    iget-object p1, p1, Lhvf;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->D0()Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->D0()Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance p2, Lavf;

    .line 79
    .line 80
    invoke-direct {p2, p0}, Lavf;-><init>(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;->r(Lkotlin/jvm/functions/Function2;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lhvf;

    .line 91
    .line 92
    iget-object p1, p1, Lhvf;->c:Lcom/google/android/material/button/MaterialButton;

    .line 93
    .line 94
    const-string p2, "btnConfirm"

    .line 95
    .line 96
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance p2, Lbvf;

    .line 100
    .line 101
    invoke-direct {p2, p0}, Lbvf;-><init>(Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lteam/opay/pay/account/verify/VerifySecretQuestionFragment;->F0()V

    .line 108
    .line 109
    .line 110
    return-void
.end method
