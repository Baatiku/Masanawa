.class public abstract Lteam/opay/pay/settings/BaseAddInstrumentFragment;
.super Lteam/opay/core/base/BaseInjectFragmentV2;
.source "BaseAddInstrumentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/settings/BaseAddInstrumentFragment$Companion;,
        Lteam/opay/pay/settings/BaseAddInstrumentFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Lxyf;",
        ">",
        "Lteam/opay/core/base/BaseInjectFragmentV2<",
        "TVB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001d\u0008&\u0018\u0000 \\*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003:\u0001]B)\u0012 \u0010\u0008\u001a\u001c\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ+\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0014H\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0010H&\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u001f\u0010\u001dJ\u001b\u0010!\u001a\u00020\u00102\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0007H&\u00a2\u0006\u0004\u0008!\u0010\"R.\u0010\u0008\u001a\u001c\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0017\u0010*\u001a\u00020%8\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\u001b\u00100\u001a\u00020+8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/R\"\u00108\u001a\u0002018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\"\u0010@\u001a\u0002098\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R$\u0010H\u001a\u0004\u0018\u00010A8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010C\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR\"\u0010K\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008I\u0010J\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010\u001dR\"\u0010O\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008N\u0010J\u001a\u0004\u0008O\u0010L\"\u0004\u0008P\u0010\u001dR\u001e\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR\u001e\u0010U\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010RR$\u0010[\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008V\u0010W\u001a\u0004\u0008X\u0010Y\"\u0004\u0008Z\u0010\u0017\u00a8\u0006^"
    }
    d2 = {
        "Lteam/opay/pay/settings/BaseAddInstrumentFragment;",
        "Lxyf;",
        "VB",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Lkotlin/Function3;",
        "Landroid/view/LayoutInflater;",
        "Landroid/view/ViewGroup;",
        "",
        "inflate",
        "<init>",
        "(Lhm6;)V",
        "Lteam/opay/core/api/graphql/OrderFeeRequest;",
        "request",
        "Lteam/opay/pay/settings/AddInfo;",
        "info",
        "Lkotlin/Function0;",
        "",
        "next",
        "S",
        "(Lteam/opay/core/api/graphql/OrderFeeRequest;Lteam/opay/pay/settings/AddInfo;Lkotlin/jvm/functions/Function0;)V",
        "Lteam/opay/pay/account/verify/VerifyEvent;",
        "event",
        "onEvent",
        "(Lteam/opay/pay/account/verify/VerifyEvent;)V",
        "Y",
        "()V",
        "c0",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "show",
        "i0",
        "emptyInstruments",
        "d0",
        "(Ljava/lang/Boolean;)V",
        "k",
        "Lhm6;",
        "Ljava/text/SimpleDateFormat;",
        "l",
        "Ljava/text/SimpleDateFormat;",
        "getFormat",
        "()Ljava/text/SimpleDateFormat;",
        "format",
        "Lteam/opay/pay/settings/NewCardViewModel;",
        "m",
        "Lid8;",
        "b0",
        "()Lteam/opay/pay/settings/NewCardViewModel;",
        "viewModel",
        "",
        "n",
        "I",
        "getCurrent",
        "()I",
        "setCurrent",
        "(I)V",
        "current",
        "",
        "o",
        "Ljava/lang/String;",
        "X",
        "()Ljava/lang/String;",
        "h0",
        "(Ljava/lang/String;)V",
        "sourceFrom",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "p",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "W",
        "()Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "f0",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V",
        "amount",
        "q",
        "Z",
        "isKycLevel2OrLevel3",
        "()Z",
        "g0",
        "r",
        "isGetUserInfoSuccess",
        "setGetUserInfoSuccess",
        "s",
        "Lkotlin/jvm/functions/Function0;",
        "cardBlock",
        "t",
        "accountBlock",
        "u",
        "Lteam/opay/pay/account/verify/VerifyEvent;",
        "a0",
        "()Lteam/opay/pay/account/verify/VerifyEvent;",
        "setVerifyEvent",
        "verifyEvent",
        "v",
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
.field public static final v:Lteam/opay/pay/settings/BaseAddInstrumentFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final k:Lhm6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhm6<",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Boolean;",
            "TVB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:I

.field public o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Z

.field public r:Z

.field public s:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:Lteam/opay/pay/account/verify/VerifyEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/settings/BaseAddInstrumentFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/settings/BaseAddInstrumentFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->v:Lteam/opay/pay/settings/BaseAddInstrumentFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lhm6;)V
    .locals 3
    .param p1    # Lhm6;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhm6<",
            "-",
            "Landroid/view/LayoutInflater;",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Ljava/lang/Boolean;",
            "+TVB;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "inflate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lteam/opay/core/base/BaseInjectFragmentV2;-><init>(Lhm6;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->k:Lhm6;

    .line 10
    .line 11
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->l:Ljava/text/SimpleDateFormat;

    .line 20
    .line 21
    const-class p1, Lteam/opay/pay/settings/NewCardViewModel;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v0, Lteam/opay/pay/settings/BaseAddInstrumentFragment$special$$inlined$activityViewModels$default$1;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lteam/opay/pay/settings/BaseAddInstrumentFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lteam/opay/pay/settings/BaseAddInstrumentFragment$special$$inlined$activityViewModels$default$2;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {v1, v2, p0}, Lteam/opay/pay/settings/BaseAddInstrumentFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Lteam/opay/pay/settings/BaseAddInstrumentFragment$special$$inlined$activityViewModels$default$3;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lteam/opay/pay/settings/BaseAddInstrumentFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p1, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->m:Lid8;

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    iput p1, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->n:I

    .line 51
    .line 52
    const-string p1, ""

    .line 53
    .line 54
    iput-object p1, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->o:Ljava/lang/String;

    .line 55
    .line 56
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/settings/BaseAddInstrumentFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->Z(Lteam/opay/pay/settings/BaseAddInstrumentFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/settings/BaseAddInstrumentFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->U(Lteam/opay/pay/settings/BaseAddInstrumentFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/settings/BaseAddInstrumentFragment;Lkotlin/jvm/functions/Function0;Lteam/opay/core/api/graphql/OrderFeeRequest;Lteam/opay/pay/settings/AddInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->V(Lteam/opay/pay/settings/BaseAddInstrumentFragment;Lkotlin/jvm/functions/Function0;Lteam/opay/core/api/graphql/OrderFeeRequest;Lteam/opay/pay/settings/AddInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/settings/BaseAddInstrumentFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->T(Lteam/opay/pay/settings/BaseAddInstrumentFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final T(Lteam/opay/pay/settings/BaseAddInstrumentFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->i0(Z)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final U(Lteam/opay/pay/settings/BaseAddInstrumentFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->b0()Lteam/opay/pay/settings/NewCardViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Lteam/opay/pay/settings/NewCardViewModel;->B0(Landroidx/fragment/app/FragmentActivity;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/settings/BaseAddInstrumentFragment;Lkotlin/jvm/functions/Function0;Lteam/opay/core/api/graphql/OrderFeeRequest;Lteam/opay/pay/settings/AddInfo;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->b0()Lteam/opay/pay/settings/NewCardViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/settings/NewCardViewModel;->f0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->u:Lteam/opay/pay/account/verify/VerifyEvent;

    .line 18
    .line 19
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/OrderFeeRequest;->b()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lteam/opay/core/api/graphql/OrderFeePaymentInstrumentInput;

    .line 29
    .line 30
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/OrderFeePaymentInstrumentInput;->a()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "BankAccount"

    .line 35
    .line 36
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    iput-object p1, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->t:Lkotlin/jvm/functions/Function0;

    .line 43
    .line 44
    const-string p1, "topup_with_new_back_account"

    .line 45
    .line 46
    :goto_0
    move-object v5, p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iput-object p1, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->s:Lkotlin/jvm/functions/Function0;

    .line 49
    .line 50
    const-string p1, "topup_with_new_back_card"

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :goto_1
    sget-object v1, Lteam/opay/pay/account/verify/VerifyActivity;->l:Lteam/opay/pay/account/verify/VerifyActivity$Companion;

    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    sget-object v3, Lteam/opay/pay/account/verify/ModifyType;->TOPUP_WITH_NEW_BANK_CARD:Lteam/opay/pay/account/verify/ModifyType;

    .line 60
    .line 61
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getGenerator()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    invoke-interface {p0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->phone()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :cond_2
    const-string p0, ""

    .line 72
    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    move-object v4, p0

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move-object v4, v0

    .line 78
    :goto_2
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 79
    .line 80
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/OrderFeeRequest;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-nez p1, :cond_4

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_4
    move-object p0, p1

    .line 95
    :goto_3
    const-string p1, "paymentAmount"

    .line 96
    .line 97
    invoke-interface {v6, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3}, Lteam/opay/pay/settings/AddInfo;->b()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    const-string p1, "bankCardNo"

    .line 105
    .line 106
    invoke-interface {v6, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    const-string p0, "expireDateYear"

    .line 110
    .line 111
    invoke-virtual {p3}, Lteam/opay/pay/settings/AddInfo;->i()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {v6, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    const-string p0, "expireDateMonth"

    .line 119
    .line 120
    invoke-virtual {p3}, Lteam/opay/pay/settings/AddInfo;->h()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-interface {v6, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    const-string p0, "cvv"

    .line 128
    .line 129
    invoke-virtual {p3}, Lteam/opay/pay/settings/AddInfo;->g()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-interface {v6, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    const-string p0, "bankCardPin"

    .line 137
    .line 138
    invoke-virtual {p3}, Lteam/opay/pay/settings/AddInfo;->c()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-interface {v6, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    const-string p0, "bankAccountNo"

    .line 146
    .line 147
    invoke-virtual {p3}, Lteam/opay/pay/settings/AddInfo;->a()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-interface {v6, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    const-string p0, "bankName"

    .line 155
    .line 156
    invoke-virtual {p3}, Lteam/opay/pay/settings/AddInfo;->e()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-interface {v6, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    const-string p0, "bankCode"

    .line 164
    .line 165
    invoke-virtual {p3}, Lteam/opay/pay/settings/AddInfo;->d()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-interface {v6, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    const-string p0, "bvnNum"

    .line 173
    .line 174
    invoke-virtual {p3}, Lteam/opay/pay/settings/AddInfo;->f()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-interface {v6, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 182
    .line 183
    invoke-virtual/range {v1 .. v6}, Lteam/opay/pay/account/verify/VerifyActivity$Companion;->h(Landroid/app/Activity;Lteam/opay/pay/account/verify/ModifyType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 184
    .line 185
    .line 186
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 187
    .line 188
    return-object p0
.end method

.method public static final Z(Lteam/opay/pay/settings/BaseAddInstrumentFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    sget-object v1, Lteam/opay/pay/settings/BaseAddInstrumentFragment$a;->a:[I

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    aget v0, v1, v0

    .line 20
    .line 21
    :goto_1
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    iput-boolean v1, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->r:Z

    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->b0()Lteam/opay/pay/settings/NewCardViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Lteam/opay/pay/settings/NewCardViewModel;->A0(Lteam/opay/core/api/graphql/UserInfoAggregateRsp;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->c0()V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method public static synthetic e0(Lteam/opay/pay/settings/BaseAddInstrumentFragment;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->d0(Ljava/lang/Boolean;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: onOrderStatusSuccess"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method


# virtual methods
.method public final S(Lteam/opay/core/api/graphql/OrderFeeRequest;Lteam/opay/pay/settings/AddInfo;Lkotlin/jvm/functions/Function0;)V
    .locals 10
    .param p1    # Lteam/opay/core/api/graphql/OrderFeeRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/settings/AddInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/graphql/OrderFeeRequest;",
            "Lteam/opay/pay/settings/AddInfo;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "info"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "next"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 17
    .line 18
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->A()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->b0()Lteam/opay/pay/settings/NewCardViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lteam/opay/pay/settings/NewCardViewModel;->f0()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const-string v0, "UATopupAdd"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move-object v0, v1

    .line 43
    :goto_0
    invoke-virtual {p1, v0}, Lteam/opay/core/api/graphql/OrderFeeRequest;->c(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->b0()Lteam/opay/pay/settings/NewCardViewModel;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p0}, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->b0()Lteam/opay/pay/settings/NewCardViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lteam/opay/pay/settings/NewCardViewModel;->O()Lteam/opay/pay/settings/BindCardData;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Lteam/opay/pay/settings/BindCardData;->getPageSource()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :cond_2
    if-nez v1, :cond_3

    .line 65
    .line 66
    const-string v0, ""

    .line 67
    .line 68
    move-object v6, v0

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move-object v6, v1

    .line 71
    :goto_1
    new-instance v7, Lpn0;

    .line 72
    .line 73
    invoke-direct {v7, p0}, Lpn0;-><init>(Lteam/opay/pay/settings/BaseAddInstrumentFragment;)V

    .line 74
    .line 75
    .line 76
    new-instance v8, Lqn0;

    .line 77
    .line 78
    invoke-direct {v8, p0}, Lqn0;-><init>(Lteam/opay/pay/settings/BaseAddInstrumentFragment;)V

    .line 79
    .line 80
    .line 81
    new-instance v9, Lrn0;

    .line 82
    .line 83
    invoke-direct {v9, p0, p3, p1, p2}, Lrn0;-><init>(Lteam/opay/pay/settings/BaseAddInstrumentFragment;Lkotlin/jvm/functions/Function0;Lteam/opay/core/api/graphql/OrderFeeRequest;Lteam/opay/pay/settings/AddInfo;)V

    .line 84
    .line 85
    .line 86
    const/4 v5, 0x0

    .line 87
    move-object v3, p1

    .line 88
    move-object v4, p0

    .line 89
    invoke-virtual/range {v2 .. v9}, Lteam/opay/pay/settings/NewCardViewModel;->j0(Lteam/opay/core/api/graphql/OrderFeeRequest;Landroidx/fragment/app/Fragment;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final W()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->p:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final X()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Y()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->b0()Lteam/opay/pay/settings/NewCardViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/settings/NewCardViewModel;->e0()Lteam/opay/core/api/graphql/UserInfoAggregateRsp;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->b0()Lteam/opay/pay/settings/NewCardViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/settings/NewCardViewModel;->d0()Landroidx/lifecycle/LiveData;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lon0;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lon0;-><init>(Lteam/opay/pay/settings/BaseAddInstrumentFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p0, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->r:Z

    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->c0()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public final a0()Lteam/opay/pay/account/verify/VerifyEvent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->u:Lteam/opay/pay/account/verify/VerifyEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b0()Lteam/opay/pay/settings/NewCardViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/settings/NewCardViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public abstract c0()V
.end method

.method public abstract d0(Ljava/lang/Boolean;)V
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final f0(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V
    .locals 0
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->p:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-void
.end method

.method public final g0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->q:Z

    .line 2
    .line 3
    return-void
.end method

.method public final h0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->o:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public abstract i0(Z)V
.end method

.method public final onEvent(Lteam/opay/pay/account/verify/VerifyEvent;)V
    .locals 3
    .param p1    # Lteam/opay/pay/account/verify/VerifyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lb8e;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "event = "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getRequestCode()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "topup_with_new_back_card"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getRequestCode()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v2, "topup_with_new_back_account"

    .line 36
    .line 37
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getModifyType()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v2, Lteam/opay/pay/account/verify/ModifyType;->TOPUP_WITH_NEW_BANK_CARD:Lteam/opay/pay/account/verify/ModifyType;

    .line 48
    .line 49
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    iput-object p1, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->u:Lteam/opay/pay/account/verify/VerifyEvent;

    .line 60
    .line 61
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getRequestCode()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    const/4 v0, 0x0

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    iget-object p1, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->s:Lkotlin/jvm/functions/Function0;

    .line 73
    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :cond_1
    iput-object v0, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->s:Lkotlin/jvm/functions/Function0;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    iget-object p1, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->t:Lkotlin/jvm/functions/Function0;

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    :cond_3
    iput-object v0, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->t:Lkotlin/jvm/functions/Function0;

    .line 90
    .line 91
    :cond_4
    :goto_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->b0()Lteam/opay/pay/settings/NewCardViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lteam/opay/pay/settings/NewCardViewModel;->e0()Lteam/opay/core/api/graphql/UserInfoAggregateRsp;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-boolean p1, p0, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->r:Z

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/settings/BaseAddInstrumentFragment;->Y()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method
