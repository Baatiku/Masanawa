.class public final Lteam/opay/pay/email/EmailModifyFragment;
.super Lteam/opay/pay/email/Hilt_EmailModifyFragment;
.source "EmailModifyFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/email/EmailModifyFragment$Companion;,
        Lteam/opay/pay/email/EmailModifyFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/email/Hilt_EmailModifyFragment<",
        "Lkia;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 $2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001%B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u000f\u0010\r\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u001a\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010#\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u001c\u00a8\u0006&"
    }
    d2 = {
        "Lteam/opay/pay/email/EmailModifyFragment;",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Lkia;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "f0",
        "i0",
        "g0",
        "d0",
        "",
        "email",
        "",
        "X",
        "(Ljava/lang/String;)Z",
        "Lteam/opay/pay/email/VerifyEmailViewModel;",
        "p",
        "Lid8;",
        "W",
        "()Lteam/opay/pay/email/VerifyEmailViewModel;",
        "viewModel",
        "q",
        "Ljava/lang/String;",
        "from",
        "",
        "r",
        "I",
        "status",
        "s",
        "lastEmail",
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
.field public static final t:Lteam/opay/pay/email/EmailModifyFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:I

.field public s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/email/EmailModifyFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/email/EmailModifyFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/email/EmailModifyFragment;->t:Lteam/opay/pay/email/EmailModifyFragment$Companion;

    .line 8
    .line 9
    const-string v0, "key_email"

    .line 10
    .line 11
    sput-object v0, Lteam/opay/pay/email/EmailModifyFragment;->u:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/email/EmailModifyFragment$1;->INSTANCE:Lteam/opay/pay/email/EmailModifyFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/email/Hilt_EmailModifyFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lteam/opay/pay/email/VerifyEmailViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lteam/opay/pay/email/EmailModifyFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/email/EmailModifyFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/email/EmailModifyFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/email/EmailModifyFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lteam/opay/pay/email/EmailModifyFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lteam/opay/pay/email/EmailModifyFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/email/EmailModifyFragment;->p:Lid8;

    .line 33
    .line 34
    const-string v0, ""

    .line 35
    .line 36
    iput-object v0, p0, Lteam/opay/pay/email/EmailModifyFragment;->q:Ljava/lang/String;

    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    iput v1, p0, Lteam/opay/pay/email/EmailModifyFragment;->r:I

    .line 40
    .line 41
    iput-object v0, p0, Lteam/opay/pay/email/EmailModifyFragment;->s:Ljava/lang/String;

    .line 42
    .line 43
    return-void
.end method

.method public static synthetic O(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/email/EmailModifyFragment;->b0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/email/EmailModifyFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/email/EmailModifyFragment;->c0(Lteam/opay/pay/email/EmailModifyFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Q(Lteam/opay/pay/email/EmailModifyFragment;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/email/EmailModifyFragment;->e0(Lteam/opay/pay/email/EmailModifyFragment;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic R(Lteam/opay/pay/email/EmailModifyFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/email/EmailModifyFragment;->h0(Lteam/opay/pay/email/EmailModifyFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/pay/email/EmailModifyFragment;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/email/EmailModifyFragment;->a0(Lteam/opay/pay/email/EmailModifyFragment;Landroid/text/Editable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lteam/opay/pay/email/EmailModifyFragment;I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/email/EmailModifyFragment;->Z(Lteam/opay/pay/email/EmailModifyFragment;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic U(Lteam/opay/pay/email/EmailModifyFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/email/EmailModifyFragment;->Y(Lteam/opay/pay/email/EmailModifyFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic V()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/email/EmailModifyFragment;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private final W()Lteam/opay/pay/email/VerifyEmailViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/email/EmailModifyFragment;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/email/VerifyEmailViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final Y(Lteam/opay/pay/email/EmailModifyFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "new_email_input_return"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {v0}, Lkmf;->e(Landroid/app/Activity;)Lkotlin/Unit;

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 27
    .line 28
    .line 29
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method public static final Z(Lteam/opay/pay/email/EmailModifyFragment;I)Z
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lkia;

    .line 9
    .line 10
    iget-object p0, p0, Lkia;->f:Lteam/opay/pay/email/AutoCompleteEmailEditText;

    .line 11
    .line 12
    const-string p1, "etInput"

    .line 13
    .line 14
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lli2;->f(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static final a0(Lteam/opay/pay/email/EmailModifyFragment;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->N()Lxyf;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lkia;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lkia;->e:Landroid/widget/TextView;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->N()Lxyf;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lkia;

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    iget-object p0, p0, Lkia;->c:Landroidx/appcompat/widget/AppCompatButton;

    .line 29
    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-lez p1, :cond_1

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    .line 43
    .line 44
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0
.end method

.method public static final b0(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v1, "new_email_input_click"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static final c0(Lteam/opay/pay/email/EmailModifyFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lkia;

    .line 6
    .line 7
    iget-object p1, p1, Lkia;->f:Lteam/opay/pay/email/AutoCompleteEmailEditText;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lteam/opay/pay/email/EmailModifyFragment;->X(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lkia;

    .line 28
    .line 29
    iget-object p1, p1, Lkia;->e:Landroid/widget/TextView;

    .line 30
    .line 31
    const-string v0, "errorHint"

    .line 32
    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lkia;

    .line 44
    .line 45
    iget-object p0, p0, Lkia;->e:Landroid/widget/TextView;

    .line 46
    .line 47
    sget p1, Lteam/opay/pay/R$string;->omain_input_email_error:I

    .line 48
    .line 49
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    sget-object p1, Lx7b;->a:Lx7b;

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    new-array v0, v0, [Lkotlin/Pair;

    .line 61
    .line 62
    const-string v1, "new_email_input_confirm"

    .line 63
    .line 64
    invoke-virtual {p1, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lteam/opay/pay/email/EmailModifyFragment;->g0()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public static final e0(Lteam/opay/pay/email/EmailModifyFragment;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lkia;

    .line 6
    .line 7
    iget-object v0, v0, Lkia;->h:Lteam/opay/core/android/views/PulseLoaderView;

    .line 8
    .line 9
    const-string v1, "loadingView"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v2, Lteam/opay/pay/email/EmailModifyFragment$a;->a:[I

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    aget v0, v2, v0

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eq v0, v2, :cond_2

    .line 31
    .line 32
    const/4 p1, 0x2

    .line 33
    if-eq v0, p1, :cond_1

    .line 34
    .line 35
    const/4 p1, 0x3

    .line 36
    if-ne v0, p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lkia;

    .line 43
    .line 44
    iget-object p1, p1, Lkia;->e:Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lkia;

    .line 58
    .line 59
    iget-object p1, p1, Lkia;->e:Landroid/widget/TextView;

    .line 60
    .line 61
    const-string p2, "errorHint"

    .line 62
    .line 63
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Lkia;

    .line 74
    .line 75
    iget-object p0, p0, Lkia;->c:Landroidx/appcompat/widget/AppCompatButton;

    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 83
    .line 84
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Lkia;

    .line 93
    .line 94
    iget-object p0, p0, Lkia;->h:Lteam/opay/core/android/views/PulseLoaderView;

    .line 95
    .line 96
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getId()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    sget-object v1, Lteam/opay/pay/email/EmailVerifyFragment;->w:Lteam/opay/pay/email/EmailVerifyFragment$Companion;

    .line 120
    .line 121
    iget-object v4, p0, Lteam/opay/pay/email/EmailModifyFragment;->q:Ljava/lang/String;

    .line 122
    .line 123
    const/4 v5, 0x2

    .line 124
    const/4 v6, 0x0

    .line 125
    const/4 v3, 0x0

    .line 126
    move-object v2, p1

    .line 127
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/email/EmailVerifyFragment$Companion;->b(Lteam/opay/pay/email/EmailVerifyFragment$Companion;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/email/EmailVerifyFragment;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {p2, v0, p0}, Landroidx/fragment/app/FragmentTransaction;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 136
    .line 137
    .line 138
    :goto_0
    return-void
.end method

.method public static final h0(Lteam/opay/pay/email/EmailModifyFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/email/EmailModifyFragment;->d0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final X(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "[\u4e00-\u9fa5]"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    new-instance v0, Lkotlin/text/Regex;

    .line 20
    .line 21
    const-string v1, "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public final d0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lkia;

    .line 6
    .line 7
    iget-object v0, v0, Lkia;->f:Lteam/opay/pay/email/AutoCompleteEmailEditText;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0}, Lteam/opay/pay/email/EmailModifyFragment;->W()Lteam/opay/pay/email/VerifyEmailViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lteam/opay/pay/email/EmailSendOtpBody;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Lteam/opay/pay/email/EmailSendOtpBody;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lteam/opay/pay/email/VerifyEmailViewModel;->s(Lteam/opay/pay/email/EmailSendOtpBody;)Landroidx/lifecycle/LiveData;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v3, Lyi5;

    .line 35
    .line 36
    invoke-direct {v3, p0, v0}, Lyi5;-><init>(Lteam/opay/pay/email/EmailModifyFragment;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final f0()V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->g()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lkia;

    .line 22
    .line 23
    iget-object v0, v0, Lkia;->j:Landroid/widget/TextView;

    .line 24
    .line 25
    sget v1, Lteam/opay/pay/R$string;->osdk_enter_your_new_email:I

    .line 26
    .line 27
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lkia;

    .line 39
    .line 40
    iget-object v0, v0, Lkia;->i:Landroid/widget/TextView;

    .line 41
    .line 42
    sget v1, Lteam/opay/pay/R$string;->osdk_change_email_input_tips:I

    .line 43
    .line 44
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lkia;

    .line 56
    .line 57
    iget-object v0, v0, Lkia;->g:Landroid/widget/TextView;

    .line 58
    .line 59
    sget v1, Lteam/opay/pay/R$string;->osdk_enter_your_new_email_address:I

    .line 60
    .line 61
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void
.end method

.method public final g0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/email/EmailModifyFragment;->s:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lkia;

    .line 8
    .line 9
    iget-object v1, v1, Lkia;->f:Lteam/opay/pay/email/AutoCompleteEmailEditText;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/email/EmailModifyFragment;->d0()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lkia;

    .line 34
    .line 35
    iget-object v0, v0, Lkia;->f:Lteam/opay/pay/email/AutoCompleteEmailEditText;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lteam/opay/pay/email/EmailModifyFragment;->s:Ljava/lang/String;

    .line 46
    .line 47
    sget-object v0, Lteam/opay/pay/email/EmailConfirmDialog;->k:Lteam/opay/pay/email/EmailConfirmDialog$Companion;

    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lkia;

    .line 54
    .line 55
    iget-object v1, v1, Lkia;->f:Lteam/opay/pay/email/AutoCompleteEmailEditText;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lteam/opay/pay/email/EmailConfirmDialog$Companion;->a(Ljava/lang/String;)Lteam/opay/pay/email/EmailConfirmDialog;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v1, Lxi5;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lxi5;-><init>(Lteam/opay/pay/email/EmailModifyFragment;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lteam/opay/pay/email/EmailConfirmDialog;->R(Lkotlin/jvm/functions/Function0;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method public final i0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lkia;

    .line 6
    .line 7
    iget-object v0, v0, Lkia;->f:Lteam/opay/pay/email/AutoCompleteEmailEditText;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lteam/opay/pay/email/EmailModifyFragment;->u:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    :cond_0
    iput-object v1, p0, Lteam/opay/pay/email/EmailModifyFragment;->s:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-lez v2, :cond_1

    .line 30
    .line 31
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    new-instance v5, Lteam/opay/pay/email/EmailModifyFragment$showEmailArgments$1$1;

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-direct {v5, p0, v0}, Lteam/opay/pay/email/EmailModifyFragment$showEmailArgments$1$1;-><init>(Lteam/opay/pay/email/EmailModifyFragment;Ljr2;)V

    .line 61
    .line 62
    .line 63
    const/4 v6, 0x2

    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
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
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/16 v1, 0x10

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "from"

    .line 29
    .line 30
    const-string v0, ""

    .line 31
    .line 32
    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lteam/opay/pay/email/EmailModifyFragment;->q:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lkia;

    .line 43
    .line 44
    iget-object p1, p1, Lkia;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 45
    .line 46
    new-instance p2, Lsi5;

    .line 47
    .line 48
    invoke-direct {p2, p0}, Lsi5;-><init>(Lteam/opay/pay/email/EmailModifyFragment;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lteam/opay/core/settings/SettingsStorage;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    const-string v1, "requireContext(...)"

    .line 61
    .line 62
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, p2}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lteam/opay/core/settings/SettingsStorage;->m()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    const/4 v1, 0x1

    .line 77
    const/4 v2, 0x0

    .line 78
    if-lez p2, :cond_1

    .line 79
    .line 80
    const/4 p2, 0x0

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/settings/SettingsStorage;->n()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-lez p2, :cond_2

    .line 91
    .line 92
    const/4 p2, 0x1

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    const/4 p2, 0x2

    .line 95
    :goto_0
    iput p2, p0, Lteam/opay/pay/email/EmailModifyFragment;->r:I

    .line 96
    .line 97
    sget-object p2, Lx7b;->a:Lx7b;

    .line 98
    .line 99
    const-string v3, "new_email_input_show"

    .line 100
    .line 101
    new-array v4, v2, [Lkotlin/Pair;

    .line 102
    .line 103
    invoke-virtual {p2, v3, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lteam/opay/core/settings/SettingsStorage;->m()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-nez p2, :cond_3

    .line 115
    .line 116
    invoke-virtual {p1}, Lteam/opay/core/settings/SettingsStorage;->n()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :cond_3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lkia;

    .line 125
    .line 126
    iget-object p1, p1, Lkia;->f:Lteam/opay/pay/email/AutoCompleteEmailEditText;

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Lkia;

    .line 136
    .line 137
    iget-object p1, p1, Lkia;->f:Lteam/opay/pay/email/AutoCompleteEmailEditText;

    .line 138
    .line 139
    new-instance p2, Lti5;

    .line 140
    .line 141
    invoke-direct {p2, p0}, Lti5;-><init>(Lteam/opay/pay/email/EmailModifyFragment;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p2}, Lteam/opay/pay/email/AutoCompleteEmailEditText;->h(Lkotlin/jvm/functions/Function1;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Lkia;

    .line 152
    .line 153
    iget-object p1, p1, Lkia;->f:Lteam/opay/pay/email/AutoCompleteEmailEditText;

    .line 154
    .line 155
    const-string p2, "etInput"

    .line 156
    .line 157
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    new-instance p2, Lui5;

    .line 161
    .line 162
    invoke-direct {p2, p0}, Lui5;-><init>(Lteam/opay/pay/email/EmailModifyFragment;)V

    .line 163
    .line 164
    .line 165
    invoke-static {p1, p2}, Lpf5;->a(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)Landroid/text/TextWatcher;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Lkia;

    .line 173
    .line 174
    iget-object p1, p1, Lkia;->f:Lteam/opay/pay/email/AutoCompleteEmailEditText;

    .line 175
    .line 176
    new-instance p2, Lvi5;

    .line 177
    .line 178
    invoke-direct {p2}, Lvi5;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    check-cast p1, Lkia;

    .line 189
    .line 190
    iget-object p1, p1, Lkia;->c:Landroidx/appcompat/widget/AppCompatButton;

    .line 191
    .line 192
    new-instance p2, Lwi5;

    .line 193
    .line 194
    invoke-direct {p2, p0}, Lwi5;-><init>(Lteam/opay/pay/email/EmailModifyFragment;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    .line 199
    .line 200
    sget-object p1, Lteam/opay/pay/email/AddEmailTipABTest;->Companion:Lteam/opay/pay/email/AddEmailTipABTest$Companion;

    .line 201
    .line 202
    invoke-virtual {p1}, Lteam/opay/pay/email/AddEmailTipABTest$Companion;->a()Lteam/opay/pay/email/AddEmailTipABTest;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    if-eqz p1, :cond_4

    .line 207
    .line 208
    invoke-virtual {p1}, Lteam/opay/pay/email/AddEmailTipABTest;->getAddEmailTip()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    goto :goto_1

    .line 213
    :cond_4
    const/4 p1, 0x0

    .line 214
    :goto_1
    const-string p2, "tvHint"

    .line 215
    .line 216
    if-eqz p1, :cond_6

    .line 217
    .line 218
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-nez v0, :cond_5

    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    check-cast v0, Lkia;

    .line 230
    .line 231
    iget-object v0, v0, Lkia;->i:Landroid/widget/TextView;

    .line 232
    .line 233
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    check-cast p2, Lkia;

    .line 244
    .line 245
    iget-object p2, p2, Lkia;->i:Landroid/widget/TextView;

    .line 246
    .line 247
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    check-cast p1, Lkia;

    .line 256
    .line 257
    iget-object p1, p1, Lkia;->i:Landroid/widget/TextView;

    .line 258
    .line 259
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 263
    .line 264
    .line 265
    :goto_3
    invoke-virtual {p0}, Lteam/opay/pay/email/EmailModifyFragment;->i0()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0}, Lteam/opay/pay/email/EmailModifyFragment;->f0()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    check-cast p1, Lkia;

    .line 276
    .line 277
    iget-object p1, p1, Lkia;->c:Landroidx/appcompat/widget/AppCompatButton;

    .line 278
    .line 279
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    check-cast p2, Lkia;

    .line 284
    .line 285
    iget-object p2, p2, Lkia;->f:Lteam/opay/pay/email/AutoCompleteEmailEditText;

    .line 286
    .line 287
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    if-eqz p2, :cond_8

    .line 292
    .line 293
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 294
    .line 295
    .line 296
    move-result p2

    .line 297
    if-lez p2, :cond_7

    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_7
    const/4 v1, 0x0

    .line 301
    :goto_4
    move v2, v1

    .line 302
    :cond_8
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 303
    .line 304
    .line 305
    return-void
.end method
