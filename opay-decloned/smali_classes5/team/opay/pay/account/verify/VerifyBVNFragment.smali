.class public final Lteam/opay/pay/account/verify/VerifyBVNFragment;
.super Lteam/opay/pay/account/verify/Hilt_VerifyBVNFragment;
.source "VerifyBVNFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/account/verify/VerifyBVNFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/account/verify/Hilt_VerifyBVNFragment<",
        "Lej6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J#\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0004R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/pay/account/verify/VerifyBVNFragment;",
        "Lteam/opay/pay/account/verify/BaseVerifyFragment;",
        "Lej6;",
        "<init>",
        "()V",
        "",
        "B0",
        "",
        "show",
        "",
        "message",
        "z0",
        "(ZLjava/lang/String;)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onActivityCreated",
        "(Landroid/os/Bundle;)V",
        "G0",
        "Lteam/opay/pay/account/verify/ValidationType;",
        "v",
        "Lteam/opay/pay/account/verify/ValidationType;",
        "validationType",
        "w",
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
.field public static final w:Lteam/opay/pay/account/verify/VerifyBVNFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final v:Lteam/opay/pay/account/verify/ValidationType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/account/verify/VerifyBVNFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/account/verify/VerifyBVNFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/account/verify/VerifyBVNFragment;->w:Lteam/opay/pay/account/verify/VerifyBVNFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/account/verify/VerifyBVNFragment$1;->INSTANCE:Lteam/opay/pay/account/verify/VerifyBVNFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/account/verify/Hilt_VerifyBVNFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/account/verify/ValidationType;->BVN:Lteam/opay/pay/account/verify/ValidationType;

    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/pay/account/verify/VerifyBVNFragment;->v:Lteam/opay/pay/account/verify/ValidationType;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic A0(Lteam/opay/pay/account/verify/VerifyBVNFragment;ZLjava/lang/String;ILjava/lang/Object;)V
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
    invoke-direct {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyBVNFragment;->z0(ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final B0()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lej6;

    .line 6
    .line 7
    iget-object v0, v0, Lej6;->c:Lteam/opay/core/android/views/NumberInputView;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/core/android/views/NumberInputView;->l()Landroid/widget/EditText;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lej6;

    .line 18
    .line 19
    iget-object v0, v0, Lej6;->e:Lt1b;

    .line 20
    .line 21
    invoke-virtual {v0}, Lt1b;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lt1b;->bind(Landroid/view/View;)Lt1b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "bind(...)"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v11, Lteam/opay/pay/account/KeyBoardHelper;

    .line 35
    .line 36
    iget-object v2, v0, Lt1b;->g:Landroid/inputmethodservice/KeyboardView;

    .line 37
    .line 38
    const-string v1, "keyBoardView"

    .line 39
    .line 40
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v4, v0, Lt1b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    iget-object v5, v0, Lt1b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lej6;

    .line 52
    .line 53
    iget-object v6, v0, Lej6;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 54
    .line 55
    const/16 v9, 0x60

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v8, 0x0

    .line 60
    move-object v1, v11

    .line 61
    invoke-direct/range {v1 .. v10}, Lteam/opay/pay/account/KeyBoardHelper;-><init>(Landroid/inputmethodservice/KeyboardView;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLt1b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lej6;

    .line 69
    .line 70
    iget-object v0, v0, Lej6;->c:Lteam/opay/core/android/views/NumberInputView;

    .line 71
    .line 72
    invoke-virtual {v0, v11}, Lteam/opay/core/android/views/NumberInputView;->i(Lteam/opay/pay/account/KeyBoardHelper;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public static final C0(Lteam/opay/pay/account/verify/VerifyBVNFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lej6;

    .line 6
    .line 7
    iget-object p0, p0, Lej6;->h:Landroid/widget/Button;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final D0(Lteam/opay/pay/account/verify/VerifyBVNFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x2

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1, p1, v0, p1}, Lteam/opay/pay/account/verify/VerifyBVNFragment;->A0(Lteam/opay/pay/account/verify/VerifyBVNFragment;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyBVNFragment;->G0()V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p0, Lteam/opay/pay/account/verify/VerifyBVNFragment;->v:Lteam/opay/pay/account/verify/ValidationType;

    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-array v1, v1, [Lkotlin/Pair;

    .line 27
    .line 28
    invoke-virtual {p1, v0, v2, p0, v1}, Lteam/opay/pay/account/verify/c;->e(Landroid/content/Context;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static final E0(Lteam/opay/pay/account/verify/VerifyBVNFragment;)Lkotlin/Unit;
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

.method public static final F0(Lteam/opay/pay/account/verify/VerifyBVNFragment;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lteam/opay/pay/account/verify/VerifyBVNFragment;->v:Lteam/opay/pay/account/verify/ValidationType;

    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v3, 0x0

    .line 25
    new-array v3, v3, [Lkotlin/Pair;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, p0, v3}, Lteam/opay/pay/account/verify/c;->b(Landroid/content/Context;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method

.method public static final H0(Lteam/opay/pay/account/verify/VerifyBVNFragment;Ljava/lang/String;)Lkotlin/Unit;
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
    invoke-static {p0, v2, p1, v0, v1}, Lteam/opay/pay/account/verify/VerifyBVNFragment;->A0(Lteam/opay/pay/account/verify/VerifyBVNFragment;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static synthetic u0(Lteam/opay/pay/account/verify/VerifyBVNFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/VerifyBVNFragment;->E0(Lteam/opay/pay/account/verify/VerifyBVNFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v0(Lteam/opay/pay/account/verify/VerifyBVNFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyBVNFragment;->H0(Lteam/opay/pay/account/verify/VerifyBVNFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w0(Lteam/opay/pay/account/verify/VerifyBVNFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyBVNFragment;->C0(Lteam/opay/pay/account/verify/VerifyBVNFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x0(Lteam/opay/pay/account/verify/VerifyBVNFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyBVNFragment;->D0(Lteam/opay/pay/account/verify/VerifyBVNFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y0(Lteam/opay/pay/account/verify/VerifyBVNFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/VerifyBVNFragment;->F0(Lteam/opay/pay/account/verify/VerifyBVNFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final z0(ZLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lej6;

    .line 6
    .line 7
    iget-object v0, v0, Lej6;->i:Landroidx/appcompat/widget/AppCompatTextView;

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
    sget p1, Lteam/opay/pay/R$string;->verify_error_msg:I

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


# virtual methods
.method public final G0()V
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
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lej6;

    .line 53
    .line 54
    iget-object v0, v0, Lej6;->c:Lteam/opay/core/android/views/NumberInputView;

    .line 55
    .line 56
    invoke-virtual {v0}, Lteam/opay/core/android/views/NumberInputView;->getInput()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v12, v0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->X(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v15

    .line 64
    iget-object v0, v12, Lteam/opay/pay/account/verify/VerifyBVNFragment;->v:Lteam/opay/pay/account/verify/ValidationType;

    .line 65
    .line 66
    move-object/from16 v16, v0

    .line 67
    .line 68
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v17

    .line 76
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v18

    .line 84
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->R()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v19

    .line 92
    new-instance v1, Lteam/opay/pay/account/verify/ValidationRequest;

    .line 93
    .line 94
    move-object v13, v1

    .line 95
    const/16 v28, 0x3f80

    .line 96
    .line 97
    const/16 v29, 0x0

    .line 98
    .line 99
    const/16 v21, 0x0

    .line 100
    .line 101
    const/16 v22, 0x0

    .line 102
    .line 103
    const/16 v23, 0x0

    .line 104
    .line 105
    const/16 v24, 0x0

    .line 106
    .line 107
    const/16 v25, 0x0

    .line 108
    .line 109
    const/16 v26, 0x0

    .line 110
    .line 111
    const/16 v27, 0x0

    .line 112
    .line 113
    invoke-direct/range {v13 .. v29}, Lteam/opay/pay/account/verify/ValidationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iget-object v3, v12, Lteam/opay/pay/account/verify/VerifyBVNFragment;->v:Lteam/opay/pay/account/verify/ValidationType;

    .line 121
    .line 122
    new-instance v9, Lgof;

    .line 123
    .line 124
    invoke-direct {v9, v12}, Lgof;-><init>(Lteam/opay/pay/account/verify/VerifyBVNFragment;)V

    .line 125
    .line 126
    .line 127
    const/16 v10, 0xf8

    .line 128
    .line 129
    const/4 v11, 0x0

    .line 130
    const/4 v4, 0x0

    .line 131
    const/4 v5, 0x0

    .line 132
    const/4 v6, 0x0

    .line 133
    const/4 v7, 0x0

    .line 134
    const/4 v8, 0x0

    .line 135
    move-object/from16 v2, p0

    .line 136
    .line 137
    invoke-static/range {v0 .. v11}, Lteam/opay/pay/account/verify/VerifyViewModel;->P0(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/verify/ValidationRequest;Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/pay/account/verify/ValidationType;ZLjava/lang/String;Ljava/lang/String;ZLhm6;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
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
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lej6;

    .line 9
    .line 10
    iget-object p1, p1, Lej6;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    const-string v0, "verifyOther"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->t0(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
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
    const/4 v0, 0x0

    .line 2
    const-string v1, "view"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    invoke-direct {p0}, Lteam/opay/pay/account/verify/VerifyBVNFragment;->B0()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->S()Lteam/opay/pay/account/verify/VerifyManager;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p2, p0, Lteam/opay/pay/account/verify/VerifyBVNFragment;->v:Lteam/opay/pay/account/verify/ValidationType;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lteam/opay/pay/account/verify/VerifyManager;->M(Lteam/opay/pay/account/verify/ValidationType;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const-string p2, "preBvnNumber"

    .line 32
    .line 33
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/lang/String;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    :goto_0
    if-nez p1, :cond_1

    .line 42
    .line 43
    const-string p1, ""

    .line 44
    .line 45
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Lej6;

    .line 50
    .line 51
    iget-object p2, p2, Lej6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    sget v1, Lteam/opay/pay/R$string;->osdk_kyc_verify_tip:I

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    rsub-int/lit8 v2, v2, 0xb

    .line 60
    .line 61
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const/4 v3, 0x1

    .line 66
    new-array v3, v3, [Ljava/lang/Object;

    .line 67
    .line 68
    aput-object v2, v3, v0

    .line 69
    .line 70
    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    check-cast p2, Lej6;

    .line 82
    .line 83
    iget-object p2, p2, Lej6;->c:Lteam/opay/core/android/views/NumberInputView;

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Lteam/opay/core/android/views/NumberInputView;->setPreText(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lej6;

    .line 93
    .line 94
    iget-object p1, p1, Lej6;->c:Lteam/opay/core/android/views/NumberInputView;

    .line 95
    .line 96
    new-instance p2, Lcof;

    .line 97
    .line 98
    invoke-direct {p2, p0}, Lcof;-><init>(Lteam/opay/pay/account/verify/VerifyBVNFragment;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Lteam/opay/core/android/views/NumberInputView;->setOnInput(Lkotlin/jvm/functions/Function1;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Lej6;

    .line 109
    .line 110
    iget-object p1, p1, Lej6;->c:Lteam/opay/core/android/views/NumberInputView;

    .line 111
    .line 112
    const-string p2, "etBvn"

    .line 113
    .line 114
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p1}, Lkmf;->L(Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lej6;

    .line 125
    .line 126
    iget-object p1, p1, Lej6;->h:Landroid/widget/Button;

    .line 127
    .line 128
    new-instance p2, Ldof;

    .line 129
    .line 130
    invoke-direct {p2, p0}, Ldof;-><init>(Lteam/opay/pay/account/verify/VerifyBVNFragment;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Lej6;

    .line 141
    .line 142
    iget-object p1, p1, Lej6;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 143
    .line 144
    const-string p2, "verifyOther"

    .line 145
    .line 146
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance p2, Leof;

    .line 150
    .line 151
    invoke-direct {p2, p0}, Leof;-><init>(Lteam/opay/pay/account/verify/VerifyBVNFragment;)V

    .line 152
    .line 153
    .line 154
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Lej6;

    .line 162
    .line 163
    iget-object p1, p1, Lej6;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 164
    .line 165
    new-instance p2, Lfof;

    .line 166
    .line 167
    invoke-direct {p2, p0}, Lfof;-><init>(Lteam/opay/pay/account/verify/VerifyBVNFragment;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p2}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 171
    .line 172
    .line 173
    sget-object p1, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 174
    .line 175
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyBVNFragment;->v:Lteam/opay/pay/account/verify/ValidationType;

    .line 180
    .line 181
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    new-array v0, v0, [Lkotlin/Pair;

    .line 190
    .line 191
    invoke-virtual {p1, p2, v1, v2, v0}, Lteam/opay/pay/account/verify/c;->d(Landroid/content/Context;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method
