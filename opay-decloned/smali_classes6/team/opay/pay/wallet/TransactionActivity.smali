.class public final Lteam/opay/pay/wallet/TransactionActivity;
.super Lteam/opay/pay/wallet/Hilt_TransactionActivity;
.source "TransactionActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/wallet/TransactionActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 *2\u00020\u0001:\u0001+B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u0017\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0003R\u001b\u0010\u0014\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0011\u001a\u0004\u0008\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001b\u0010&\u001a\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u0011\u001a\u0004\u0008$\u0010%R\u0018\u0010)\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u0006,"
    }
    d2 = {
        "Lteam/opay/pay/wallet/TransactionActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onBackPressed",
        "Landroidx/fragment/app/Fragment;",
        "target",
        "K",
        "(Landroidx/fragment/app/Fragment;)V",
        "I",
        "Lxc8;",
        "e",
        "Lid8;",
        "G",
        "()Lxc8;",
        "viewBinding",
        "Lteam/opay/pay/transaction/TransactionViewModel;",
        "f",
        "H",
        "()Lteam/opay/pay/transaction/TransactionViewModel;",
        "viewModel",
        "",
        "g",
        "Z",
        "getNeedPaddingBottom",
        "()Z",
        "setNeedPaddingBottom",
        "(Z)V",
        "needPaddingBottom",
        "Lteam/opay/pay/transaction/TransactionFragmentV2;",
        "h",
        "F",
        "()Lteam/opay/pay/transaction/TransactionFragmentV2;",
        "transactionFragment",
        "i",
        "Landroidx/fragment/app/Fragment;",
        "mCurrentFragment",
        "j",
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
.field public static final j:Lteam/opay/pay/wallet/TransactionActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Z

.field public final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/wallet/TransactionActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/wallet/TransactionActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/wallet/TransactionActivity;->j:Lteam/opay/pay/wallet/TransactionActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->layout_transaction_fragment:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/wallet/Hilt_TransactionActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lpre;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lpre;-><init>(Lteam/opay/pay/wallet/TransactionActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/wallet/TransactionActivity;->e:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/wallet/TransactionActivity$special$$inlined$viewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/wallet/TransactionActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 23
    .line 24
    const-class v2, Lteam/opay/pay/transaction/TransactionViewModel;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lteam/opay/pay/wallet/TransactionActivity$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/pay/wallet/TransactionActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/wallet/TransactionActivity$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/wallet/TransactionActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lteam/opay/pay/wallet/TransactionActivity;->f:Lid8;

    .line 45
    .line 46
    new-instance v0, Lrre;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lrre;-><init>(Lteam/opay/pay/wallet/TransactionActivity;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lteam/opay/pay/wallet/TransactionActivity;->h:Lid8;

    .line 56
    .line 57
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/wallet/TransactionActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/wallet/TransactionActivity;->M(Lteam/opay/pay/wallet/TransactionActivity;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/wallet/TransactionActivity;)Lxc8;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/wallet/TransactionActivity;->N(Lteam/opay/pay/wallet/TransactionActivity;)Lxc8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/wallet/TransactionActivity;)Lteam/opay/pay/transaction/TransactionFragmentV2;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/wallet/TransactionActivity;->L(Lteam/opay/pay/wallet/TransactionActivity;)Lteam/opay/pay/transaction/TransactionFragmentV2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/wallet/TransactionActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/wallet/TransactionActivity;->J(Lteam/opay/pay/wallet/TransactionActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic E(Lteam/opay/pay/wallet/TransactionActivity;)Lteam/opay/pay/transaction/TransactionViewModel;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/wallet/TransactionActivity;->H()Lteam/opay/pay/transaction/TransactionViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final J(Lteam/opay/pay/wallet/TransactionActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "insets"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$l;->d()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->f(I)Lpg7;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "getInsets(...)"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/pay/wallet/TransactionActivity;->G()Lxc8;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object p0, p0, Lxc8;->d:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iget p1, p1, Lpg7;->d:I

    .line 32
    .line 33
    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 34
    .line 35
    .line 36
    return-object p2
.end method

.method public static final L(Lteam/opay/pay/wallet/TransactionActivity;)Lteam/opay/pay/transaction/TransactionFragmentV2;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/pay/transaction/TransactionFragmentV2;->v:Lteam/opay/pay/transaction/TransactionFragmentV2$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/transaction/TransactionFragmentV2$Companion;->a()Lteam/opay/pay/transaction/TransactionFragmentV2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ltre;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Ltre;-><init>(Lteam/opay/pay/wallet/TransactionActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lteam/opay/pay/transaction/TransactionFragmentV2;->W0(Lkotlin/jvm/functions/Function1;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static final M(Lteam/opay/pay/wallet/TransactionActivity;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/wallet/TransactionActivity;->G()Lxc8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lxc8;->c:Landroid/view/View;

    .line 6
    .line 7
    const-string v0, "bgView"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method public static final N(Lteam/opay/pay/wallet/TransactionActivity;)Lxc8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lxc8;->inflate(Landroid/view/LayoutInflater;)Lxc8;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public final F()Lteam/opay/pay/transaction/TransactionFragmentV2;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/TransactionActivity;->h:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/transaction/TransactionFragmentV2;

    .line 8
    .line 9
    return-object v0
.end method

.method public G()Lxc8;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/TransactionActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lxc8;

    .line 8
    .line 9
    return-object v0
.end method

.method public final H()Lteam/opay/pay/transaction/TransactionViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/TransactionActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/transaction/TransactionViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final I()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/wallet/TransactionActivity;->G()Lxc8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lxc8;->d:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    new-instance v1, Lsre;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lsre;-><init>(Lteam/opay/pay/wallet/TransactionActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroidx/core/view/a;->G0(Landroid/view/View;Lhka;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final K(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/wallet/TransactionActivity;->G()Lxc8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lxc8;->c:Landroid/view/View;

    .line 6
    .line 7
    const-string v1, "bgView"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/pay/wallet/TransactionActivity;->i:Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "beginTransaction(...)"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lteam/opay/pay/wallet/TransactionActivity;->i:Landroidx/fragment/app/Fragment;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->p(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->z(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    sget v1, Lteam/opay/pay/R$id;->fragment_content:I

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lteam/opay/pay/wallet/TransactionActivity;->i:Landroidx/fragment/app/Fragment;

    .line 70
    .line 71
    :cond_2
    return-void
.end method

.method public getNeedPaddingBottom()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/wallet/TransactionActivity;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/wallet/TransactionActivity;->G()Lxc8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    sget-object v0, Lx0f;->a:Lx0f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "transaction_details_back_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx0f;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lteam/opay/pay/wallet/Hilt_TransactionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/wallet/TransactionActivity;->I()V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "key_select_code"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "key_select_name"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const-string v6, "key_select_service"

    .line 36
    .line 37
    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-nez v7, :cond_0

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_0
    if-eqz v5, :cond_2

    .line 51
    .line 52
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-nez v5, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    sget-object v5, Lteam/opay/pay/transaction/CategoryType;->SERVICE:Lteam/opay/pay/transaction/CategoryType;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    sget-object v5, Lteam/opay/pay/transaction/CategoryType;->CATEGORY:Lteam/opay/pay/transaction/CategoryType;

    .line 63
    .line 64
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/wallet/TransactionActivity;->H()Lteam/opay/pay/transaction/TransactionViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    new-instance v15, Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 69
    .line 70
    new-instance v9, Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 71
    .line 72
    invoke-direct {v9, v1, v3, v5}, Lteam/opay/pay/transaction/FilterTypeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/transaction/CategoryType;)V

    .line 73
    .line 74
    .line 75
    const/16 v14, 0x1e

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    const/4 v10, 0x0

    .line 79
    const/4 v11, 0x0

    .line 80
    const/4 v12, 0x0

    .line 81
    const/4 v13, 0x0

    .line 82
    move-object v8, v15

    .line 83
    move-object v3, v15

    .line 84
    move-object v15, v1

    .line 85
    invoke-direct/range {v8 .. v15}, Lteam/opay/pay/transaction/HistoryFilter$Filter;-><init>(Lteam/opay/pay/transaction/FilterTypeInfo;Lteam/opay/pay/transaction/HistoryFilter$Status;Lteam/opay/pay/transaction/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7, v3}, Lteam/opay/pay/transaction/TransactionViewModel;->k0(Lteam/opay/pay/transaction/HistoryFilter$Filter;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const/4 v3, 0x0

    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    goto :goto_3

    .line 109
    :cond_4
    move-object v1, v3

    .line 110
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    if-eqz v2, :cond_5

    .line 115
    .line 116
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-eqz v2, :cond_5

    .line 121
    .line 122
    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    goto :goto_4

    .line 127
    :cond_5
    move-object v2, v3

    .line 128
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    if-eqz v4, :cond_6

    .line 133
    .line 134
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    if-eqz v4, :cond_6

    .line 139
    .line 140
    invoke-virtual {v4, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    :cond_6
    if-eqz v1, :cond_a

    .line 145
    .line 146
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-nez v4, :cond_7

    .line 151
    .line 152
    goto :goto_7

    .line 153
    :cond_7
    if-eqz v3, :cond_9

    .line 154
    .line 155
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-nez v3, :cond_8

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_8
    sget-object v3, Lteam/opay/pay/transaction/CategoryType;->SERVICE:Lteam/opay/pay/transaction/CategoryType;

    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_9
    :goto_5
    sget-object v3, Lteam/opay/pay/transaction/CategoryType;->CATEGORY:Lteam/opay/pay/transaction/CategoryType;

    .line 166
    .line 167
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/wallet/TransactionActivity;->H()Lteam/opay/pay/transaction/TransactionViewModel;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    new-instance v13, Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 172
    .line 173
    new-instance v6, Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 174
    .line 175
    invoke-direct {v6, v1, v2, v3}, Lteam/opay/pay/transaction/FilterTypeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/transaction/CategoryType;)V

    .line 176
    .line 177
    .line 178
    const/16 v11, 0x1a

    .line 179
    .line 180
    const/4 v12, 0x0

    .line 181
    const/4 v7, 0x0

    .line 182
    const/4 v8, 0x0

    .line 183
    const/4 v9, 0x0

    .line 184
    const/4 v10, 0x0

    .line 185
    move-object v5, v13

    .line 186
    invoke-direct/range {v5 .. v12}, Lteam/opay/pay/transaction/HistoryFilter$Filter;-><init>(Lteam/opay/pay/transaction/FilterTypeInfo;Lteam/opay/pay/transaction/HistoryFilter$Status;Lteam/opay/pay/transaction/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4, v13}, Lteam/opay/pay/transaction/TransactionViewModel;->k0(Lteam/opay/pay/transaction/HistoryFilter$Filter;)V

    .line 190
    .line 191
    .line 192
    :cond_a
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/wallet/TransactionActivity;->F()Lteam/opay/pay/transaction/TransactionFragmentV2;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Lteam/opay/pay/wallet/TransactionActivity;->K(Landroidx/fragment/app/Fragment;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/wallet/TransactionActivity;->H()Lteam/opay/pay/transaction/TransactionViewModel;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v1}, Lteam/opay/pay/transaction/TransactionViewModel;->I()V

    .line 204
    .line 205
    .line 206
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/wallet/TransactionActivity;->H()Lteam/opay/pay/transaction/TransactionViewModel;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    const-string v2, "ng_transaction_notice"

    .line 211
    .line 212
    invoke-virtual {v1, v2, v0}, Lteam/opay/pay/transaction/TransactionViewModel;->g0(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    .line 213
    .line 214
    .line 215
    sget-object v1, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 216
    .line 217
    new-instance v2, Lteam/opay/pay/wallet/TransactionActivity$a;

    .line 218
    .line 219
    invoke-direct {v2, v0}, Lteam/opay/pay/wallet/TransactionActivity$a;-><init>(Lteam/opay/pay/wallet/TransactionActivity;)V

    .line 220
    .line 221
    .line 222
    const-string/jumbo v3, "ws_ad_event_key"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v0, v3, v2}, Lteam/opay/pay/util/FlowBus;->b(Lag8;Ljava/lang/Object;La66;)V

    .line 226
    .line 227
    .line 228
    return-void
.end method

.method public setNeedPaddingBottom(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/wallet/TransactionActivity;->g:Z

    .line 2
    .line 3
    return-void
.end method
