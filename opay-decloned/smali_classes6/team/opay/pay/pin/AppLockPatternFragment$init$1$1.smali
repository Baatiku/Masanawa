.class final Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppLockPatternFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/pin/AppLockPatternFragment$init$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.pin.AppLockPatternFragment$init$1$1"
    f = "AppLockPatternFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isSetFinger:Z

.field label:I

.field final synthetic this$0:Lteam/opay/pay/pin/AppLockPatternFragment;


# direct methods
.method public constructor <init>(ZLteam/opay/pay/pin/AppLockPatternFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lteam/opay/pay/pin/AppLockPatternFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->$isSetFinger:Z

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic c(Lteam/opay/pay/pin/AppLockPatternFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->invokeSuspend$lambda$3(Lteam/opay/pay/pin/AppLockPatternFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/pay/pin/AppLockPatternFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->invokeSuspend$lambda$4(Lteam/opay/pay/pin/AppLockPatternFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lteam/opay/pay/pin/AppLockPatternFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->invokeSuspend$lambda$2(Lteam/opay/pay/pin/AppLockPatternFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lteam/opay/pay/pin/AppLockPatternFragment;Lteam/opay/pay/pin/LoginTypeData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->invokeSuspend$lambda$2$lambda$1$lambda$0(Lteam/opay/pay/pin/AppLockPatternFragment;Lteam/opay/pay/pin/LoginTypeData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$2(Lteam/opay/pay/pin/AppLockPatternFragment;)Lkotlin/Unit;
    .locals 6

    .line 1
    new-instance v0, Lteam/opay/pay/pin/PinLockTypeFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/pin/PinLockTypeFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lteam/opay/pay/pin/LoginTypeData;

    .line 7
    .line 8
    sget v2, Lteam/opay/pay/R$string;->osdk_finger_print:I

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "getString(...)"

    .line 15
    .line 16
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    invoke-direct {v1, v2, v4}, Lteam/opay/pay/pin/LoginTypeData;-><init>(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lteam/opay/pay/pin/LoginTypeData;

    .line 24
    .line 25
    sget v5, Lteam/opay/pay/R$string;->reset_pin:I

    .line 26
    .line 27
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    invoke-direct {v2, v5, v3}, Lteam/opay/pay/pin/LoginTypeData;-><init>(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    new-array v3, v4, [Lteam/opay/pay/pin/LoginTypeData;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    aput-object v1, v3, v4

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    aput-object v2, v3, v1

    .line 45
    .line 46
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lteam/opay/pay/pin/PinLockTypeFragment;->U(Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lteam/opay/pay/pin/j;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lteam/opay/pay/pin/j;-><init>(Lteam/opay/pay/pin/AppLockPatternFragment;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lteam/opay/pay/pin/PinLockTypeFragment;->T(Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->F(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 66
    .line 67
    .line 68
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p0
.end method

.method private static final invokeSuspend$lambda$2$lambda$1$lambda$0(Lteam/opay/pay/pin/AppLockPatternFragment;Lteam/opay/pay/pin/LoginTypeData;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/pin/LoginTypeData;->b()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/pin/AppLockPatternFragment;->Z()Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p0}, Lteam/opay/pay/pin/AppLockPatternFragment;->Y(Lteam/opay/pay/pin/AppLockPatternFragment;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method private static final invokeSuspend$lambda$3(Lteam/opay/pay/pin/AppLockPatternFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/AppLockPatternFragment;->Y(Lteam/opay/pay/pin/AppLockPatternFragment;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final invokeSuspend$lambda$4(Lteam/opay/pay/pin/AppLockPatternFragment;)Lkotlin/Unit;
    .locals 12

    .line 1
    sget-object v0, Lgre;->a:Lgre;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lkotlin/Pair;

    .line 8
    .line 9
    const-string v3, "page"

    .line 10
    .line 11
    const-string/jumbo v4, "welcome back"

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    new-array v4, v3, [Lkotlin/Pair;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    aput-object v2, v4, v5

    .line 22
    .line 23
    const-string/jumbo v2, "welcomeback_switch_account_click"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, v4}, Lgre;->b(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "requireActivity(...)"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v3}, Lum8;->i(Landroid/app/Activity;Z)V

    .line 39
    .line 40
    .line 41
    sget-object v4, Lql8;->a:Lql8;

    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const/16 v10, 0xe

    .line 48
    .line 49
    const/4 v11, 0x0

    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v9, 0x1

    .line 54
    invoke-static/range {v4 .. v11}, Lql8;->g(Lql8;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 58
    .line 59
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;

    .line 2
    .line 3
    iget-boolean v0, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->$isSetFinger:Z

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;-><init>(ZLteam/opay/pay/pin/AppLockPatternFragment;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->$isSetFinger:Z

    .line 12
    .line 13
    const-string v0, "loginWithOther"

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lnf6;

    .line 24
    .line 25
    iget-object p1, p1, Lnf6;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    iget-object v1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 28
    .line 29
    sget v2, Lteam/opay/pay/R$string;->osdk_more_login_ways:I

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 39
    .line 40
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lnf6;

    .line 45
    .line 46
    iget-object p1, p1, Lnf6;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 52
    .line 53
    new-instance v1, Lteam/opay/pay/pin/k;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Lteam/opay/pay/pin/k;-><init>(Lteam/opay/pay/pin/AppLockPatternFragment;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 63
    .line 64
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lnf6;

    .line 69
    .line 70
    iget-object p1, p1, Lnf6;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    iget-object v1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 73
    .line 74
    sget v2, Lteam/opay/pay/R$string;->osdk_login_with:I

    .line 75
    .line 76
    sget v3, Lteam/opay/pay/R$string;->reset_pin:I

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const/4 v4, 0x1

    .line 83
    new-array v4, v4, [Ljava/lang/Object;

    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    aput-object v3, v4, v5

    .line 87
    .line 88
    invoke-virtual {v1, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 96
    .line 97
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lnf6;

    .line 102
    .line 103
    iget-object p1, p1, Lnf6;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 104
    .line 105
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 109
    .line 110
    new-instance v1, Lteam/opay/pay/pin/l;

    .line 111
    .line 112
    invoke-direct {v1, v0}, Lteam/opay/pay/pin/l;-><init>(Lteam/opay/pay/pin/AppLockPatternFragment;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p1, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 116
    .line 117
    .line 118
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 119
    .line 120
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lnf6;

    .line 125
    .line 126
    iget-object p1, p1, Lnf6;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 127
    .line 128
    const-string v0, "switchAccountLinkPattern"

    .line 129
    .line 130
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 134
    .line 135
    new-instance v1, Lteam/opay/pay/pin/m;

    .line 136
    .line 137
    invoke-direct {v1, v0}, Lteam/opay/pay/pin/m;-><init>(Lteam/opay/pay/pin/AppLockPatternFragment;)V

    .line 138
    .line 139
    .line 140
    invoke-static {p1, v1}, Lfe1;->c(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 141
    .line 142
    .line 143
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 144
    .line 145
    return-object p1

    .line 146
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 147
    .line 148
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 149
    .line 150
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1
.end method
