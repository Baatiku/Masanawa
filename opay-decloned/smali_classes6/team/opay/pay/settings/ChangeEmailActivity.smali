.class public final Lteam/opay/pay/settings/ChangeEmailActivity;
.super Lteam/opay/pay/settings/Hilt_ChangeEmailActivity;
.source "ChangeEmailActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/settings/ChangeEmailActivity$Companion;,
        Lteam/opay/pay/settings/ChangeEmailActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000  2\u00020\u0001:\u0001!B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0003R\u001b\u0010\u0011\u001a\u00020\u000c8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u001a\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u000e\u001a\u0004\u0008\u0018\u0010\u0019R\u001b\u0010\u001f\u001a\u00020\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u000e\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lteam/opay/pay/settings/ChangeEmailActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onBackPressed",
        "I",
        "S",
        "Lpc6;",
        "e",
        "Lid8;",
        "M",
        "()Lpc6;",
        "viewBinding",
        "",
        "f",
        "Ljava/lang/String;",
        "refreshToken",
        "Lteam/opay/pay/settings/AccountViewModel;",
        "g",
        "N",
        "()Lteam/opay/pay/settings/AccountViewModel;",
        "viewModel",
        "Lkotlin/text/Regex;",
        "h",
        "L",
        "()Lkotlin/text/Regex;",
        "emailRegex",
        "i",
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
.field public static final i:Lteam/opay/pay/settings/ChangeEmailActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/settings/ChangeEmailActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/settings/ChangeEmailActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/settings/ChangeEmailActivity;->i:Lteam/opay/pay/settings/ChangeEmailActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->fragment_change_email:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/settings/Hilt_ChangeEmailActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, La72;

    .line 7
    .line 8
    invoke-direct {v0, p0}, La72;-><init>(Lteam/opay/pay/settings/ChangeEmailActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/settings/ChangeEmailActivity;->e:Lid8;

    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    iput-object v0, p0, Lteam/opay/pay/settings/ChangeEmailActivity;->f:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v0, Lteam/opay/pay/settings/ChangeEmailActivity$special$$inlined$viewModels$default$1;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lteam/opay/pay/settings/ChangeEmailActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 27
    .line 28
    const-class v2, Lteam/opay/pay/settings/AccountViewModel;

    .line 29
    .line 30
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v3, Lteam/opay/pay/settings/ChangeEmailActivity$special$$inlined$viewModels$default$2;

    .line 35
    .line 36
    invoke-direct {v3, p0}, Lteam/opay/pay/settings/ChangeEmailActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lteam/opay/pay/settings/ChangeEmailActivity$special$$inlined$viewModels$default$3;

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/settings/ChangeEmailActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lteam/opay/pay/settings/ChangeEmailActivity;->g:Lid8;

    .line 49
    .line 50
    new-instance v0, Lb72;

    .line 51
    .line 52
    invoke-direct {v0}, Lb72;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lteam/opay/pay/settings/ChangeEmailActivity;->h:Lid8;

    .line 60
    .line 61
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/settings/ChangeEmailActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->Q(Lteam/opay/pay/settings/ChangeEmailActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/settings/ChangeEmailActivity;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/ChangeEmailActivity;->P(Lteam/opay/pay/settings/ChangeEmailActivity;Landroid/text/Editable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/settings/ChangeEmailActivity;)Lpc6;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->T(Lteam/opay/pay/settings/ChangeEmailActivity;)Lpc6;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/settings/ChangeEmailActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->O(Lteam/opay/pay/settings/ChangeEmailActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lteam/opay/pay/settings/ChangeEmailActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->R(Lteam/opay/pay/settings/ChangeEmailActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F()Lkotlin/text/Regex;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/settings/ChangeEmailActivity;->K()Lkotlin/text/Regex;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic G(Lteam/opay/pay/settings/ChangeEmailActivity;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/settings/ChangeEmailActivity;->J(Lteam/opay/pay/settings/ChangeEmailActivity;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic H(Lteam/opay/pay/settings/ChangeEmailActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->S()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final J(Lteam/opay/pay/settings/ChangeEmailActivity;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->M()Lpc6;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lpc6;->f:Lteam/opay/core/android/views/PulseLoaderView;

    .line 11
    .line 12
    const-string v1, "loadingView"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    sget-object v0, Lteam/opay/pay/settings/ChangeEmailActivity$a;->a:[I

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    aget p2, v0, p2

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    if-eq p2, v0, :cond_2

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    if-eq p2, v1, :cond_1

    .line 41
    .line 42
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    new-instance v1, Lteam/opay/core/account/ChangeEmailEvent;

    .line 51
    .line 52
    invoke-direct {v1, v0, p1}, Lteam/opay/core/account/ChangeEmailEvent;-><init>(ZLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v1}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget-object p1, Lcom/opay/team/OPayAnalytics;->b:Lcom/opay/team/OPayAnalytics$Companion;

    .line 63
    .line 64
    const-string p2, "email"

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lcom/opay/team/OPayAnalytics$Companion;->a(Ljava/lang/String;)Lcom/opay/team/OPayAnalytics;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    const/4 p2, 0x0

    .line 73
    new-array p2, p2, [Lkotlin/Pair;

    .line 74
    .line 75
    const-string v0, "change_fail"

    .line 76
    .line 77
    invoke-virtual {p1, v0, p2}, Lcom/opay/team/OPayAnalytics;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    sget-object p1, Lteam/opay/pay/settings/ChangeEmailFailDialog;->l:Lteam/opay/pay/settings/ChangeEmailFailDialog$Companion;

    .line 81
    .line 82
    invoke-virtual {p1}, Lteam/opay/pay/settings/ChangeEmailFailDialog$Companion;->a()Lteam/opay/pay/settings/ChangeEmailFailDialog;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-instance p2, Lteam/opay/pay/settings/ChangeEmailActivity$changeEmailClick$1$1$1;

    .line 87
    .line 88
    invoke-direct {p2, p0}, Lteam/opay/pay/settings/ChangeEmailActivity$changeEmailClick$1$1$1;-><init>(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Lteam/opay/pay/settings/ChangeEmailFailDialog;->Q(Lkotlin/jvm/functions/Function0;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 98
    .line 99
    return-object p0
.end method

.method public static final K()Lkotlin/text/Regex;
    .locals 2

    .line 1
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    const-string v1, "EMAIL_ADDRESS"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lkotlin/text/Regex;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lkotlin/text/Regex;-><init>(Ljava/util/regex/Pattern;)V

    .line 11
    .line 12
    .line 13
    return-object v1
.end method

.method private final N()Lteam/opay/pay/settings/AccountViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/ChangeEmailActivity;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/settings/AccountViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final O(Lteam/opay/pay/settings/ChangeEmailActivity;)Lkotlin/Unit;
    .locals 17

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v10, Lteam/opay/pay/account/verify/VerifyExitEvent;

    .line 6
    .line 7
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->MODIFY_EMAIL:Lteam/opay/pay/account/verify/ModifyType;

    .line 8
    .line 9
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/16 v8, 0x3d

    .line 14
    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    move-object v1, v10

    .line 22
    invoke-direct/range {v1 .. v9}, Lteam/opay/pay/account/verify/VerifyExitEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v10}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    sget-object v11, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 31
    .line 32
    const/4 v15, 0x4

    .line 33
    const/16 v16, 0x0

    .line 34
    .line 35
    const-string v12, "verify_pool_exit_key"

    .line 36
    .line 37
    const/4 v14, 0x0

    .line 38
    move-object v13, v0

    .line 39
    invoke-static/range {v11 .. v16}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-super/range {p0 .. p0}, Lteam/opay/core/android/InjectableActivity;->onBackPressed()V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public static final P(Lteam/opay/pay/settings/ChangeEmailActivity;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "tvError"

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->L()Lkotlin/text/Regex;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->M()Lpc6;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Lpc6;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    xor-int/lit8 v1, p1, 0x1

    .line 31
    .line 32
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->M()Lpc6;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v0, v0, Lpc6;->d:Lcom/google/android/material/button/MaterialButton;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->M()Lpc6;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget-object p0, p0, Lpc6;->e:Landroidx/appcompat/widget/AppCompatEditText;

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    sget p1, Lteam/opay/pay/R$drawable;->add_card_input_background:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    sget p1, Lteam/opay/pay/R$drawable;->add_card_input_background_invalid:I

    .line 56
    .line 57
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setBackgroundResource(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->M()Lpc6;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object p1, p1, Lpc6;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->M()Lpc6;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    iget-object p0, p0, Lpc6;->e:Landroidx/appcompat/widget/AppCompatEditText;

    .line 78
    .line 79
    sget p1, Lteam/opay/pay/R$drawable;->add_card_input_background_invalid:I

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setBackgroundResource(I)V

    .line 82
    .line 83
    .line 84
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p0
.end method

.method public static final Q(Lteam/opay/pay/settings/ChangeEmailActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->M()Lpc6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lpc6;->d:Lcom/google/android/material/button/MaterialButton;

    .line 6
    .line 7
    const-string v1, "btOk"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lli2;->f(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->I()V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final R(Lteam/opay/pay/settings/ChangeEmailActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->M()Lpc6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lpc6;->d:Lcom/google/android/material/button/MaterialButton;

    .line 6
    .line 7
    const-string v1, "btOk"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lli2;->f(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->onBackPressed()V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final T(Lteam/opay/pay/settings/ChangeEmailActivity;)Lpc6;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lpc6;->inflate(Landroid/view/LayoutInflater;)Lpc6;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public final I()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->M()Lpc6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lpc6;->e:Landroidx/appcompat/widget/AppCompatEditText;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->N()Lteam/opay/pay/settings/AccountViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lteam/opay/core/account/ChangeEmailRequest;

    .line 20
    .line 21
    iget-object v3, p0, Lteam/opay/pay/settings/ChangeEmailActivity;->f:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/pay/android/BaseActivity;->getGenerator()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    invoke-interface {v4}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->phone()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v4, 0x0

    .line 35
    :goto_0
    if-nez v4, :cond_1

    .line 36
    .line 37
    const-string v4, ""

    .line 38
    .line 39
    :cond_1
    invoke-direct {v2, v0, v3, v4}, Lteam/opay/core/account/ChangeEmailRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lteam/opay/pay/settings/AccountViewModel;->u(Lteam/opay/core/account/ChangeEmailRequest;)Landroidx/lifecycle/LiveData;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v2, Lf72;

    .line 47
    .line 48
    invoke-direct {v2, p0, v0}, Lf72;-><init>(Lteam/opay/pay/settings/ChangeEmailActivity;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v1, p0, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final L()Lkotlin/text/Regex;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/ChangeEmailActivity;->h:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkotlin/text/Regex;

    .line 8
    .line 9
    return-object v0
.end method

.method public M()Lpc6;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/ChangeEmailActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lpc6;

    .line 8
    .line 9
    return-object v0
.end method

.method public final S()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->I()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->M()Lpc6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onBackPressed()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->M()Lpc6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lpc6;->d:Lcom/google/android/material/button/MaterialButton;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lli2;->f(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object v0, Lteam/opay/pay/account/verify/InfoConfirmDialog;->n:Lteam/opay/pay/account/verify/InfoConfirmDialog$Companion;

    .line 13
    .line 14
    new-instance v7, Lteam/opay/pay/account/verify/ConfirmData;

    .line 15
    .line 16
    sget v1, Lteam/opay/pay/R$string;->settings_exit_confirm_tip:I

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v1, "getString(...)"

    .line 23
    .line 24
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x6

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    move-object v1, v7

    .line 32
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/account/verify/ConfirmData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v7}, Lteam/opay/pay/account/verify/InfoConfirmDialog$Companion;->a(Lteam/opay/pay/account/verify/ConfirmData;)Lteam/opay/pay/account/verify/InfoConfirmDialog;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lz62;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lz62;-><init>(Lteam/opay/pay/settings/ChangeEmailActivity;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lteam/opay/pay/account/verify/InfoConfirmDialog;->R(Lkotlin/jvm/functions/Function0;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/settings/Hilt_ChangeEmailActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "key"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, ""

    .line 17
    .line 18
    :cond_0
    iput-object p1, p0, Lteam/opay/pay/settings/ChangeEmailActivity;->f:Ljava/lang/String;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->M()Lpc6;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p1, p1, Lpc6;->e:Landroidx/appcompat/widget/AppCompatEditText;

    .line 34
    .line 35
    const-string v0, "etEmail"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lc72;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lc72;-><init>(Lteam/opay/pay/settings/ChangeEmailActivity;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v0}, Lpf5;->a(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)Landroid/text/TextWatcher;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->M()Lpc6;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p1, p1, Lpc6;->d:Lcom/google/android/material/button/MaterialButton;

    .line 53
    .line 54
    const-string v0, "btOk"

    .line 55
    .line 56
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Ld72;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Ld72;-><init>(Lteam/opay/pay/settings/ChangeEmailActivity;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lteam/opay/pay/settings/ChangeEmailActivity;->M()Lpc6;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p1, p1, Lpc6;->c:Lcom/google/android/material/button/MaterialButton;

    .line 72
    .line 73
    const-string v0, "btCancel"

    .line 74
    .line 75
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Le72;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Le72;-><init>(Lteam/opay/pay/settings/ChangeEmailActivity;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
