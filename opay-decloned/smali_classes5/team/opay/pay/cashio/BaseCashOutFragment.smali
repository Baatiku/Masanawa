.class public abstract Lteam/opay/pay/cashio/BaseCashOutFragment;
.super Lteam/opay/core/base/BaseInjectFragmentV2;
.source "BaseCashOutFragment.kt"


# annotations
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
        "\u0000\u00c4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003B)\u0012 \u0010\u0008\u001a\u001c\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ#\u0010\u000e\u001a\u00020\u000c2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J#\u0010\u0016\u001a\u00020\u000c2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u000fJ\u001f\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ!\u0010\u001f\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001b\u0010\"\u001a\u00020\u000c2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u0011\u0010%\u001a\u0004\u0018\u00010$H&\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010\'\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u0012H&\u00a2\u0006\u0004\u0008\'\u0010#J\u000f\u0010(\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008*\u0010\u0011J\u0017\u0010-\u001a\u00020\u00072\u0006\u0010,\u001a\u00020+H\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008/\u0010\u0011J\u0019\u00102\u001a\u00020\u000c2\u0008\u00101\u001a\u0004\u0018\u000100H&\u00a2\u0006\u0004\u00082\u00103J\u001b\u00105\u001a\u00020\u00072\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u00085\u00106J\u000f\u00107\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00087\u0010)J\u001b\u00108\u001a\u00020\u000c2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u00088\u0010#J\u0011\u00109\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u00089\u0010\u0014J)\u0010>\u001a\u00020\u000c2\u0006\u0010:\u001a\u00020+2\u0006\u0010;\u001a\u00020+2\u0008\u0010=\u001a\u0004\u0018\u00010<H\u0016\u00a2\u0006\u0004\u0008>\u0010?J\u000f\u0010@\u001a\u00020\u000cH&\u00a2\u0006\u0004\u0008@\u0010\u0011J\u000f\u0010B\u001a\u00020AH&\u00a2\u0006\u0004\u0008B\u0010CJ\u000f\u0010E\u001a\u00020DH&\u00a2\u0006\u0004\u0008E\u0010FJ\u000f\u0010G\u001a\u00020\u001bH&\u00a2\u0006\u0004\u0008G\u0010HJ\u000f\u0010J\u001a\u00020IH&\u00a2\u0006\u0004\u0008J\u0010KJ\u000f\u0010L\u001a\u00020\u001bH&\u00a2\u0006\u0004\u0008L\u0010HJ\u000f\u0010M\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008M\u0010)J\u0017\u0010O\u001a\u00020\u000c2\u0006\u0010N\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008O\u0010PJ\u000f\u0010Q\u001a\u00020\u0012H&\u00a2\u0006\u0004\u0008Q\u0010\u0014J\u000f\u0010R\u001a\u00020\u0012H&\u00a2\u0006\u0004\u0008R\u0010\u0014J\u000f\u0010S\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008S\u0010)J\u000f\u0010T\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008T\u0010)R.\u0010\u0008\u001a\u001c\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u001b\u0010\\\u001a\u00020W8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008X\u0010Y\u001a\u0004\u0008Z\u0010[R\u001b\u0010a\u001a\u00020]8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008^\u0010Y\u001a\u0004\u0008_\u0010`R\u001b\u0010f\u001a\u00020b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008c\u0010Y\u001a\u0004\u0008d\u0010eR\u001b\u0010k\u001a\u00020g8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008h\u0010Y\u001a\u0004\u0008i\u0010jR\u001b\u0010p\u001a\u00020l8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008m\u0010Y\u001a\u0004\u0008n\u0010oR\u001b\u0010u\u001a\u00020q8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008r\u0010Y\u001a\u0004\u0008s\u0010tR\u001b\u0010z\u001a\u00020v8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008w\u0010Y\u001a\u0004\u0008x\u0010yR\u0016\u0010}\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008{\u0010|R\u0016\u0010\u0081\u0001\u001a\u00020~8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u007f\u0010\u0080\u0001R\u0016\u0010\u0083\u0001\u001a\u00020A8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0082\u0001\u0010CR\u0016\u0010\u0085\u0001\u001a\u00020D8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0084\u0001\u0010FR\u0016\u0010\u0087\u0001\u001a\u00020\u001b8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0086\u0001\u0010HR\u0016\u0010\u0089\u0001\u001a\u00020I8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0088\u0001\u0010KR\u0016\u0010\u008b\u0001\u001a\u00020\u001b8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u008a\u0001\u0010H\u00a8\u0006\u008c\u0001"
    }
    d2 = {
        "Lteam/opay/pay/cashio/BaseCashOutFragment;",
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
        "Lkotlin/Function1;",
        "",
        "callback",
        "U0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "J0",
        "()V",
        "",
        "m0",
        "()Ljava/lang/String;",
        "Lteam/opay/pay/cashier/TransferPreOrder;",
        "u0",
        "account",
        "status",
        "c1",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "amountValue",
        "R0",
        "(Ljava/lang/String;)V",
        "Lteam/opay/core/api/graphql/StampDutyInfo;",
        "B0",
        "()Lteam/opay/core/api/graphql/StampDutyInfo;",
        "Q0",
        "L0",
        "()Z",
        "H0",
        "",
        "actionId",
        "O0",
        "(I)Z",
        "j0",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "remainingTransferAmount",
        "b0",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V",
        "amount",
        "c0",
        "(Ljava/lang/String;)Z",
        "N0",
        "V0",
        "C0",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "P0",
        "Lteam/opay/pay/android/views/KeyboardEditText;",
        "o0",
        "()Lteam/opay/pay/android/views/KeyboardEditText;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "x0",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "s0",
        "()Landroid/view/View;",
        "Landroid/widget/TextView;",
        "D0",
        "()Landroid/widget/TextView;",
        "A0",
        "p0",
        "show",
        "showProgress",
        "(Z)V",
        "z0",
        "y0",
        "M0",
        "h0",
        "k",
        "Lhm6;",
        "Lteam/opay/pay/cashio/CashViewModel;",
        "l",
        "Lid8;",
        "g0",
        "()Lteam/opay/pay/cashio/CashViewModel;",
        "cashViewModel",
        "Lteam/opay/pay/home/MainViewModel;",
        "m",
        "getMainViewModel",
        "()Lteam/opay/pay/home/MainViewModel;",
        "mainViewModel",
        "Lteam/opay/pay/opay/PaymentViewModel;",
        "n",
        "t0",
        "()Lteam/opay/pay/opay/PaymentViewModel;",
        "paymentViewModel",
        "Lteam/opay/pay/home/tabs/MobileTransferViewModel;",
        "o",
        "G0",
        "()Lteam/opay/pay/home/tabs/MobileTransferViewModel;",
        "viewModel",
        "Lteam/opay/pay/transfer/contact/TransferContactViewModel;",
        "p",
        "F0",
        "()Lteam/opay/pay/transfer/contact/TransferContactViewModel;",
        "transferContactViewModel",
        "Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;",
        "q",
        "w0",
        "()Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;",
        "quickAmountAdapter",
        "Lteam/opay/pay/settings/MarketingContentViewModel;",
        "r",
        "q0",
        "()Lteam/opay/pay/settings/MarketingContentViewModel;",
        "marketingContentViewModel",
        "s",
        "Ljava/lang/String;",
        "instrumentType",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "i0",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "n0",
        "inputText",
        "e0",
        "amountList",
        "r0",
        "marketingTipsContainer",
        "E0",
        "tipsTextView",
        "f0",
        "btnSendMonety",
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

.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhm6;)V
    .locals 5
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
    iput-object p1, p0, Lteam/opay/pay/cashio/BaseCashOutFragment;->k:Lhm6;

    .line 10
    .line 11
    const-class p1, Lteam/opay/pay/cashio/CashViewModel;

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$2;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v1, v2, p0}, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$3;

    .line 29
    .line 30
    invoke-direct {v3, p0}, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p1, v0, v1, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lteam/opay/pay/cashio/BaseCashOutFragment;->l:Lid8;

    .line 38
    .line 39
    const-class p1, Lteam/opay/pay/home/MainViewModel;

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$4;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$5;

    .line 51
    .line 52
    invoke-direct {v1, v2, p0}, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$5;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 53
    .line 54
    .line 55
    new-instance v3, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$6;

    .line 56
    .line 57
    invoke-direct {v3, p0}, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$6;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p0, p1, v0, v1, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lteam/opay/pay/cashio/BaseCashOutFragment;->m:Lid8;

    .line 65
    .line 66
    const-class p1, Lteam/opay/pay/opay/PaymentViewModel;

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v0, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$7;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$7;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 75
    .line 76
    .line 77
    new-instance v1, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$8;

    .line 78
    .line 79
    invoke-direct {v1, v2, p0}, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$8;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 80
    .line 81
    .line 82
    new-instance v3, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$9;

    .line 83
    .line 84
    invoke-direct {v3, p0}, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$9;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p0, p1, v0, v1, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iput-object p1, p0, Lteam/opay/pay/cashio/BaseCashOutFragment;->n:Lid8;

    .line 92
    .line 93
    const-class p1, Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 94
    .line 95
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance v0, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$10;

    .line 100
    .line 101
    invoke-direct {v0, p0}, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$10;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 102
    .line 103
    .line 104
    new-instance v1, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$11;

    .line 105
    .line 106
    invoke-direct {v1, v2, p0}, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$11;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 107
    .line 108
    .line 109
    new-instance v3, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$12;

    .line 110
    .line 111
    invoke-direct {v3, p0}, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$12;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 112
    .line 113
    .line 114
    invoke-static {p0, p1, v0, v1, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iput-object p1, p0, Lteam/opay/pay/cashio/BaseCashOutFragment;->o:Lid8;

    .line 119
    .line 120
    new-instance p1, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$viewModels$default$1;

    .line 121
    .line 122
    invoke-direct {p1, p0}, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 123
    .line 124
    .line 125
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 126
    .line 127
    new-instance v1, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$viewModels$default$2;

    .line 128
    .line 129
    invoke-direct {v1, p1}, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v0, v1}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const-class v0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 137
    .line 138
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    new-instance v1, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$viewModels$default$3;

    .line 143
    .line 144
    invoke-direct {v1, p1}, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 145
    .line 146
    .line 147
    new-instance v3, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$viewModels$default$4;

    .line 148
    .line 149
    invoke-direct {v3, v2, p1}, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 150
    .line 151
    .line 152
    new-instance v4, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$viewModels$default$5;

    .line 153
    .line 154
    invoke-direct {v4, p0, p1}, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 155
    .line 156
    .line 157
    invoke-static {p0, v0, v1, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iput-object p1, p0, Lteam/opay/pay/cashio/BaseCashOutFragment;->p:Lid8;

    .line 162
    .line 163
    new-instance p1, Lio0;

    .line 164
    .line 165
    invoke-direct {p1}, Lio0;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    iput-object p1, p0, Lteam/opay/pay/cashio/BaseCashOutFragment;->q:Lid8;

    .line 173
    .line 174
    const-class p1, Lteam/opay/pay/settings/MarketingContentViewModel;

    .line 175
    .line 176
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    new-instance v0, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$13;

    .line 181
    .line 182
    invoke-direct {v0, p0}, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$13;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 183
    .line 184
    .line 185
    new-instance v1, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$14;

    .line 186
    .line 187
    invoke-direct {v1, v2, p0}, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$14;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 188
    .line 189
    .line 190
    new-instance v2, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$15;

    .line 191
    .line 192
    invoke-direct {v2, p0}, Lteam/opay/pay/cashio/BaseCashOutFragment$special$$inlined$activityViewModels$default$15;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 193
    .line 194
    .line 195
    invoke-static {p0, p1, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iput-object p1, p0, Lteam/opay/pay/cashio/BaseCashOutFragment;->r:Lid8;

    .line 200
    .line 201
    const-string p1, "unknown"

    .line 202
    .line 203
    iput-object p1, p0, Lteam/opay/pay/cashio/BaseCashOutFragment;->s:Ljava/lang/String;

    .line 204
    .line 205
    return-void
.end method

.method private final F0()Lteam/opay/pay/transfer/contact/TransferContactViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashio/BaseCashOutFragment;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final G0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashio/BaseCashOutFragment;->o:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final I0(Lteam/opay/pay/android/views/KeyboardEditText;Lteam/opay/pay/cashio/BaseCashOutFragment;I)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lli2;->f(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lteam/opay/pay/cashio/BaseCashOutFragment;->O0(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private final J0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->g0()Lteam/opay/pay/cashio/CashViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceId;->CASH_OUT:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "getViewLifecycleOwner(...)"

    .line 12
    .line 13
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Loo0;

    .line 17
    .line 18
    invoke-direct {v3, p0}, Loo0;-><init>(Lteam/opay/pay/cashio/BaseCashOutFragment;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lteam/opay/pay/cashio/CashViewModel;->M(Lteam/opay/core/api/GraphQL$ServiceId;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 25
    .line 26
    new-instance v1, Lteam/opay/pay/cashio/BaseCashOutFragment$a;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lteam/opay/pay/cashio/BaseCashOutFragment$a;-><init>(Lteam/opay/pay/cashio/BaseCashOutFragment;)V

    .line 29
    .line 30
    .line 31
    const-string v2, "change_amount_from_tips_dialog"

    .line 32
    .line 33
    invoke-virtual {v0, p0, v2, v1}, Lteam/opay/pay/util/FlowBus;->b(Lag8;Ljava/lang/Object;La66;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static final K0(Lteam/opay/pay/cashio/BaseCashOutFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->j0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic O(Lteam/opay/pay/cashio/BaseCashOutFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashio/BaseCashOutFragment;->K0(Lteam/opay/pay/cashio/BaseCashOutFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/cashio/BaseCashOutFragment;Lteam/opay/pay/settings/MarketingContentDataRsp;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashio/BaseCashOutFragment;->l0(Lteam/opay/pay/cashio/BaseCashOutFragment;Lteam/opay/pay/settings/MarketingContentDataRsp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Q(Lteam/opay/pay/cashio/BaseCashOutFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashio/BaseCashOutFragment;->Z0(Lteam/opay/pay/cashio/BaseCashOutFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/cashio/BaseCashOutFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashio/BaseCashOutFragment;->a1(Lteam/opay/pay/cashio/BaseCashOutFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/pay/android/views/KeyboardEditText;Lteam/opay/pay/cashio/BaseCashOutFragment;I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/cashio/BaseCashOutFragment;->I0(Lteam/opay/pay/android/views/KeyboardEditText;Lteam/opay/pay/cashio/BaseCashOutFragment;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic S0(Lteam/opay/pay/cashio/BaseCashOutFragment;Ljava/lang/String;ILjava/lang/Object;)V
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
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashio/BaseCashOutFragment;->R0(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: onSendMoney"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static synthetic T(Lteam/opay/pay/cashio/BaseCashOutFragment;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashio/BaseCashOutFragment;->X0(Lteam/opay/pay/cashio/BaseCashOutFragment;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final T0(Lteam/opay/pay/cashio/BaseCashOutFragment;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0, p1, v0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->W0(Lteam/opay/pay/cashio/BaseCashOutFragment;Ljava/lang/String;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->n0()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lli2;->h(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->n0()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 21
    .line 22
    .line 23
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method public static synthetic U(Lteam/opay/pay/cashio/BaseCashOutFragment;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/cashio/BaseCashOutFragment;->v0(Lteam/opay/pay/cashio/BaseCashOutFragment;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final U0(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->B0()Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->m0()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/core/api/graphql/StampDutyInfo;->shouldShowConfirm(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    sget-object v0, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->q:Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog$Companion;

    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->B0()Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/StampDutyInfo;->getStampDutyAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 38
    :goto_0
    if-nez v1, :cond_1

    .line 39
    .line 40
    const-string v1, ""

    .line 41
    .line 42
    :cond_1
    sget-object v2, Lteam/opay/core/api/GraphQL$ServiceType;->CASH_OUT:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 43
    .line 44
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, p1}, Lteam/opay/pay/home/tabs/ac/StampDutyConfirmDialog;->c0(Lkotlin/jvm/functions/Function1;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :goto_1
    return-void
.end method

.method public static synthetic V(Lteam/opay/pay/cashio/BaseCashOutFragment;Lteam/opay/pay/cashier/TransferPreOrder;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/cashio/BaseCashOutFragment;->Y0(Lteam/opay/pay/cashio/BaseCashOutFragment;Lteam/opay/pay/cashier/TransferPreOrder;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic W()Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/cashio/BaseCashOutFragment;->d1()Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic W0(Lteam/opay/pay/cashio/BaseCashOutFragment;Ljava/lang/String;ILjava/lang/Object;)V
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
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashio/BaseCashOutFragment;->V0(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: onTransferToPhone"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static synthetic X(Lteam/opay/pay/cashio/BaseCashOutFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashio/BaseCashOutFragment;->k0(Lteam/opay/pay/cashio/BaseCashOutFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final X0(Lteam/opay/pay/cashio/BaseCashOutFragment;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->t0()Lteam/opay/pay/opay/PaymentViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lko0;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lko0;-><init>(Lteam/opay/pay/cashio/BaseCashOutFragment;Lteam/opay/pay/cashier/TransferPreOrder;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0, p1, v1}, Lteam/opay/pay/opay/PaymentViewModel;->n0(Landroidx/fragment/app/Fragment;Lteam/opay/pay/cashier/TransferPreOrder;Lkotlin/jvm/functions/Function1;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static synthetic Y(Lteam/opay/pay/cashio/BaseCashOutFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->b1(Lteam/opay/pay/cashio/BaseCashOutFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final Y0(Lteam/opay/pay/cashio/BaseCashOutFragment;Lteam/opay/pay/cashier/TransferPreOrder;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;
    .locals 12

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/PaymentTask;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/pay/cashier/PaymentTask;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/cashier/TransferPreOrder;->getServiceType()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    sget-object p0, Lteam/opay/core/api/GraphQL$ServiceId;->CASH_OUT:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$ServiceId;->getValue()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    if-nez p0, :cond_1

    .line 25
    .line 26
    const-string p0, ""

    .line 27
    .line 28
    :cond_1
    move-object v3, p0

    .line 29
    new-instance p0, Lteam/opay/swarmfoundation/payment/PayInput;

    .line 30
    .line 31
    const/16 v10, 0xf8

    .line 32
    .line 33
    const/4 v11, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    move-object v1, p0

    .line 40
    invoke-direct/range {v1 .. v11}, Lteam/opay/swarmfoundation/payment/PayInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lteam/opay/pay/cashier/TransferPreOrder;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/16 v5, 0xc

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/cashier/PaymentTask;->c(Lteam/opay/pay/cashier/PaymentTask;Lteam/opay/swarmfoundation/payment/PayInput;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0
.end method

.method public static synthetic Z(Lteam/opay/pay/cashio/BaseCashOutFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashio/BaseCashOutFragment;->T0(Lteam/opay/pay/cashio/BaseCashOutFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final Z0(Lteam/opay/pay/cashio/BaseCashOutFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "amountValue"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashio/BaseCashOutFragment;->Q0(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, La32;->a:La32;

    .line 10
    .line 11
    const-string v0, "amount"

    .line 12
    .line 13
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x1

    .line 18
    new-array v0, v0, [Lkotlin/Pair;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    aput-object p1, v0, v1

    .line 22
    .line 23
    const-string p1, "withdraw_select_amount_click"

    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, La32;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method public static final synthetic a0(Lteam/opay/pay/cashio/BaseCashOutFragment;)Lteam/opay/pay/android/views/KeyboardEditText;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->n0()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final a1(Lteam/opay/pay/cashio/BaseCashOutFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashio/BaseCashOutFragment;->showProgress(Z)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final b1(Lteam/opay/pay/cashio/BaseCashOutFragment;)Lkotlin/Unit;
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
    const-string v2, "withdraw_confirm_pop_confirm_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {p0, v0, v1, v0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->S0(Lteam/opay/pay/cashio/BaseCashOutFragment;Ljava/lang/String;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method private final c1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    new-instance v1, Lkotlin/Pair;

    .line 4
    .line 5
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->G0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->N()Lteam/opay/pay/home/tabs/MobileTransferInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lteam/opay/pay/home/tabs/MobileTransferInfo;->c()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "recipient"

    .line 18
    .line 19
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lkotlin/Pair;

    .line 23
    .line 24
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->G0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->N()Lteam/opay/pay/home/tabs/MobileTransferInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Lteam/opay/pay/home/tabs/MobileTransferInfo;->a()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v4, "amount"

    .line 37
    .line 38
    invoke-direct {v2, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance v3, Lkotlin/Pair;

    .line 42
    .line 43
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->G0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->N()Lteam/opay/pay/home/tabs/MobileTransferInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/MobileTransferInfo;->b()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const-string v5, "message"

    .line 56
    .line 57
    invoke-direct {v3, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    new-instance v4, Lkotlin/Pair;

    .line 61
    .line 62
    const-string v5, "pay_using"

    .line 63
    .line 64
    invoke-direct {v4, v5, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    new-instance p1, Lkotlin/Pair;

    .line 68
    .line 69
    const-string v5, "status"

    .line 70
    .line 71
    invoke-direct {p1, v5, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    const/4 p2, 0x5

    .line 75
    new-array p2, p2, [Lkotlin/Pair;

    .line 76
    .line 77
    const/4 v5, 0x0

    .line 78
    aput-object v1, p2, v5

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    aput-object v2, p2, v1

    .line 82
    .line 83
    const/4 v1, 0x2

    .line 84
    aput-object v3, p2, v1

    .line 85
    .line 86
    const/4 v1, 0x3

    .line 87
    aput-object v4, p2, v1

    .line 88
    .line 89
    const/4 v1, 0x4

    .line 90
    aput-object p1, p2, v1

    .line 91
    .line 92
    const-string p1, "transfer_person_result_show"

    .line 93
    .line 94
    invoke-virtual {v0, p1, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public static synthetic d0(Lteam/opay/pay/cashio/BaseCashOutFragment;Ljava/lang/String;ILjava/lang/Object;)Z
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
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashio/BaseCashOutFragment;->c0(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: checkButtonStatus"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static final d1()Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final getMainViewModel()Lteam/opay/pay/home/MainViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashio/BaseCashOutFragment;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/MainViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final i0()Lteam/opay/core/api/GraphQL$Currency;
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->G0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static final k0(Lteam/opay/pay/cashio/BaseCashOutFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
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
    sget-object v2, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 11
    .line 12
    if-ne v1, v2, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lteam/opay/pay/api/CashPageInfo;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Lteam/opay/pay/api/CashPageInfo;->d()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->P0()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->w0()Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lteam/opay/pay/api/CashPageInfo;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Lteam/opay/pay/api/CashPageInfo;->e()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_2
    invoke-virtual {p0, v0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->b0(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p0
.end method

.method public static final l0(Lteam/opay/pay/cashio/BaseCashOutFragment;Lteam/opay/pay/settings/MarketingContentDataRsp;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->r0()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->E0()Landroid/widget/TextView;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p1}, Lteam/opay/pay/settings/MarketingContentDataRsp;->a()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final m0()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->w0()Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;->r()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->w0()Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;->q()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    :cond_0
    :goto_0
    move-object v1, v0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->n0()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_0

    .line 42
    :goto_1
    const/4 v5, 0x4

    .line 43
    const/4 v6, 0x0

    .line 44
    const-string v2, ","

    .line 45
    .line 46
    const-string v3, ""

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method private final n0()Lteam/opay/pay/android/views/KeyboardEditText;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->o0()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final q0()Lteam/opay/pay/settings/MarketingContentViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashio/BaseCashOutFragment;->r:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/settings/MarketingContentViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final t0()Lteam/opay/pay/opay/PaymentViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashio/BaseCashOutFragment;->n:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/opay/PaymentViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final u0(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/cashier/TransferPreOrder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->F0()Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljo0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Ljo0;-><init>(Lteam/opay/pay/cashio/BaseCashOutFragment;Lkotlin/jvm/functions/Function1;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {v0, p1, p0, v1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->q0(ZLag8;Lkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final v0(Lteam/opay/pay/cashio/BaseCashOutFragment;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)Lkotlin/Unit;
    .locals 20

    .line 1
    new-instance v14, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->g0()Lteam/opay/pay/cashio/CashViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lteam/opay/pay/cashio/CashViewModel;->F()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, ""

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    move-object v0, v1

    .line 19
    :cond_0
    const-string v2, "businessSceneSource"

    .line 20
    .line 21
    invoke-interface {v14, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->C0()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const-string v2, "usernameDisplayTime"

    .line 31
    .line 32
    invoke-interface {v14, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    if-eqz p2, :cond_6

    .line 37
    .line 38
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->b()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_6

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_5

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    move-object v4, v3

    .line 59
    check-cast v4, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 60
    .line 61
    invoke-virtual {v4}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-lez v5, :cond_3

    .line 70
    .line 71
    invoke-virtual {v4}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {v4}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountNo()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    if-nez v4, :cond_4

    .line 81
    .line 82
    move-object v4, v1

    .line 83
    :cond_4
    :goto_0
    invoke-static {v4}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->G0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v5}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->N()Lteam/opay/pay/home/tabs/MobileTransferInfo;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v5}, Lteam/opay/pay/home/tabs/MobileTransferInfo;->c()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-static {v5}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_2

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    move-object v3, v0

    .line 111
    :goto_1
    check-cast v3, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_6
    move-object v3, v0

    .line 115
    :goto_2
    const-string v2, "N"

    .line 116
    .line 117
    const-string v4, "Y"

    .line 118
    .line 119
    if-eqz v3, :cond_7

    .line 120
    .line 121
    move-object v3, v4

    .line 122
    goto :goto_3

    .line 123
    :cond_7
    move-object v3, v2

    .line 124
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->h0()Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-nez v5, :cond_8

    .line 129
    .line 130
    const-string v5, "businessPreInteraction"

    .line 131
    .line 132
    const-string v6, "first"

    .line 133
    .line 134
    invoke-interface {v14, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    :cond_8
    if-eqz p2, :cond_b

    .line 138
    .line 139
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->c()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    if-eqz v5, :cond_b

    .line 144
    .line 145
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    if-eqz v6, :cond_a

    .line 154
    .line 155
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    move-object v7, v6

    .line 160
    check-cast v7, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 161
    .line 162
    invoke-virtual {v7}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-static {v7}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->G0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    invoke-virtual {v8}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->N()Lteam/opay/pay/home/tabs/MobileTransferInfo;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-virtual {v8}, Lteam/opay/pay/home/tabs/MobileTransferInfo;->c()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    invoke-static {v8}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    if-eqz v7, :cond_9

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_a
    move-object v6, v0

    .line 194
    :goto_4
    check-cast v6, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_b
    move-object v6, v0

    .line 198
    :goto_5
    if-eqz v6, :cond_c

    .line 199
    .line 200
    move-object v2, v4

    .line 201
    :cond_c
    const-string v4, "ifRecentContact"

    .line 202
    .line 203
    invoke-interface {v14, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    const-string v3, "ifFavoriteContact"

    .line 207
    .line 208
    invoke-interface {v14, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    new-instance v2, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 212
    .line 213
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->G0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-virtual {v3}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->N()Lteam/opay/pay/home/tabs/MobileTransferInfo;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v3}, Lteam/opay/pay/home/tabs/MobileTransferInfo;->a()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->i0()Lteam/opay/core/api/GraphQL$Currency;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$Currency;->a()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-direct {v2, v3, v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    sget-object v3, Lteam/opay/core/api/GraphQL$ServiceType;->CASH_OUT:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 237
    .line 238
    invoke-virtual {v3}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->G0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-virtual {v3}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->N()Lteam/opay/pay/home/tabs/MobileTransferInfo;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-virtual {v3}, Lteam/opay/pay/home/tabs/MobileTransferInfo;->c()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-static {v3}, Lxob;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->y0()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->G0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v3}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->N()Lteam/opay/pay/home/tabs/MobileTransferInfo;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-virtual {v3}, Lteam/opay/pay/home/tabs/MobileTransferInfo;->b()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v9

    .line 274
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->g0()Lteam/opay/pay/cashio/CashViewModel;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v3}, Lteam/opay/pay/cashio/CashViewModel;->F()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    if-nez v3, :cond_d

    .line 283
    .line 284
    move-object/from16 v18, v1

    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_d
    move-object/from16 v18, v3

    .line 288
    .line 289
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->M0()Z

    .line 290
    .line 291
    .line 292
    move-result v12

    .line 293
    new-instance v1, Lteam/opay/pay/cashier/TransferCheckRequest;

    .line 294
    .line 295
    move-object v13, v1

    .line 296
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->h0()Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    invoke-direct {v1, v3, v0, v0, v0}, Lteam/opay/pay/cashier/TransferCheckRequest;-><init>(ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 301
    .line 302
    .line 303
    new-instance v1, Lteam/opay/pay/cashier/TransferPreOrder;

    .line 304
    .line 305
    move-object v0, v1

    .line 306
    const/16 v16, 0x4664

    .line 307
    .line 308
    const/16 v17, 0x0

    .line 309
    .line 310
    const/4 v3, 0x0

    .line 311
    const/4 v6, 0x0

    .line 312
    const/4 v7, 0x0

    .line 313
    const/4 v10, 0x0

    .line 314
    const/4 v11, 0x0

    .line 315
    const/4 v15, 0x0

    .line 316
    move-object/from16 v19, v1

    .line 317
    .line 318
    move-object v1, v4

    .line 319
    move-object v4, v5

    .line 320
    move-object v5, v8

    .line 321
    move-object/from16 v8, v18

    .line 322
    .line 323
    invoke-direct/range {v0 .. v17}, Lteam/opay/pay/cashier/TransferPreOrder;-><init>(Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLteam/opay/pay/cashier/TransferCheckRequest;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 324
    .line 325
    .line 326
    move-object/from16 v0, p1

    .line 327
    .line 328
    move-object/from16 v1, v19

    .line 329
    .line 330
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 334
    .line 335
    return-object v0
.end method

.method private final w0()Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashio/BaseCashOutFragment;->q:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract A0()Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract B0()Lteam/opay/core/api/graphql/StampDutyInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public C0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public abstract D0()Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final E0()Landroid/widget/TextView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->D0()Landroid/widget/TextView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public H0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->n0()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 7
    .line 8
    .line 9
    sget v1, Lteam/opay/pay/R$string;->numbers_only_pattern_whit_dot:I

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x5

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 24
    .line 25
    .line 26
    const v1, 0x800013

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lqo0;

    .line 37
    .line 38
    invoke-direct {v1, v0, p0}, Lqo0;-><init>(Lteam/opay/pay/android/views/KeyboardEditText;Lteam/opay/pay/cashio/BaseCashOutFragment;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lteam/opay/pay/android/views/KeyboardEditText;->d(Lkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public abstract L0()Z
.end method

.method public abstract M0()Z
.end method

.method public N0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public O0(I)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public abstract P0()V
.end method

.method public abstract Q0(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public R0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p1, Lpo0;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lpo0;-><init>(Lteam/opay/pay/cashio/BaseCashOutFragment;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lteam/opay/pay/cashio/BaseCashOutFragment;->U0(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public V0(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x3

    .line 5
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashio/BaseCashOutFragment;->c0(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->m0()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->G0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lteam/opay/pay/payment/ServiceViewModel;->t()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->G0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->N()Lteam/opay/pay/home/tabs/MobileTransferInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->z0()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v4, v5}, Lteam/opay/pay/home/tabs/MobileTransferInfo;->f(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, p1}, Lteam/opay/pay/home/tabs/MobileTransferInfo;->d(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lx7b;->a:Lx7b;

    .line 42
    .line 43
    new-instance v5, Lkotlin/Pair;

    .line 44
    .line 45
    const-string v6, "recipient"

    .line 46
    .line 47
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->z0()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-direct {v5, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    new-instance v6, Lkotlin/Pair;

    .line 55
    .line 56
    const-string v7, "message"

    .line 57
    .line 58
    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/MobileTransferInfo;->b()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-direct {v6, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance v7, Lkotlin/Pair;

    .line 66
    .line 67
    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/MobileTransferInfo;->a()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const-string v8, "amount"

    .line 72
    .line 73
    invoke-direct {v7, v8, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    new-array v4, v3, [Lkotlin/Pair;

    .line 77
    .line 78
    aput-object v5, v4, v2

    .line 79
    .line 80
    aput-object v6, v4, v1

    .line 81
    .line 82
    aput-object v7, v4, v0

    .line 83
    .line 84
    const-string v5, "transfer_person_done_click"

    .line 85
    .line 86
    invoke-virtual {p1, v5, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 87
    .line 88
    .line 89
    sget-object p1, La32;->a:La32;

    .line 90
    .line 91
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->w0()Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v4}, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;->r()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_1

    .line 100
    .line 101
    const-string v4, "1"

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    const-string v4, "2"

    .line 105
    .line 106
    :goto_0
    const-string v5, "type"

    .line 107
    .line 108
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->G0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v5}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->N()Lteam/opay/pay/home/tabs/MobileTransferInfo;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v5}, Lteam/opay/pay/home/tabs/MobileTransferInfo;->a()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-static {v8, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->G0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v6}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->N()Lteam/opay/pay/home/tabs/MobileTransferInfo;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-virtual {v6}, Lteam/opay/pay/home/tabs/MobileTransferInfo;->c()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    const-string v7, "phone_number"

    .line 141
    .line 142
    invoke-static {v7, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    new-array v3, v3, [Lkotlin/Pair;

    .line 147
    .line 148
    aput-object v4, v3, v2

    .line 149
    .line 150
    aput-object v5, v3, v1

    .line 151
    .line 152
    aput-object v6, v3, v0

    .line 153
    .line 154
    const-string v0, "withdrw_cash_done_click"

    .line 155
    .line 156
    invoke-virtual {p1, v0, v3}, La32;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 157
    .line 158
    .line 159
    new-instance p1, Lro0;

    .line 160
    .line 161
    invoke-direct {p1, p0}, Lro0;-><init>(Lteam/opay/pay/cashio/BaseCashOutFragment;)V

    .line 162
    .line 163
    .line 164
    invoke-direct {p0, p1}, Lteam/opay/pay/cashio/BaseCashOutFragment;->u0(Lkotlin/jvm/functions/Function1;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public abstract b0(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public c0(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->L0()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->p0()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->N0()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->f0()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 27
    .line 28
    .line 29
    return p1
.end method

.method public final e0()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->x0()Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final f0()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->A0()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public g0()Lteam/opay/pay/cashio/CashViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashio/BaseCashOutFragment;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/cashio/CashViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public abstract h0()Z
.end method

.method public j0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->g0()Lteam/opay/pay/cashio/CashViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->CASH_OUT:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashio/CashViewModel;->D(Lteam/opay/core/api/GraphQL$ServiceType;)Landroidx/lifecycle/LiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lso0;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lso0;-><init>(Lteam/opay/pay/cashio/BaseCashOutFragment;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p0, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->q0()Lteam/opay/pay/settings/MarketingContentViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lteam/opay/pay/settings/MarketingContentViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lto0;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Lto0;-><init>(Lteam/opay/pay/cashio/BaseCashOutFragment;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->q0()Lteam/opay/pay/settings/MarketingContentViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "2"

    .line 44
    .line 45
    invoke-virtual {v0, v1, p0}, Lteam/opay/pay/settings/MarketingContentViewModel;->t(Ljava/lang/String;Lag8;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public abstract o0()Lteam/opay/pay/android/views/KeyboardEditText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 p3, 0x12d

    .line 5
    .line 6
    if-ne p1, p3, :cond_5

    .line 7
    .line 8
    const/16 p1, 0xca

    .line 9
    .line 10
    if-eq p2, p1, :cond_3

    .line 11
    .line 12
    const/16 p1, 0xcb

    .line 13
    .line 14
    if-eq p2, p1, :cond_1

    .line 15
    .line 16
    const/16 p1, 0xcd

    .line 17
    .line 18
    if-eq p2, p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/cashio/BaseCashOutFragment;->s:Ljava/lang/String;

    .line 22
    .line 23
    const-string p2, "0"

    .line 24
    .line 25
    invoke-direct {p0, p1, p2}, Lteam/opay/pay/cashio/BaseCashOutFragment;->c1(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    sget-object p2, Lteam/opay/pay/home/MainActivity;->Companion:Lteam/opay/pay/home/MainActivity$Companion;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Lteam/opay/pay/home/MainActivity$Companion;->a(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->getMainViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget-object p2, Lteam/opay/pay/home/MainActivity$Tab;->HOME:Lteam/opay/pay/home/MainActivity$Tab;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lteam/opay/pay/home/MainViewModel;->I1(Lteam/opay/pay/home/MainActivity$Tab;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iget-object p1, p0, Lteam/opay/pay/cashio/BaseCashOutFragment;->s:Ljava/lang/String;

    .line 51
    .line 52
    const-string p2, "1"

    .line 53
    .line 54
    invoke-direct {p0, p1, p2}, Lteam/opay/pay/cashio/BaseCashOutFragment;->c1(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    sget-object p2, Lteam/opay/pay/home/MainActivity;->Companion:Lteam/opay/pay/home/MainActivity$Companion;

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Lteam/opay/pay/home/MainActivity$Companion;->a(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->getMainViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget-object p2, Lteam/opay/pay/home/MainActivity$Tab;->HOME:Lteam/opay/pay/home/MainActivity$Tab;

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lteam/opay/pay/home/MainViewModel;->I1(Lteam/opay/pay/home/MainActivity$Tab;)V

    .line 75
    .line 76
    .line 77
    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 78
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashio/BaseCashOutFragment;->showProgress(Z)V

    .line 79
    .line 80
    .line 81
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->e0()Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->e0()Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->w0()Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->w0()Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->n0()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    new-instance v0, Llo0;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Llo0;-><init>(Lteam/opay/pay/cashio/BaseCashOutFragment;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2, v0}, Lteam/opay/pay/transfer/contact/sendmoney/QuickAmountAdapter;->m(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->t0()Lteam/opay/pay/opay/PaymentViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lteam/opay/pay/opay/PaymentViewModel;->M()Landroidx/lifecycle/MutableLiveData;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    new-instance v0, Lmo0;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lmo0;-><init>(Lteam/opay/pay/cashio/BaseCashOutFragment;)V

    .line 68
    .line 69
    .line 70
    new-instance v2, Lteam/opay/pay/cashio/BaseCashOutFragment$b;

    .line 71
    .line 72
    invoke-direct {v2, v0}, Lteam/opay/pay/cashio/BaseCashOutFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->f0()Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-instance p2, Lno0;

    .line 83
    .line 84
    invoke-direct {p2, p0}, Lno0;-><init>(Lteam/opay/pay/cashio/BaseCashOutFragment;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->J0()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->H0()V

    .line 94
    .line 95
    .line 96
    sget-object p1, Lx7b;->a:Lx7b;

    .line 97
    .line 98
    new-instance p2, Lkotlin/Pair;

    .line 99
    .line 100
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->g0()Lteam/opay/pay/cashio/CashViewModel;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lteam/opay/pay/cashio/CashViewModel;->E()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-string v2, "entrance_id"

    .line 121
    .line 122
    invoke-direct {p2, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->g0()Lteam/opay/pay/cashio/CashViewModel;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lteam/opay/pay/cashio/CashViewModel;->H()Ljava/lang/Boolean;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 134
    .line 135
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    const/4 v2, 0x0

    .line 140
    if-eqz v0, :cond_0

    .line 141
    .line 142
    const-string v0, "new_ac_user"

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->g0()Lteam/opay/pay/cashio/CashViewModel;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lteam/opay/pay/cashio/CashViewModel;->H()Ljava/lang/Boolean;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 154
    .line 155
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_1

    .line 160
    .line 161
    const-string v0, "old_ac_user"

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_1
    move-object v0, v2

    .line 165
    :goto_0
    const-string v3, "user_type"

    .line 166
    .line 167
    invoke-static {v3, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->g0()Lteam/opay/pay/cashio/CashViewModel;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v3}, Lteam/opay/pay/cashio/CashViewModel;->F()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    const-string v4, "ACSelectOPay"

    .line 180
    .line 181
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_2

    .line 186
    .line 187
    const-string v2, "ac_home_select_opay"

    .line 188
    .line 189
    :cond_2
    const-string v3, "frompage"

    .line 190
    .line 191
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    new-array v1, v1, [Lkotlin/Pair;

    .line 196
    .line 197
    const/4 v3, 0x0

    .line 198
    aput-object p2, v1, v3

    .line 199
    .line 200
    const/4 p2, 0x1

    .line 201
    aput-object v0, v1, p2

    .line 202
    .line 203
    const/4 p2, 0x2

    .line 204
    aput-object v2, v1, p2

    .line 205
    .line 206
    const-string p2, "CASHOUT_withdraw_cash_show"

    .line 207
    .line 208
    invoke-virtual {p1, p2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 209
    .line 210
    .line 211
    return-void
.end method

.method public abstract p0()Z
.end method

.method public final r0()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashio/BaseCashOutFragment;->s0()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public abstract s0()Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract showProgress(Z)V
.end method

.method public abstract x0()Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract y0()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract z0()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
