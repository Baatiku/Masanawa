.class public final Lteam/opay/pay/account/verify/VerifyPasswordFragment;
.super Lteam/opay/pay/account/verify/Hilt_VerifyPasswordFragment;
.source "VerifyPasswordFragment.kt"

# interfaces
.implements Lyh3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/account/verify/VerifyPasswordFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/account/verify/Hilt_VerifyPasswordFragment<",
        "Lqj6;",
        ">;",
        "Lyh3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \"2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001#B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J#\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0005J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lteam/opay/pay/account/verify/VerifyPasswordFragment;",
        "Lteam/opay/pay/account/verify/BaseVerifyFragment;",
        "Lqj6;",
        "Lyh3;",
        "<init>",
        "()V",
        "",
        "C0",
        "",
        "show",
        "",
        "message",
        "A0",
        "(ZLjava/lang/String;)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onActivityCreated",
        "(Landroid/os/Bundle;)V",
        "I0",
        "pin",
        "J0",
        "(Ljava/lang/String;)V",
        "Lteam/opay/pay/account/verify/ValidationType;",
        "v",
        "Lteam/opay/pay/account/verify/ValidationType;",
        "validationType",
        "Lteam/opay/pay/account/KeyBoardHelper;",
        "w",
        "Lteam/opay/pay/account/KeyBoardHelper;",
        "keyBoardHelper",
        "x",
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
.field public static final x:Lteam/opay/pay/account/verify/VerifyPasswordFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final v:Lteam/opay/pay/account/verify/ValidationType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public w:Lteam/opay/pay/account/KeyBoardHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/account/verify/VerifyPasswordFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/account/verify/VerifyPasswordFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->x:Lteam/opay/pay/account/verify/VerifyPasswordFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/account/verify/VerifyPasswordFragment$1;->INSTANCE:Lteam/opay/pay/account/verify/VerifyPasswordFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/account/verify/Hilt_VerifyPasswordFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/account/verify/ValidationType;->PASSWORD:Lteam/opay/pay/account/verify/ValidationType;

    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->v:Lteam/opay/pay/account/verify/ValidationType;

    .line 9
    .line 10
    return-void
.end method

.method private final A0(ZLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lqj6;

    .line 6
    .line 7
    iget-object v0, v0, Lqj6;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {v0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    sget p1, Lteam/opay/pay/R$string;->error_wrong_code:I

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string p1, "getString(...)"

    .line 27
    .line 28
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public static synthetic B0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    const-string p2, ""

    .line 11
    .line 12
    :cond_1
    invoke-direct {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->A0(ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final C0()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lqj6;

    .line 6
    .line 7
    iget-object v0, v0, Lqj6;->g:Lteam/opay/core/android/views/CodeInputField;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/core/android/views/CodeInputField;->getEditText()Lteam/opay/core/android/views/HiddenEditText;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lqj6;

    .line 21
    .line 22
    iget-object v0, v0, Lqj6;->c:Lt1b;

    .line 23
    .line 24
    invoke-virtual {v0}, Lt1b;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lt1b;->bind(Landroid/view/View;)Lt1b;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "bind(...)"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lteam/opay/pay/account/KeyBoardHelper;

    .line 38
    .line 39
    iget-object v3, v0, Lt1b;->g:Landroid/inputmethodservice/KeyboardView;

    .line 40
    .line 41
    const-string v2, "keyBoardView"

    .line 42
    .line 43
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lqj6;

    .line 51
    .line 52
    iget-object v2, v2, Lqj6;->g:Lteam/opay/core/android/views/CodeInputField;

    .line 53
    .line 54
    invoke-virtual {v2}, Lteam/opay/core/android/views/CodeInputField;->getEditText()Lteam/opay/core/android/views/HiddenEditText;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    iget-object v5, v0, Lt1b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    .line 60
    iget-object v6, v0, Lt1b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    .line 62
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lqj6;

    .line 67
    .line 68
    iget-object v7, v0, Lqj6;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 69
    .line 70
    const/16 v10, 0x60

    .line 71
    .line 72
    const/4 v11, 0x0

    .line 73
    const/4 v8, 0x0

    .line 74
    const/4 v9, 0x0

    .line 75
    move-object v2, v1

    .line 76
    invoke-direct/range {v2 .. v11}, Lteam/opay/pay/account/KeyBoardHelper;-><init>(Landroid/inputmethodservice/KeyboardView;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLt1b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->w:Lteam/opay/pay/account/KeyBoardHelper;

    .line 80
    .line 81
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lqj6;

    .line 86
    .line 87
    iget-object v0, v0, Lqj6;->g:Lteam/opay/core/android/views/CodeInputField;

    .line 88
    .line 89
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->w:Lteam/opay/pay/account/KeyBoardHelper;

    .line 90
    .line 91
    if-nez v1, :cond_0

    .line 92
    .line 93
    const-string v1, "keyBoardHelper"

    .line 94
    .line 95
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    :cond_0
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/CodeInputField;->m(Lteam/opay/pay/account/KeyBoardHelper;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public static final D0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->I0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lqj6;

    .line 9
    .line 10
    iget-object v0, v0, Lqj6;->e:Landroid/widget/Button;

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lqj6;

    .line 17
    .line 18
    iget-object v1, v1, Lqj6;->g:Lteam/opay/core/android/views/CodeInputField;

    .line 19
    .line 20
    invoke-virtual {v1}, Lteam/opay/core/android/views/CodeInputField;->getCode()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x6

    .line 30
    if-ne v1, v3, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->MODIFY_EMAIL:Lteam/opay/pay/account/verify/ModifyType;

    .line 47
    .line 48
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Lqj6;

    .line 63
    .line 64
    iget-object p0, p0, Lqj6;->g:Lteam/opay/core/android/views/CodeInputField;

    .line 65
    .line 66
    invoke-virtual {p0}, Lteam/opay/core/android/views/CodeInputField;->getCode()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-ne p0, v3, :cond_1

    .line 75
    .line 76
    sget-object p0, Lx7b;->a:Lx7b;

    .line 77
    .line 78
    sget-object v0, Lbj5;->a:Lbj5;

    .line 79
    .line 80
    invoke-virtual {v0}, Lbj5;->g()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-array v1, v2, [Lkotlin/Pair;

    .line 85
    .line 86
    invoke-virtual {p0, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    return-object p0
.end method

.method public static final E0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->I0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final F0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->I0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->MODIFY_EMAIL:Lteam/opay/pay/account/verify/ModifyType;

    .line 13
    .line 14
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    sget-object v0, Lx7b;->a:Lx7b;

    .line 26
    .line 27
    sget-object v2, Lbj5;->a:Lbj5;

    .line 28
    .line 29
    invoke-virtual {v2}, Lbj5;->f()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-array v3, v1, [Lkotlin/Pair;

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    sget-object v0, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 39
    .line 40
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v3, p0, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->v:Lteam/opay/pay/account/verify/ValidationType;

    .line 45
    .line 46
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-array v1, v1, [Lkotlin/Pair;

    .line 55
    .line 56
    invoke-virtual {v0, v2, v3, p0, v1}, Lteam/opay/pay/account/verify/c;->e(Landroid/content/Context;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 57
    .line 58
    .line 59
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    .line 61
    return-object p0
.end method

.method public static final G0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->r0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final H0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)Lkotlin/Unit;
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->w:Lteam/opay/pay/account/KeyBoardHelper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "keyBoardHelper"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->i()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->v:Lteam/opay/pay/account/verify/ValidationType;

    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const/4 v3, 0x0

    .line 38
    new-array v3, v3, [Lkotlin/Pair;

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2, p0, v3}, Lteam/opay/pay/account/verify/c;->b(Landroid/content/Context;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 41
    .line 42
    .line 43
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p0
.end method

.method public static final K0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p0, v2, p1, v0, v1}, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->B0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static synthetic u0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->D0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->F0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->G0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->E0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->K0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->H0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final I0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lqj6;

    .line 6
    .line 7
    iget-object v0, v0, Lqj6;->g:Lteam/opay/core/android/views/CodeInputField;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/core/android/views/CodeInputField;->getCode()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x6

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lqj6;

    .line 25
    .line 26
    iget-object v0, v0, Lqj6;->g:Lteam/opay/core/android/views/CodeInputField;

    .line 27
    .line 28
    invoke-virtual {v0}, Lteam/opay/core/android/views/CodeInputField;->getCode()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->J0(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    const/4 v1, 0x2

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static {p0, v0, v2, v1, v2}, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->B0(Lteam/opay/pay/account/verify/VerifyPasswordFragment;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public final J0(Ljava/lang/String;)V
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
    invoke-virtual/range {p0 .. p1}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->X(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v15

    .line 52
    iget-object v0, v12, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->v:Lteam/opay/pay/account/verify/ValidationType;

    .line 53
    .line 54
    move-object/from16 v16, v0

    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v18

    .line 64
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v17

    .line 72
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->R()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v19

    .line 80
    new-instance v1, Lteam/opay/pay/account/verify/ValidationRequest;

    .line 81
    .line 82
    move-object v13, v1

    .line 83
    const/16 v28, 0x3f80

    .line 84
    .line 85
    const/16 v29, 0x0

    .line 86
    .line 87
    const/16 v21, 0x0

    .line 88
    .line 89
    const/16 v22, 0x0

    .line 90
    .line 91
    const/16 v23, 0x0

    .line 92
    .line 93
    const/16 v24, 0x0

    .line 94
    .line 95
    const/16 v25, 0x0

    .line 96
    .line 97
    const/16 v26, 0x0

    .line 98
    .line 99
    const/16 v27, 0x0

    .line 100
    .line 101
    invoke-direct/range {v13 .. v29}, Lteam/opay/pay/account/verify/ValidationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v3, v12, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->v:Lteam/opay/pay/account/verify/ValidationType;

    .line 109
    .line 110
    new-instance v9, Lptf;

    .line 111
    .line 112
    invoke-direct {v9, v12}, Lptf;-><init>(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)V

    .line 113
    .line 114
    .line 115
    const/16 v10, 0xf8

    .line 116
    .line 117
    const/4 v11, 0x0

    .line 118
    const/4 v4, 0x0

    .line 119
    const/4 v5, 0x0

    .line 120
    const/4 v6, 0x0

    .line 121
    const/4 v7, 0x0

    .line 122
    const/4 v8, 0x0

    .line 123
    move-object/from16 v2, p0

    .line 124
    .line 125
    invoke-static/range {v0 .. v11}, Lteam/opay/pay/account/verify/VerifyViewModel;->P0(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/verify/ValidationRequest;Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/pay/account/verify/ValidationType;ZLjava/lang/String;Ljava/lang/String;ZLhm6;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lqj6;

    .line 11
    .line 12
    iget-object p1, p1, Lqj6;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    const-string v0, "verifyOther"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->t0(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->w:Lteam/opay/pay/account/KeyBoardHelper;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const-string p1, "keyBoardHelper"

    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/account/KeyBoardHelper;->s()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
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
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->C0()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lqj6;

    .line 19
    .line 20
    iget-object p1, p1, Lqj6;->g:Lteam/opay/core/android/views/CodeInputField;

    .line 21
    .line 22
    new-instance p2, Lktf;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Lktf;-><init>(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lteam/opay/core/android/views/CodeInputField;->setOnCodeEdited(Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lqj6;

    .line 35
    .line 36
    iget-object p1, p1, Lqj6;->g:Lteam/opay/core/android/views/CodeInputField;

    .line 37
    .line 38
    new-instance p2, Lltf;

    .line 39
    .line 40
    invoke-direct {p2, p0}, Lltf;-><init>(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lteam/opay/core/android/views/CodeInputField;->setOnActionDone(Lkotlin/jvm/functions/Function0;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lqj6;

    .line 51
    .line 52
    iget-object p1, p1, Lqj6;->g:Lteam/opay/core/android/views/CodeInputField;

    .line 53
    .line 54
    const/4 p2, 0x1

    .line 55
    invoke-virtual {p1, p2}, Lteam/opay/core/android/views/CodeInputField;->setHideInput(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lqj6;

    .line 63
    .line 64
    iget-object p1, p1, Lqj6;->e:Landroid/widget/Button;

    .line 65
    .line 66
    const-string p2, "verifyAction"

    .line 67
    .line 68
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance p2, Lmtf;

    .line 72
    .line 73
    invoke-direct {p2, p0}, Lmtf;-><init>(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lqj6;

    .line 84
    .line 85
    iget-object p1, p1, Lqj6;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .line 87
    const-string p2, "verifyOther"

    .line 88
    .line 89
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance p2, Lntf;

    .line 93
    .line 94
    invoke-direct {p2, p0}, Lntf;-><init>(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Lqj6;

    .line 105
    .line 106
    iget-object p1, p1, Lqj6;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 107
    .line 108
    new-instance p2, Lotf;

    .line 109
    .line 110
    invoke-direct {p2, p0}, Lotf;-><init>(Lteam/opay/pay/account/verify/VerifyPasswordFragment;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p2}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 114
    .line 115
    .line 116
    sget-object p1, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 117
    .line 118
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyPasswordFragment;->v:Lteam/opay/pay/account/verify/ValidationType;

    .line 123
    .line 124
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const/4 v2, 0x0

    .line 133
    new-array v3, v2, [Lkotlin/Pair;

    .line 134
    .line 135
    invoke-virtual {p1, p2, v0, v1, v3}, Lteam/opay/pay/account/verify/c;->d(Landroid/content/Context;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    sget-object p2, Lteam/opay/pay/account/verify/ModifyType;->MODIFY_EMAIL:Lteam/opay/pay/account/verify/ModifyType;

    .line 147
    .line 148
    invoke-virtual {p2}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_0

    .line 157
    .line 158
    sget-object p1, Lx7b;->a:Lx7b;

    .line 159
    .line 160
    sget-object p2, Lbj5;->a:Lbj5;

    .line 161
    .line 162
    invoke-virtual {p2}, Lbj5;->h()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    new-array v0, v2, [Lkotlin/Pair;

    .line 167
    .line 168
    invoke-virtual {p1, p2, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 169
    .line 170
    .line 171
    :cond_0
    return-void
.end method
