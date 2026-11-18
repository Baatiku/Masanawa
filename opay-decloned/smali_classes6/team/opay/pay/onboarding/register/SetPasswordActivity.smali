.class public final Lteam/opay/pay/onboarding/register/SetPasswordActivity;
.super Lteam/opay/pay/onboarding/register/Hilt_SetPasswordActivity;
.source "SetPasswordActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/onboarding/register/SetPasswordActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u0019\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ)\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0014\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0003J\u000f\u0010\u0017\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0003R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/pay/onboarding/register/SetPasswordActivity;",
        "Lteam/opay/pay/android/NoBindingActivity;",
        "<init>",
        "()V",
        "",
        "P",
        "j0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onPostCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "",
        "showSuccessPage",
        "g0",
        "(Z)V",
        "i0",
        "k0",
        "Lteam/opay/pay/onboarding/register/RegisterViewModel;",
        "g",
        "Lid8;",
        "f0",
        "()Lteam/opay/pay/onboarding/register/RegisterViewModel;",
        "registerViewModel",
        "h",
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
.field public static final h:Lteam/opay/pay/onboarding/register/SetPasswordActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/register/SetPasswordActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->h:Lteam/opay/pay/onboarding/register/SetPasswordActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->layout_fragment_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/onboarding/register/Hilt_SetPasswordActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/onboarding/register/SetPasswordActivity$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 12
    .line 13
    const-class v2, Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 14
    .line 15
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lteam/opay/pay/onboarding/register/SetPasswordActivity$special$$inlined$viewModels$default$2;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lteam/opay/pay/onboarding/register/SetPasswordActivity$special$$inlined$viewModels$default$3;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->g:Lid8;

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->U(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lteam/opay/pay/onboarding/register/SetPwdDataRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->X(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lteam/opay/pay/onboarding/register/SetPwdDataRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->W(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lteam/opay/pay/onboarding/register/SetPwdDataRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->e0(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lteam/opay/pay/onboarding/register/SetPwdDataRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lteam/opay/pay/onboarding/register/SetPwdDataRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->R(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lteam/opay/pay/onboarding/register/SetPwdDataRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->b0(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lkotlin/Unit;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->V(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->a0(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lkotlin/Unit;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->T(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lteam/opay/pay/kyc/base/KycConsultDialogRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->Z(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lteam/opay/pay/kyc/base/KycConsultDialogRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic K(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->Q(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->c0(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic M(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->S(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->d0(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lkotlin/Unit;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic O(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->Y(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final P()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->P()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lgjd;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lgjd;-><init>(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lteam/opay/pay/onboarding/register/SetPasswordActivity$a;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->W()Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lmjd;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lmjd;-><init>(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lteam/opay/pay/onboarding/register/SetPasswordActivity$a;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->K()Landroidx/lifecycle/MutableLiveData;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lnjd;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lnjd;-><init>(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lteam/opay/pay/onboarding/register/SetPasswordActivity$a;

    .line 57
    .line 58
    invoke-direct {v2, v1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->B()Lteam/opay/pay/util/SingleLiveEvent;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Lojd;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lojd;-><init>(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Lteam/opay/pay/onboarding/register/SetPasswordActivity$a;

    .line 78
    .line 79
    invoke-direct {v2, v1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->J()Lteam/opay/pay/util/SingleLiveEvent;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v1, Lpjd;

    .line 94
    .line 95
    invoke-direct {v1, p0}, Lpjd;-><init>(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)V

    .line 96
    .line 97
    .line 98
    new-instance v2, Lteam/opay/pay/onboarding/register/SetPasswordActivity$a;

    .line 99
    .line 100
    invoke-direct {v2, v1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-instance v1, Lqjd;

    .line 115
    .line 116
    invoke-direct {v1, p0}, Lqjd;-><init>(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)V

    .line 117
    .line 118
    .line 119
    new-instance v2, Lteam/opay/pay/onboarding/register/SetPasswordActivity$a;

    .line 120
    .line 121
    invoke-direct {v2, v1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    new-instance v1, Lrjd;

    .line 136
    .line 137
    invoke-direct {v1, p0}, Lrjd;-><init>(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)V

    .line 138
    .line 139
    .line 140
    new-instance v2, Lteam/opay/pay/onboarding/register/SetPasswordActivity$a;

    .line 141
    .line 142
    invoke-direct {v2, v1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    new-instance v1, Lsjd;

    .line 157
    .line 158
    invoke-direct {v1, p0}, Lsjd;-><init>(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)V

    .line 159
    .line 160
    .line 161
    new-instance v2, Lteam/opay/pay/onboarding/register/SetPasswordActivity$a;

    .line 162
    .line 163
    invoke-direct {v2, v1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    new-instance v1, Ltjd;

    .line 178
    .line 179
    invoke-direct {v1, p0}, Ltjd;-><init>(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)V

    .line 180
    .line 181
    .line 182
    new-instance v2, Lteam/opay/pay/onboarding/register/SetPasswordActivity$a;

    .line 183
    .line 184
    invoke-direct {v2, v1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 188
    .line 189
    .line 190
    return-void
.end method

.method public static final Q(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v1, p1, v0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->h0(Lteam/opay/pay/onboarding/register/SetPasswordActivity;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static final R(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lteam/opay/pay/onboarding/register/SetPwdDataRsp;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->j()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, p1, v1}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->Y(Lteam/opay/pay/onboarding/register/SetPwdDataRsp;Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->g0(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->c()Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->Q(Ljava/util/Map;)Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;->getExtMap()Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    :cond_2
    const-string v1, "auditRecordStatus"

    .line 59
    .line 60
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "FAIL"

    .line 65
    .line 66
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    sget-object v0, Lteam/opay/pay/kyc/upgrade1/task/RegisterFaceFailedFragment;->w:Lteam/opay/pay/kyc/upgrade1/task/RegisterFaceFailedFragment$Companion;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/upgrade1/task/RegisterFaceFailedFragment$Companion;->a(Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;)Lteam/opay/pay/kyc/upgrade1/task/RegisterFaceFailedFragment;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance v0, Lujd;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lujd;-><init>(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/upgrade1/task/RegisterFaceFailedFragment;->s0(Lkotlin/jvm/functions/Function0;)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Lhjd;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Lhjd;-><init>(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/upgrade1/task/RegisterFaceFailedFragment;->r0(Lkotlin/jvm/functions/Function0;)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lijd;

    .line 95
    .line 96
    invoke-direct {v0, p0}, Lijd;-><init>(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/upgrade1/task/RegisterFaceFailedFragment;->q0(Lkotlin/jvm/functions/Function0;)V

    .line 100
    .line 101
    .line 102
    sget v0, Lteam/opay/pay/R$id;->container:I

    .line 103
    .line 104
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    sget-object v0, Lteam/opay/pay/kyc/upgrade1/task/RegisterFacePendingFragment;->s:Lteam/opay/pay/kyc/upgrade1/task/RegisterFacePendingFragment$Companion;

    .line 109
    .line 110
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/upgrade1/task/RegisterFacePendingFragment$Companion;->a(Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;)Lteam/opay/pay/kyc/upgrade1/task/RegisterFacePendingFragment;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance v0, Ljjd;

    .line 115
    .line 116
    invoke-direct {v0, p0}, Ljjd;-><init>(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/upgrade1/task/RegisterFacePendingFragment;->W(Lkotlin/jvm/functions/Function0;)V

    .line 120
    .line 121
    .line 122
    new-instance v0, Lkjd;

    .line 123
    .line 124
    invoke-direct {v0, p0}, Lkjd;-><init>(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/upgrade1/task/RegisterFacePendingFragment;->V(Lkotlin/jvm/functions/Function0;)V

    .line 128
    .line 129
    .line 130
    sget v0, Lteam/opay/pay/R$id;->container:I

    .line 131
    .line 132
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 133
    .line 134
    .line 135
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 136
    .line 137
    return-object p0

    .line 138
    :cond_4
    :goto_1
    sget p1, Lteam/opay/pay/R$string;->connection_error_headline:I

    .line 139
    .line 140
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const-string v0, "getString(...)"

    .line 145
    .line 146
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 153
    .line 154
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->k0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final T(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lum8;->g(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final U(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->k0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lum8;->g(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final W(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lum8;->g(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final X(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lteam/opay/pay/onboarding/register/SetPwdDataRsp;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->i()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, ""

    .line 12
    .line 13
    sparse-switch v1, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :sswitch_0
    const-string v1, "AUTH_DONE_REVIEW_FAIL"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->i0()V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lteam/opay/pay/onboarding/register/GuardianFailedFragment;->l:Lteam/opay/pay/onboarding/register/GuardianFailedFragment$Companion;

    .line 32
    .line 33
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->g()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    move-object v1, v2

    .line 40
    :cond_1
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->h()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-object v2, p1

    .line 48
    :goto_0
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/onboarding/register/GuardianFailedFragment$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/pay/onboarding/register/GuardianFailedFragment;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    sget v0, Lteam/opay/pay/R$id;->container:I

    .line 53
    .line 54
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :sswitch_1
    const-string v1, "PENDING_AUTH_REVIEW_FAIL"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_6

    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :sswitch_2
    const-string v1, "PENDING_AUTH_REVIEW"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_6

    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :sswitch_3
    const-string p1, "DONE"

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_3

    .line 86
    .line 87
    goto/16 :goto_2

    .line 88
    .line 89
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->U()Lteam/opay/pay/onboarding/register/SetPwdDataRsp;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_a

    .line 98
    .line 99
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->V()Landroidx/lifecycle/MutableLiveData;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :sswitch_4
    const-string p1, "AUTH_EXPIRE"

    .line 112
    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_4

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->i0()V

    .line 121
    .line 122
    .line 123
    sget-object p1, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->m:Lteam/opay/pay/onboarding/register/GuardianExpireFragment$Companion;

    .line 124
    .line 125
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$Companion;->a()Lteam/opay/pay/onboarding/register/GuardianExpireFragment;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    sget v0, Lteam/opay/pay/R$id;->container:I

    .line 130
    .line 131
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :sswitch_5
    const-string v1, "PENDING_REVIEW"

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_5

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->i0()V

    .line 145
    .line 146
    .line 147
    sget-object v0, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;->m:Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$Companion;

    .line 148
    .line 149
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->e()Ljava/lang/Long;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->f()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {v0, v1, p1}, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$Companion;->a(Ljava/lang/Long;Ljava/lang/String;)Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    sget v0, Lteam/opay/pay/R$id;->container:I

    .line 162
    .line 163
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :sswitch_6
    const-string v1, "PENDING_AUTH"

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-nez v0, :cond_6

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_6
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->i0()V

    .line 177
    .line 178
    .line 179
    sget-object v0, Lteam/opay/pay/onboarding/register/GuardianPendingFragement;->n:Lteam/opay/pay/onboarding/register/GuardianPendingFragement$Companion;

    .line 180
    .line 181
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->k()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    if-nez v1, :cond_7

    .line 186
    .line 187
    move-object v1, v2

    .line 188
    :cond_7
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->d()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    if-nez p1, :cond_8

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_8
    move-object v2, p1

    .line 196
    :goto_1
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/onboarding/register/GuardianPendingFragement$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/pay/onboarding/register/GuardianPendingFragement;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    sget v0, Lteam/opay/pay/R$id;->container:I

    .line 201
    .line 202
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_9
    :goto_2
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 207
    .line 208
    .line 209
    :cond_a
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 210
    .line 211
    return-object p0

    .line 212
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a6cb490 -> :sswitch_6
        -0x65eff0e0 -> :sswitch_5
        -0x1b97146a -> :sswitch_4
        0x201b82 -> :sswitch_3
        0x2b07df07 -> :sswitch_2
        0x3b58f556 -> :sswitch_1
        0x3defcc1f -> :sswitch_0
    .end sparse-switch
.end method

.method public static final Y(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final Z(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lteam/opay/pay/kyc/base/KycConsultDialogRsp;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultDialogRsp;->g()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, ""

    .line 12
    .line 13
    sparse-switch v1, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :sswitch_0
    const-string v1, "AUTH_DONE_REVIEW_FAIL"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_0
    sget-object v0, Lteam/opay/pay/onboarding/register/GuardianFailedFragment;->l:Lteam/opay/pay/onboarding/register/GuardianFailedFragment$Companion;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultDialogRsp;->e()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    move-object v1, v2

    .line 37
    :cond_1
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultDialogRsp;->f()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move-object v2, p1

    .line 45
    :goto_0
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/onboarding/register/GuardianFailedFragment$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/pay/onboarding/register/GuardianFailedFragment;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sget v0, Lteam/opay/pay/R$id;->container:I

    .line 50
    .line 51
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :sswitch_1
    const-string v1, "PENDING_AUTH_REVIEW_FAIL"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_6

    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :sswitch_2
    const-string v1, "PENDING_AUTH_REVIEW"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_6

    .line 73
    .line 74
    goto/16 :goto_2

    .line 75
    .line 76
    :sswitch_3
    const-string p1, "DONE"

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_3

    .line 83
    .line 84
    goto/16 :goto_2

    .line 85
    .line 86
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->U()Lteam/opay/pay/onboarding/register/SetPwdDataRsp;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_9

    .line 95
    .line 96
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->V()Landroidx/lifecycle/MutableLiveData;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :sswitch_4
    const-string p1, "AUTH_EXPIRE"

    .line 109
    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_4

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    sget-object p1, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->m:Lteam/opay/pay/onboarding/register/GuardianExpireFragment$Companion;

    .line 118
    .line 119
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$Companion;->a()Lteam/opay/pay/onboarding/register/GuardianExpireFragment;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    sget v0, Lteam/opay/pay/R$id;->container:I

    .line 124
    .line 125
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :sswitch_5
    const-string v1, "PENDING_REVIEW"

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_5

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    sget-object v0, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;->m:Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$Companion;

    .line 139
    .line 140
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultDialogRsp;->c()Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultDialogRsp;->d()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {v0, v1, p1}, Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment$Companion;->a(Ljava/lang/Long;Ljava/lang/String;)Lteam/opay/pay/onboarding/register/GuardianUnderReviewFragment;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    sget v0, Lteam/opay/pay/R$id;->container:I

    .line 153
    .line 154
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :sswitch_6
    const-string v1, "PENDING_AUTH"

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_6

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_6
    sget-object v0, Lteam/opay/pay/onboarding/register/GuardianPendingFragement;->n:Lteam/opay/pay/onboarding/register/GuardianPendingFragement$Companion;

    .line 168
    .line 169
    sget-object v1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 170
    .line 171
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultDialogRsp;->b()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    if-nez p1, :cond_7

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_7
    move-object v2, p1

    .line 187
    :goto_1
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/onboarding/register/GuardianPendingFragement$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/pay/onboarding/register/GuardianPendingFragement;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    sget v0, Lteam/opay/pay/R$id;->container:I

    .line 192
    .line 193
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_8
    :goto_2
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 198
    .line 199
    .line 200
    :cond_9
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 201
    .line 202
    return-object p0

    .line 203
    :sswitch_data_0
    .sparse-switch
        -0x6a6cb490 -> :sswitch_6
        -0x65eff0e0 -> :sswitch_5
        -0x1b97146a -> :sswitch_4
        0x201b82 -> :sswitch_3
        0x2b07df07 -> :sswitch_2
        0x3b58f556 -> :sswitch_1
        0x3defcc1f -> :sswitch_0
    .end sparse-switch
.end method

.method public static final a0(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->U()Lteam/opay/pay/onboarding/register/SetPwdDataRsp;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->V()Landroidx/lifecycle/MutableLiveData;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method public static final b0(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object p1, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->r:Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment$Companion;->b()Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lljd;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lljd;-><init>(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lteam/opay/pay/onboarding/register/RegisterOwealthGuideFragment;->e0(Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    sget v0, Lteam/opay/pay/R$id;->container:I

    .line 16
    .line 17
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method public static final c0(Lteam/opay/pay/onboarding/register/SetPasswordActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->n0()V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final d0(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 9

    .line 1
    sget-object p1, Lteam/opay/pay/home/security/remember/RememberPswTipFragment;->s:Lteam/opay/pay/home/security/remember/RememberPswTipFragment$Companion;

    .line 2
    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lteam/opay/pay/home/security/remember/RememberPswTipFragment$Companion;->c(Ljava/lang/Boolean;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Lteam/opay/core/account/AccountInfoManager;->d(Z)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->j:Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity$Companion;

    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->C()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const/16 v7, 0x14

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    const-string v3, "REGISTER"

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    move-object v2, p0

    .line 36
    invoke-static/range {v1 .. v8}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity$Companion;->b(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method public static final e0(Lteam/opay/pay/onboarding/register/SetPasswordActivity;Lteam/opay/pay/onboarding/register/SetPwdDataRsp;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->j()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, p1, v1}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->Y(Lteam/opay/pay/onboarding/register/SetPwdDataRsp;Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->g0(Z)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->j0()V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_1
    :goto_0
    sget p1, Lteam/opay/pay/R$string;->connection_error_headline:I

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v0, "getString(...)"

    .line 43
    .line 44
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0
.end method

.method public static synthetic h0(Lteam/opay/pay/onboarding/register/SetPasswordActivity;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->g0(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final j0()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x6

    .line 3
    const-string v2, "ASYNC_KYC"

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v2, v3, v0, v1, v0}, Lkmf;->k(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/opay/webview/WebFoundationData;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/opay/webview/WebFoundationData;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 16
    .line 17
    const-class v2, Lcom/opay/webview/WebFoundationActivity;

    .line 18
    .line 19
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v2, "web_data"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x3e9

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final g0(Z)V
    .locals 11

    .line 1
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager;->p()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->X()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    invoke-static {p0, v4, p1, v3}, Lum8;->j(Landroid/app/Activity;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    sget-object v2, Lteam/opay/pay/home/security/remember/RememberPswTipFragment;->s:Lteam/opay/pay/home/security/remember/RememberPswTipFragment$Companion;

    .line 35
    .line 36
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v2, v5}, Lteam/opay/pay/home/security/remember/RememberPswTipFragment$Companion;->c(Ljava/lang/Boolean;)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lteam/opay/core/settings/SettingsStorage;

    .line 42
    .line 43
    invoke-direct {v2, p0}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v1}, Lteam/opay/core/settings/SettingsStorage;->r0(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    sget-object v5, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessFragment;->u:Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessFragment$Companion;

    .line 52
    .line 53
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->U()Lteam/opay/pay/onboarding/register/SetPwdDataRsp;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->a()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    :cond_1
    move-object v7, v3

    .line 68
    const/4 v9, 0x4

    .line 69
    const/4 v10, 0x0

    .line 70
    const-string v6, "REGISTER"

    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    invoke-static/range {v5 .. v10}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessFragment$Companion;->b(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessFragment$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessFragment;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    sget v1, Lteam/opay/pay/R$id;->container:I

    .line 78
    .line 79
    invoke-static {p0, v1, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1, v4}, Lteam/opay/core/account/AccountInfoManager;->d(Z)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final i0()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->U()Lteam/opay/pay/onboarding/register/SetPwdDataRsp;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->j()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v2, v3

    .line 24
    :goto_0
    const-string v4, ""

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    move-object v2, v4

    .line 29
    :cond_1
    invoke-virtual {v1, v2}, Lteam/opay/core/account/AccountInfoManager;->R(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->U()Lteam/opay/pay/onboarding/register/SetPwdDataRsp;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->k()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    :cond_2
    if-nez v3, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    move-object v4, v3

    .line 54
    :goto_1
    invoke-virtual {v0, v4}, Lteam/opay/core/account/AccountInfoManager;->S(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final k0()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "REGISTER_FACE_REVIEW_KYC"

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const-string v4, "&initTaskName=FACE_COMPARISON"

    .line 7
    .line 8
    invoke-static {v2, v3, v4, v0, v1}, Lkmf;->k(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/opay/webview/WebFoundationData;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lcom/opay/webview/WebFoundationData;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroid/content/Intent;

    .line 18
    .line 19
    const-class v2, Lcom/opay/webview/WebFoundationActivity;

    .line 20
    .line 21
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v2, "web_data"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x3ea

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x3e9

    .line 5
    .line 6
    if-eq p1, p2, :cond_0

    .line 7
    .line 8
    const/16 p2, 0x3ea

    .line 9
    .line 10
    if-eq p1, p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p0}, Lum8;->g(Landroid/app/Activity;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    invoke-static {p0, v0, p1, v1}, Lum8;->j(Landroid/app/Activity;ZILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    const-string v3, "refreshToken"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v2, v1

    .line 31
    :goto_0
    const-string v3, ""

    .line 32
    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    move-object v2, v3

    .line 36
    :cond_2
    invoke-virtual {p1, v2}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->l0(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    const-string v4, "channel"

    .line 50
    .line 51
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move-object v2, v1

    .line 57
    :goto_1
    if-nez v2, :cond_4

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    move-object v3, v2

    .line 61
    :goto_2
    invoke-virtual {p1, v3}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->g0(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_5

    .line 73
    .line 74
    const-string v3, "key_is_pre_set_password"

    .line 75
    .line 76
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    :cond_5
    invoke-virtual {p1, v0}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->k0(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->f0()Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    const-string v2, "key_common_buried_param_map"

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    goto :goto_3

    .line 100
    :cond_6
    move-object v0, v1

    .line 101
    :goto_3
    instance-of v2, v0, Ljava/util/HashMap;

    .line 102
    .line 103
    if-eqz v2, :cond_7

    .line 104
    .line 105
    move-object v1, v0

    .line 106
    check-cast v1, Ljava/util/HashMap;

    .line 107
    .line 108
    :cond_7
    invoke-virtual {p1, v1}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->h0(Ljava/util/HashMap;)V

    .line 109
    .line 110
    .line 111
    sget p1, Lteam/opay/pay/R$id;->container:I

    .line 112
    .line 113
    sget-object v0, Lteam/opay/pay/onboarding/register/SetPasswordFragment;->v:Lteam/opay/pay/onboarding/register/SetPasswordFragment$Companion;

    .line 114
    .line 115
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/SetPasswordFragment$Companion;->a()Lteam/opay/pay/onboarding/register/SetPasswordFragment;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0}, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->P()V

    .line 123
    .line 124
    .line 125
    return-void
.end method
