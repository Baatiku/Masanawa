.class public final Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "IAgreeBvnViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\'\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J-\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u00082\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u001b\u0010!\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u001d\u0010(\u001a\u0008\u0012\u0004\u0012\u00020#0\"8\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;)V",
        "Lteam/opay/pay/kyc/bvn/CheckBvnUrlRequest;",
        "request",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "Landroid/view/View;",
        "loadView",
        "",
        "v",
        "(Lteam/opay/pay/kyc/bvn/CheckBvnUrlRequest;Landroidx/fragment/app/Fragment;Landroid/view/View;)V",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/pay/kyc/bvn/CheckBvnUrlResponse;",
        "it",
        "B",
        "(Landroidx/fragment/app/Fragment;Lteam/opay/pay/kyc/bvn/CheckBvnUrlRequest;Lteam/opay/core/android/arch/Resource;)V",
        "b",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "Lcv7;",
        "c",
        "Lcv7;",
        "api",
        "Lteam/opay/core/settings/NoClearStorage;",
        "d",
        "Lid8;",
        "z",
        "()Lteam/opay/core/settings/NoClearStorage;",
        "noClearStorage",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "e",
        "Landroidx/lifecycle/MutableLiveData;",
        "y",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loadingLiveData",
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


# instance fields
.field public final b:Lteam/opay/core/android/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcv7;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appExecutors"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;->b:Lteam/opay/core/android/arch/AppExecutors;

    .line 15
    .line 16
    sget-object p2, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 17
    .line 18
    const-class v0, Lcv7;

    .line 19
    .line 20
    invoke-virtual {p2, p1, v0}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Lcv7;

    .line 25
    .line 26
    iput-object p2, p0, Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;->c:Lcv7;

    .line 27
    .line 28
    new-instance p2, Lu67;

    .line 29
    .line 30
    invoke-direct {p2, p1}, Lu67;-><init>(Landroid/app/Application;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;->d:Lid8;

    .line 38
    .line 39
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    return-void
.end method

.method public static final A(Landroid/app/Application;)Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic r(Landroid/view/View;Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;Landroidx/fragment/app/Fragment;Lteam/opay/pay/kyc/bvn/CheckBvnUrlRequest;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;->w(Landroid/view/View;Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;Landroidx/fragment/app/Fragment;Lteam/opay/pay/kyc/bvn/CheckBvnUrlRequest;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Landroid/app/Application;)Lteam/opay/core/settings/NoClearStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;->A(Landroid/app/Application;)Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;Landroidx/fragment/app/Fragment;Lteam/opay/pay/kyc/bvn/CheckBvnUrlRequest;Lteam/opay/core/android/arch/Resource;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;->x(Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;Landroidx/fragment/app/Fragment;Lteam/opay/pay/kyc/bvn/CheckBvnUrlRequest;Lteam/opay/core/android/arch/Resource;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic u(Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;)Lcv7;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;->c:Lcv7;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final w(Landroid/view/View;Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;Landroidx/fragment/app/Fragment;Lteam/opay/pay/kyc/bvn/CheckBvnUrlRequest;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ne v2, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    :cond_0
    invoke-static {p0, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object p0, p1, Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    if-eqz p4, :cond_2

    .line 21
    .line 22
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ne v2, v1, :cond_2

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    if-eqz p4, :cond_3

    .line 37
    .line 38
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    const/4 p0, 0x0

    .line 44
    :goto_1
    if-nez p0, :cond_4

    .line 45
    .line 46
    const/4 p0, -0x1

    .line 47
    goto :goto_2

    .line 48
    :cond_4
    sget-object v0, Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel$a;->a:[I

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    aget p0, v0, p0

    .line 55
    .line 56
    :goto_2
    if-eq p0, v1, :cond_7

    .line 57
    .line 58
    const/4 p1, 0x2

    .line 59
    if-eq p0, p1, :cond_5

    .line 60
    .line 61
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_5
    sget-object p0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 66
    .line 67
    invoke-virtual {p0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-nez p1, :cond_6

    .line 80
    .line 81
    const-string p1, ""

    .line 82
    .line 83
    :cond_6
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_7
    invoke-direct {p1}, Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;->z()Lteam/opay/core/settings/NoClearStorage;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Lteam/opay/core/settings/NoClearStorage;->f()Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_8

    .line 96
    .line 97
    sget-object p0, Lteam/opay/pay/kyc/bvn/IAgreeConfirmFragment;->l:Lteam/opay/pay/kyc/bvn/IAgreeConfirmFragment$Companion;

    .line 98
    .line 99
    invoke-virtual {p0}, Lteam/opay/pay/kyc/bvn/IAgreeConfirmFragment$Companion;->a()Lteam/opay/pay/kyc/bvn/IAgreeConfirmFragment;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    new-instance v0, Lw67;

    .line 104
    .line 105
    invoke-direct {v0, p1, p2, p3, p4}, Lw67;-><init>(Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;Landroidx/fragment/app/Fragment;Lteam/opay/pay/kyc/bvn/CheckBvnUrlRequest;Lteam/opay/core/android/arch/Resource;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/bvn/IAgreeConfirmFragment;->Q(Lkotlin/jvm/functions/Function1;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3}, Lteam/opay/pay/kyc/bvn/CheckBvnUrlRequest;->a()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/bvn/IAgreeConfirmFragment;->R(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_9

    .line 123
    .line 124
    invoke-static {p1, p0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_8
    invoke-virtual {p1, p2, p3, p4}, Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;->B(Landroidx/fragment/app/Fragment;Lteam/opay/pay/kyc/bvn/CheckBvnUrlRequest;Lteam/opay/core/android/arch/Resource;)V

    .line 129
    .line 130
    .line 131
    :cond_9
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 132
    .line 133
    return-object p0
.end method

.method public static final x(Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;Landroidx/fragment/app/Fragment;Lteam/opay/pay/kyc/bvn/CheckBvnUrlRequest;Lteam/opay/core/android/arch/Resource;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;->B(Landroidx/fragment/app/Fragment;Lteam/opay/pay/kyc/bvn/CheckBvnUrlRequest;Lteam/opay/core/android/arch/Resource;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private final z()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/settings/NoClearStorage;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final B(Landroidx/fragment/app/Fragment;Lteam/opay/pay/kyc/bvn/CheckBvnUrlRequest;Lteam/opay/core/android/arch/Resource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lteam/opay/pay/kyc/bvn/CheckBvnUrlRequest;",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/kyc/bvn/CheckBvnUrlResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/bvn/IAgreeBvnActivity;->h:Lteam/opay/pay/kyc/bvn/IAgreeBvnActivity$Companion;

    .line 2
    .line 3
    invoke-virtual {p2}, Lteam/opay/pay/kyc/bvn/CheckBvnUrlRequest;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    check-cast p3, Lteam/opay/pay/kyc/bvn/CheckBvnUrlResponse;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p3}, Lteam/opay/pay/kyc/bvn/CheckBvnUrlResponse;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p3, 0x0

    .line 21
    :goto_0
    if-nez p3, :cond_1

    .line 22
    .line 23
    const-string p3, ""

    .line 24
    .line 25
    :cond_1
    const/16 v1, 0x701

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2, p3, v1}, Lteam/opay/pay/kyc/bvn/IAgreeBvnActivity$Companion;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final v(Lteam/opay/pay/kyc/bvn/CheckBvnUrlRequest;Landroidx/fragment/app/Fragment;Landroid/view/View;)V
    .locals 2
    .param p1    # Lteam/opay/pay/kyc/bvn/CheckBvnUrlRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fragment"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;->b:Lteam/opay/core/android/arch/AppExecutors;

    .line 12
    .line 13
    new-instance v1, Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel$b;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel$b;-><init>(Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;Lteam/opay/pay/kyc/bvn/CheckBvnUrlRequest;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lv67;

    .line 23
    .line 24
    invoke-direct {v1, p3, p0, p2, p1}, Lv67;-><init>(Landroid/view/View;Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;Landroidx/fragment/app/Fragment;Lteam/opay/pay/kyc/bvn/CheckBvnUrlRequest;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p2, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final y()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/bvn/IAgreeBvnViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method
