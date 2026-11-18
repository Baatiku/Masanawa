.class public final Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;
.super Lteam/opay/pay/history/details/Hilt_TransactionDetailForidFragmentV2;
.source "TransactionDetailForidFragmentV2.kt"

# interfaces
.implements Llme;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$Companion;,
        Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$RefreshTransactionDetailsEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/history/details/Hilt_TransactionDetailForidFragmentV2<",
        "Lsse;",
        ">;",
        "Llme;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u0083\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0004\u0084\u0001\u0085\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0005J\u000f\u0010\u000c\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0005J\u000f\u0010\r\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0005J\u0017\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0005J\u0017\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0005J\u0017\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008!\u0010\u0016J\u001f\u0010#\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010\'\u001a\u00020\n2\u0006\u0010&\u001a\u00020%H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u0017\u0010+\u001a\u00020\n2\u0006\u0010*\u001a\u00020)H\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010-\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008-\u0010\u0005J\u001f\u00101\u001a\u00020\n2\u0006\u0010.\u001a\u00020\u00132\u0006\u00100\u001a\u00020/H\u0002\u00a2\u0006\u0004\u00081\u00102J\u001f\u00103\u001a\u00020\n2\u0006\u0010.\u001a\u00020\u00132\u0006\u00100\u001a\u00020/H\u0002\u00a2\u0006\u0004\u00083\u00102J\u0017\u00106\u001a\u00020\n2\u0006\u00105\u001a\u000204H\u0002\u00a2\u0006\u0004\u00086\u00107J\u0017\u0010:\u001a\u00020\n2\u0006\u00109\u001a\u000208H\u0002\u00a2\u0006\u0004\u0008:\u0010;J\u0017\u0010>\u001a\u00020\n2\u0006\u0010=\u001a\u00020<H\u0002\u00a2\u0006\u0004\u0008>\u0010?J\u001f\u0010C\u001a\u00020\n2\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008C\u0010DJ\u000f\u0010E\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008E\u0010\u0005J!\u0010I\u001a\u00020\n2\u0006\u0010*\u001a\u00020F2\u0008\u0010H\u001a\u0004\u0018\u00010GH\u0016\u00a2\u0006\u0004\u0008I\u0010JJ\u000f\u0010K\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008K\u0010\u0005J\u000f\u0010L\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008L\u0010\u0005J\u000f\u0010M\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008M\u0010\u0005J\u000f\u0010N\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008N\u0010\u0005J)\u0010R\u001a\u00020\n2\u0006\u0010O\u001a\u00020\u00062\u0006\u0010P\u001a\u00020\u00062\u0008\u0010=\u001a\u0004\u0018\u00010QH\u0016\u00a2\u0006\u0004\u0008R\u0010SJ\u000f\u0010T\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008T\u0010\u0005J\u0017\u0010V\u001a\u00020\n2\u0006\u0010U\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008V\u0010\u0011J\u0017\u0010X\u001a\u00020\n2\u0006\u00109\u001a\u00020WH\u0007\u00a2\u0006\u0004\u0008X\u0010YR\u0016\u0010\\\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010[R\u001b\u0010c\u001a\u00020^8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008_\u0010`\u001a\u0004\u0008a\u0010bR\u001b\u0010h\u001a\u00020d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008e\u0010`\u001a\u0004\u0008f\u0010gR\u001b\u0010l\u001a\u00020i8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008M\u0010`\u001a\u0004\u0008j\u0010kR\u001b\u0010q\u001a\u00020m8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008n\u0010`\u001a\u0004\u0008o\u0010pR\u0016\u0010t\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010sR\u0016\u0010v\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010sR\u0016\u0010x\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010sR\u001b\u0010}\u001a\u00020y8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008z\u0010`\u001a\u0004\u0008{\u0010|R%\u0010\u0080\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0013\u0018\u00010~8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010\u007fR\u0018\u0010\u0082\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0081\u0001\u0010s\u00a8\u0006\u0086\u0001"
    }
    d2 = {
        "Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Lsse;",
        "Llme;",
        "<init>",
        "()V",
        "",
        "dataSize",
        "G0",
        "(I)I",
        "",
        "initView",
        "addObserver",
        "b1",
        "",
        "inProgress",
        "showProgress",
        "(Z)V",
        "e1",
        "",
        "orderNo",
        "a1",
        "(Ljava/lang/String;)V",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;",
        "transactionDetail",
        "j1",
        "(Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;)V",
        "f1",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$LinkButton;",
        "button",
        "M0",
        "(Lteam/opay/pay/history/UserTransactionsDetailRepository$LinkButton;)V",
        "title",
        "S0",
        "url",
        "Q0",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$DetailAction;",
        "action",
        "R0",
        "(Lteam/opay/pay/history/UserTransactionsDetailRepository$DetailAction;)V",
        "Landroid/widget/TextView;",
        "view",
        "N0",
        "(Landroid/widget/TextView;)V",
        "X0",
        "key",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
        "entry",
        "K0",
        "(Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V",
        "L0",
        "Lteam/opay/pay/account/verify/ModifyType;",
        "modifyType",
        "h1",
        "(Lteam/opay/pay/account/verify/ModifyType;)V",
        "Lteam/opay/pay/account/verify/VerifyEvent;",
        "event",
        "V0",
        "(Lteam/opay/pay/account/verify/VerifyEvent;)V",
        "Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;",
        "data",
        "P0",
        "(Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;)V",
        "Landroid/widget/CompoundButton;",
        "switch",
        "status",
        "T0",
        "(Landroid/widget/CompoundButton;Z)V",
        "D0",
        "Landroid/view/View;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "m",
        "y",
        "s",
        "j",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "b",
        "success",
        "h",
        "Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$RefreshTransactionDetailsEvent;",
        "onEvent",
        "(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$RefreshTransactionDetailsEvent;)V",
        "o",
        "Ljava/lang/String;",
        "verifySource",
        "p",
        "Lteam/opay/pay/cashier/tobepaid/PaidStorage;",
        "q",
        "Lid8;",
        "F0",
        "()Lteam/opay/pay/cashier/tobepaid/PaidStorage;",
        "paidStorage",
        "Lteam/opay/pay/cashier/PaySheetViewModel;",
        "r",
        "J0",
        "()Lteam/opay/pay/cashier/PaySheetViewModel;",
        "viewModel",
        "Lteam/opay/pay/history/TobepayManager;",
        "H0",
        "()Lteam/opay/pay/history/TobepayManager;",
        "tobepayManager",
        "Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;",
        "t",
        "I0",
        "()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;",
        "transactionDetailsViewModel",
        "u",
        "Z",
        "showLoadingTips",
        "v",
        "tipsShow",
        "w",
        "hasReport",
        "Lteam/opay/pay/history/details/DetailsFunAdapter;",
        "x",
        "E0",
        "()Lteam/opay/pay/history/details/DetailsFunAdapter;",
        "buttonAdapter",
        "",
        "Ljava/util/Map;",
        "currentVerifyMap",
        "z",
        "fromLoading",
        "A",
        "Companion",
        "RefreshTransactionDetailsEvent",
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
.field public static final A:Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Ljava/lang/String;
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

.field public final s:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Z

.field public v:Z

.field public w:Z

.field public final x:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->A:Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget-object v0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$1;->INSTANCE:Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/history/details/Hilt_TransactionDetailForidFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->o:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Lzte;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lzte;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->q:Lid8;

    .line 22
    .line 23
    new-instance v0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$special$$inlined$viewModels$default$1;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 29
    .line 30
    new-instance v2, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v2, v0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-class v1, Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 40
    .line 41
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$special$$inlined$viewModels$default$3;

    .line 46
    .line 47
    invoke-direct {v2, v0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 48
    .line 49
    .line 50
    new-instance v3, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$special$$inlined$viewModels$default$4;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-direct {v3, v4, v0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 54
    .line 55
    .line 56
    new-instance v5, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$special$$inlined$viewModels$default$5;

    .line 57
    .line 58
    invoke-direct {v5, p0, v0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p0, v1, v2, v3, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->r:Lid8;

    .line 66
    .line 67
    new-instance v0, Laue;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Laue;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->s:Lid8;

    .line 77
    .line 78
    const-class v0, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 79
    .line 80
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v1, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$special$$inlined$activityViewModels$default$1;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 87
    .line 88
    .line 89
    new-instance v2, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$special$$inlined$activityViewModels$default$2;

    .line 90
    .line 91
    invoke-direct {v2, v4, p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 92
    .line 93
    .line 94
    new-instance v3, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$special$$inlined$activityViewModels$default$3;

    .line 95
    .line 96
    invoke-direct {v3, p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->t:Lid8;

    .line 104
    .line 105
    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->u:Z

    .line 107
    .line 108
    new-instance v0, Lbue;

    .line 109
    .line 110
    invoke-direct {v0, p0}, Lbue;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->x:Lid8;

    .line 118
    .line 119
    return-void
.end method

.method public static final A0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lteam/opay/pay/history/details/DetailsFunAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/history/details/DetailsFunAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/history/details/DetailsFunAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lpte;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lpte;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lqte;

    .line 15
    .line 16
    invoke-direct {v1, p0, v0}, Lqte;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/pay/history/details/DetailsFunAdapter;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setSpanSizeLookup(Lcom/chad/library/adapter/base/BaseQuickAdapter$SpanSizeLookup;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public static final B0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string p2, "null cannot be cast to non-null type team.opay.pay.history.UserTransactionsDetailRepository.LinkButton"

    .line 10
    .line 11
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$LinkButton;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->M0(Lteam/opay/pay/history/UserTransactionsDetailRepository$LinkButton;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static final C0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/pay/history/details/DetailsFunAdapter;Landroidx/recyclerview/widget/GridLayoutManager;I)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->G0(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final D0()V
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "order_no"

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Lkotlin/Pair;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v2, v3

    .line 16
    .line 17
    const-string v1, "transaction_details_customer_icon_click"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    sget-object v1, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;->n:Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity$Companion;

    .line 29
    .line 30
    const-string v2, "transaction"

    .line 31
    .line 32
    invoke-virtual {v1, v0, v2}, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method private final F0()Lteam/opay/pay/cashier/tobepaid/PaidStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->q:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method private final I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->t:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 8
    .line 9
    return-object v0
.end method

.method private final J0()Lteam/opay/pay/cashier/PaySheetViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->r:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic O(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->W0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final O0(Landroid/widget/TextView;Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/pay/cashier/choosecategory/CategoryItem;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "categoryItem"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lteam/opay/pay/cashier/choosecategory/CategoryItem;->c()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, ""

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p2}, Lteam/opay/pay/cashier/choosecategory/CategoryItem;->a()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move-object v1, p1

    .line 31
    :goto_1
    invoke-virtual {p0, v1}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->R(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Landroid/widget/CompoundButton;ZZ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->U0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Landroid/widget/CompoundButton;ZZ)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->t0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->k1(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lteam/opay/pay/history/TobepayManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->i1(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lteam/opay/pay/history/TobepayManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->d1(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic U(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lteam/opay/pay/history/details/DetailsFunAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->A0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lteam/opay/pay/history/details/DetailsFunAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final U0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Landroid/widget/CompoundButton;ZZ)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->a(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    xor-int/lit8 p2, p2, 0x1

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->z:Z

    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static synthetic V(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/pay/history/details/DetailsFunAdapter;Landroidx/recyclerview/widget/GridLayoutManager;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->C0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/pay/history/details/DetailsFunAdapter;Landroidx/recyclerview/widget/GridLayoutManager;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic W(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->u0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final W0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lteam/opay/pay/base/FragmentKt;->m(Landroidx/fragment/app/Fragment;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "requireContext(...)"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "GIFT CARD"

    .line 22
    .line 23
    invoke-static {v0, v1, p1}, Lteam/opay/core/android/ContextKt;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget p1, Lteam/opay/pay/R$string;->clipboard_copy:I

    .line 31
    .line 32
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Lkmf;->J(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method public static synthetic X(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->y0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Y(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lteam/opay/pay/cashier/tobepaid/PaidStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->Y0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final Y0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lteam/opay/pay/cashier/tobepaid/PaidStorage;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static synthetic Z(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->c1(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final Z0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static synthetic a0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->g1(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final a1(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "getViewLifecycleOwner(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->O(Lag8;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final addObserver()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->I()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lcue;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcue;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$b;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->N()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Ldue;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Ldue;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$b;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->H()Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v2, Leue;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Leue;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$b;

    .line 69
    .line 70
    invoke-direct {v3, v2}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->G()Landroidx/lifecycle/MutableLiveData;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    new-instance v2, Lfue;

    .line 89
    .line 90
    invoke-direct {v2, p0}, Lfue;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V

    .line 91
    .line 92
    .line 93
    new-instance v3, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$b;

    .line 94
    .line 95
    invoke-direct {v3, v2}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->K()Landroidx/lifecycle/MutableLiveData;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    new-instance v2, Lmte;

    .line 114
    .line 115
    invoke-direct {v2, p0}, Lmte;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V

    .line 116
    .line 117
    .line 118
    new-instance v3, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$b;

    .line 119
    .line 120
    invoke-direct {v3, v2}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 124
    .line 125
    .line 126
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    new-instance v2, Lnte;

    .line 139
    .line 140
    invoke-direct {v2, p0}, Lnte;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V

    .line 141
    .line 142
    .line 143
    new-instance v3, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$b;

    .line 144
    .line 145
    invoke-direct {v3, v2}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 149
    .line 150
    .line 151
    sget-object v0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 152
    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const-string v2, "getViewLifecycleOwner(...)"

    .line 158
    .line 159
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    new-instance v2, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$a;

    .line 163
    .line 164
    invoke-direct {v2, p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$a;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V

    .line 165
    .line 166
    .line 167
    const-string v3, "verify_pool_result_key"

    .line 168
    .line 169
    invoke-virtual {v0, v1, v3, v2}, Lteam/opay/pay/util/FlowBus;->b(Lag8;Ljava/lang/Object;La66;)V

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method public static synthetic b0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->s0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final b1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lsse;

    .line 6
    .line 7
    iget-object v0, v0, Lsse;->d:Lcom/google/android/material/button/MaterialButton;

    .line 8
    .line 9
    const-string v1, "btToBoPaid"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lyte;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lyte;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic c0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/pay/history/UserTransactionsDetailRepository$VoucherPackageDetailsRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->z0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/pay/history/UserTransactionsDetailRepository$VoucherPackageDetailsRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c1(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lkotlin/Unit;
    .locals 12

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->J0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v11, Lteam/opay/pay/cashier/OrderInfo;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    const/16 v9, 0x7c

    .line 12
    .line 13
    const/4 v10, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x0

    .line 19
    move-object v1, v11

    .line 20
    invoke-direct/range {v1 .. v10}, Lteam/opay/pay/cashier/OrderInfo;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lteam/opay/pay/cashier/newpayment/OWealthGuideData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v11}, Lteam/opay/pay/cashier/PaySheetViewModel;->W0(Lteam/opay/pay/cashier/OrderInfo;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->J0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lteam/opay/pay/cashier/SOURCE;->TRANSACTION_DETAIL:Lteam/opay/pay/cashier/SOURCE;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->c1(Lteam/opay/pay/cashier/SOURCE;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->J0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->K0()Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Lote;

    .line 48
    .line 49
    invoke-direct {v2, p0}, Lote;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->H0()Lteam/opay/pay/history/TobepayManager;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lteam/opay/pay/history/TobepayManager;->d()V

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-direct {p0, v0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->showProgress(Z)V

    .line 64
    .line 65
    .line 66
    sget-object p0, Lcom/opay/team/a;->a:Lcom/opay/team/a;

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    new-array v0, v0, [Lkotlin/Pair;

    .line 70
    .line 71
    const-string v1, "transaction_detail_detail_continue_pay_cllick"

    .line 72
    .line 73
    invoke-virtual {p0, v1, v0}, Lcom/opay/team/a;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 74
    .line 75
    .line 76
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 77
    .line 78
    return-object p0
.end method

.method public static synthetic d0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->Z0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d1(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->showProgress(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static synthetic e0(Landroid/widget/TextView;Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/pay/cashier/choosecategory/CategoryItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->O0(Landroid/widget/TextView;Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/pay/cashier/choosecategory/CategoryItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e1()V
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "order_no"

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Lkotlin/Pair;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v2, v3

    .line 16
    .line 17
    const-string v1, "share_receipt_pop_show"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lteam/opay/pay/history/details/pdf/PdfDetailActivity;->g:Lteam/opay/pay/history/details/pdf/PdfDetailActivity$Companion;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "requireContext(...)"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/history/details/pdf/PdfDetailActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static synthetic f0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->w0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final f1()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->N()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->f()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;->k()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    const-string v1, "TOBEPAY"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const-string v1, "buttonRecycleView"

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    const-string v3, "btToBoPaid"

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lsse;

    .line 48
    .line 49
    iget-object v0, v0, Lsse;->d:Lcom/google/android/material/button/MaterialButton;

    .line 50
    .line 51
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lsse;

    .line 62
    .line 63
    iget-object v0, v0, Lsse;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    .line 65
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v4}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 69
    .line 70
    .line 71
    sget-object v0, Lcom/opay/team/a;->a:Lcom/opay/team/a;

    .line 72
    .line 73
    const-string v1, "transaction_details_detail_show"

    .line 74
    .line 75
    new-array v2, v4, [Lkotlin/Pair;

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/opay/team/a;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lsse;

    .line 86
    .line 87
    iget-object v0, v0, Lsse;->d:Lcom/google/android/material/button/MaterialButton;

    .line 88
    .line 89
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v4}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lsse;

    .line 100
    .line 101
    iget-object v0, v0, Lsse;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    .line 103
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 107
    .line 108
    .line 109
    :goto_1
    return-void
.end method

.method public static synthetic g0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->B0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final g1(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->J0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->v0()Lteam/opay/pay/cashier/OrderStatusPolling;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->J0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->l0()Lteam/opay/pay/cashier/OrderInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-nez v1, :cond_1

    .line 26
    .line 27
    const-string v1, ""

    .line 28
    .line 29
    :cond_1
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatusPolling;->b(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->F0()Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;->a()V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method

.method public static synthetic h0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionRefundRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->x0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionRefundRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->v0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final i1(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lteam/opay/pay/history/TobepayManager;
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/pay/history/TobepayManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getViewLifecycleOwner(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->J0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v0, v1, v2, p0}, Lteam/opay/pay/history/TobepayManager;-><init>(Lag8;Lteam/opay/pay/cashier/PaySheetViewModel;Llme;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method private final initView()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lsse;

    .line 6
    .line 7
    iget-object v0, v0, Lsse;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lteam/opay/pay/android/SpaceItemDecoration;

    .line 22
    .line 23
    const/4 v2, 0x6

    .line 24
    invoke-static {v2}, Ljmf;->d(I)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/16 v11, 0x7c

    .line 29
    .line 30
    const/4 v12, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v9, 0x0

    .line 36
    const/4 v10, 0x0

    .line 37
    move-object v3, v1

    .line 38
    invoke-direct/range {v3 .. v12}, Lteam/opay/pay/android/SpaceItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lsse;

    .line 49
    .line 50
    iget-object v0, v0, Lsse;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-direct {v1, v3, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->E0()Lteam/opay/pay/history/details/DetailsFunAdapter;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public static final synthetic j0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->K0(Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final k1(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->D0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final synthetic l0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->L0(Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic m0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->N0(Landroid/widget/TextView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic n0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->P0(Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic o0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/pay/history/UserTransactionsDetailRepository$DetailAction;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->R0(Lteam/opay/pay/history/UserTransactionsDetailRepository$DetailAction;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->T0(Landroid/widget/CompoundButton;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/pay/account/verify/VerifyEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->V0(Lteam/opay/pay/account/verify/VerifyEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic r0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->X0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final s0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lsse;

    .line 6
    .line 7
    iget-object p0, p0, Lsse;->h:Lteam/opay/core/android/views/PulseLoaderView;

    .line 8
    .line 9
    const-string v0, "verifyLoading"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method private final showProgress(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lsse;

    .line 6
    .line 7
    iget-object v0, v0, Lsse;->d:Lcom/google/android/material/button/MaterialButton;

    .line 8
    .line 9
    const-string v1, "btToBoPaid"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    xor-int/lit8 v1, p1, 0x1

    .line 15
    .line 16
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lsse;

    .line 24
    .line 25
    iget-object v0, v0, Lsse;->h:Lteam/opay/core/android/views/PulseLoaderView;

    .line 26
    .line 27
    const-string v1, "verifyLoading"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static final t0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lsse;

    .line 6
    .line 7
    iget-object v0, v0, Lsse;->g:Lteam/opay/pay/kyc/view/EmptyView;

    .line 8
    .line 9
    const-string v1, "retryButton"

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
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lsse;

    .line 22
    .line 23
    iget-object v0, v0, Lsse;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    const-string v1, "recycleView"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->j1(Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method public static final u0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final v0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lsse;

    .line 6
    .line 7
    iget-object v0, v0, Lsse;->g:Lteam/opay/pay/kyc/view/EmptyView;

    .line 8
    .line 9
    const-string v1, "retryButton"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lsse;

    .line 22
    .line 23
    iget-object v1, v0, Lsse;->g:Lteam/opay/pay/kyc/view/EmptyView;

    .line 24
    .line 25
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Number;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    move-object v3, p1

    .line 40
    check-cast v3, Ljava/lang/String;

    .line 41
    .line 42
    sget v4, Lteam/opay/pay/R$mipmap;->osdk_ic_transaction_error:I

    .line 43
    .line 44
    new-instance v8, Lute;

    .line 45
    .line 46
    invoke-direct {v8, p0}, Lute;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V

    .line 47
    .line 48
    .line 49
    const/16 v9, 0x38

    .line 50
    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v5, 0x0

    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    invoke-static/range {v1 .. v10}, Lteam/opay/pay/kyc/view/EmptyView;->j(Lteam/opay/pay/kyc/view/EmptyView;ILjava/lang/String;ILjava/lang/String;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Lsse;

    .line 63
    .line 64
    iget-object p0, p0, Lsse;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    .line 66
    const-string p1, "recycleView"

    .line 67
    .line 68
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p0
.end method

.method public static final w0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->a1(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final x0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionRefundRsp;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionRefundRsp;->getAutoJumpLink()Ljava/lang/String;

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
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, "requireContext(...)"

    .line 23
    .line 24
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionRefundRsp;->getAutoJumpLink()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    const-string p1, ""

    .line 37
    .line 38
    :cond_2
    invoke-static {p0, p1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    :goto_1
    sget-object v0, Lteam/opay/pay/history/details/reversed/ReverseDetailsDialogFragment;->u:Lteam/opay/pay/history/details/reversed/ReverseDetailsDialogFragment$Companion;

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lteam/opay/pay/history/details/reversed/ReverseDetailsDialogFragment$Companion;->a(Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionRefundRsp;)Lteam/opay/pay/history/details/reversed/ReverseDetailsDialogFragment;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v0, Lste;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lste;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lteam/opay/pay/history/details/reversed/ReverseDetailsDialogFragment;->c0(Lkotlin/jvm/functions/Function1;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->E(Landroidx/fragment/app/Fragment;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 60
    .line 61
    .line 62
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 63
    .line 64
    return-object p0
.end method

.method public static final y0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "mergeOrderId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "getViewLifecycleOwner(...)"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1, p0}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->C(Lag8;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static final z0(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/pay/history/UserTransactionsDetailRepository$VoucherPackageDetailsRsp;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;->t:Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment$Companion;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment$Companion;->a(Lteam/opay/pay/history/UserTransactionsDetailRepository$VoucherPackageDetailsRsp;)Lteam/opay/pay/history/details/VoucherPackageDetailsDialogFragment;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->E(Landroidx/fragment/app/Fragment;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method


# virtual methods
.method public final E0()Lteam/opay/pay/history/details/DetailsFunAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->x:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/history/details/DetailsFunAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final G0(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x6

    .line 3
    if-le p1, v0, :cond_0

    .line 4
    .line 5
    div-int/2addr v1, p1

    .line 6
    :cond_0
    return v1
.end method

.method public final H0()Lteam/opay/pay/history/TobepayManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->s:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/history/TobepayManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public final K0(Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "mobile"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValue()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lteam/opay/core/android/ContextKt;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    const-string v1, "voucherPackage"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const-string v1, ""

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getLink()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v2, "mergeOrderNo"

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move-object v1, v0

    .line 53
    :goto_0
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string v3, "getViewLifecycleOwner(...)"

    .line 62
    .line 63
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v2, v1, v3}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->C(Lag8;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getLink()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-nez v2, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    move-object v1, v2

    .line 84
    :goto_1
    invoke-static {v0, v1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    :goto_2
    sget-object v0, Lx7b;->a:Lx7b;

    .line 88
    .line 89
    const-string v1, "order_no"

    .line 90
    .line 91
    iget-object v2, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string v2, "item"

    .line 98
    .line 99
    invoke-static {v2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string v2, "url"

    .line 104
    .line 105
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getLink()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-static {v2, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    const/4 v2, 0x3

    .line 114
    new-array v2, v2, [Lkotlin/Pair;

    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    aput-object v1, v2, v3

    .line 118
    .line 119
    const/4 v1, 0x1

    .line 120
    aput-object p1, v2, v1

    .line 121
    .line 122
    const/4 p1, 0x2

    .line 123
    aput-object p2, v2, p1

    .line 124
    .line 125
    const-string p1, "transaction_details_item_click"

    .line 126
    .line 127
    invoke-virtual {v0, p1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final L0(Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V
    .locals 3

    .line 1
    sget-object p1, Lteam/opay/pay/account/verify/ModifyType;->Companion:Lteam/opay/pay/account/verify/ModifyType$Companion;

    .line 2
    .line 3
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValMap()Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v2, "valScene"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/String;

    .line 17
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
    move-object v0, v2

    .line 25
    :cond_1
    invoke-virtual {p1, v0}, Lteam/opay/pay/account/verify/ModifyType$Companion;->b(Ljava/lang/String;)Lteam/opay/pay/account/verify/ModifyType;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_4

    .line 30
    .line 31
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValMap()Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const-string v1, "valSceneCode"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v1, v0

    .line 44
    check-cast v1, Ljava/lang/String;

    .line 45
    .line 46
    :cond_2
    if-nez v1, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move-object v2, v1

    .line 50
    :goto_1
    iput-object v2, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->o:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->h1(Lteam/opay/pay/account/verify/ModifyType;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValMap()Ljava/util/LinkedHashMap;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->y:Ljava/util/Map;

    .line 60
    .line 61
    :cond_4
    return-void
.end method

.method public final M0(Lteam/opay/pay/history/UserTransactionsDetailRepository$LinkButton;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$LinkButton;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "share"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, ""

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$LinkButton;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v2, p1

    .line 23
    :goto_0
    invoke-virtual {p0, v2}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->S0(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    const-string v1, "normal"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$LinkButton;->d()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    move-object v0, v2

    .line 42
    :cond_2
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$LinkButton;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move-object v2, p1

    .line 50
    :goto_1
    invoke-virtual {p0, v0, v2}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->Q0(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_4
    :goto_2
    return-void
.end method

.method public final N0(Landroid/widget/TextView;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->N()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->i()Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;->getCategoryChooser()Lteam/opay/pay/history/UserTransactionsDetailRepository$CategoryChooser;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$CategoryChooser;->c()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    sget-object v1, Lx7b;->a:Lx7b;

    .line 36
    .line 37
    const-string v2, "order_no"

    .line 38
    .line 39
    iget-object v3, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "item"

    .line 46
    .line 47
    invoke-static {v3, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v3, 0x2

    .line 52
    new-array v3, v3, [Lkotlin/Pair;

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    aput-object v2, v3, v4

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    aput-object v0, v3, v2

    .line 59
    .line 60
    const-string v0, "transaction_details_item_click"

    .line 61
    .line 62
    invoke-virtual {v1, v0, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 63
    .line 64
    .line 65
    sget-object v0, Lteam/opay/pay/cashier/choosecategory/ChooseCategoryFragment;->y:Lteam/opay/pay/cashier/choosecategory/ChooseCategoryFragment$Companion;

    .line 66
    .line 67
    iget-object v1, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 68
    .line 69
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->F()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/cashier/choosecategory/ChooseCategoryFragment$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/pay/cashier/choosecategory/ChooseCategoryFragment;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v1, Lwte;

    .line 82
    .line 83
    invoke-direct {v1, p1, p0}, Lwte;-><init>(Landroid/widget/TextView;Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashier/choosecategory/ChooseCategoryFragment;->Y(Lkotlin/jvm/functions/Function1;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->E(Landroidx/fragment/app/Fragment;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final P0(Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->N()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->l()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    :cond_1
    sget-object v1, Lx7b;->a:Lx7b;

    .line 28
    .line 29
    const-string v2, "order_no"

    .line 30
    .line 31
    iget-object v3, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v3, "type"

    .line 38
    .line 39
    invoke-static {v3, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x2

    .line 44
    new-array v4, v4, [Lkotlin/Pair;

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    aput-object v2, v4, v5

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    aput-object v3, v4, v2

    .line 51
    .line 52
    const-string v2, "transaction_details_bank_call_click"

    .line 53
    .line 54
    invoke-virtual {v1, v2, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 55
    .line 56
    .line 57
    sget-object v1, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;->q:Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment$Companion;

    .line 58
    .line 59
    iget-object v2, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;->setOrderNo(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v2, "transaction_details"

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;->setFrom(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;->setType(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p1}, Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment$Companion;->a(Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;)Lteam/opay/pay/history/details/holder/ContactBankSheetDialogFragment;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final Q0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "order_no"

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "button_type"

    .line 12
    .line 13
    invoke-static {v2, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 v2, 0x2

    .line 18
    new-array v2, v2, [Lkotlin/Pair;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v1, v2, v3

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    aput-object p2, v2, v1

    .line 25
    .line 26
    const-string p2, "transaction_details_button_click"

    .line 27
    .line 28
    invoke-virtual {v0, p2, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {p2, p1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final R0(Lteam/opay/pay/history/UserTransactionsDetailRepository$DetailAction;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$DetailAction;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$DetailAction;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->N()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->g()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v3, v2

    .line 32
    :goto_0
    const-string v4, "IN"

    .line 33
    .line 34
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const-string v5, ""

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    const-string v3, "Credit"

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string v4, "OUT"

    .line 46
    .line 47
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    const-string v3, "Debit"

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move-object v3, v5

    .line 57
    :goto_1
    sget-object v4, Lx7b;->a:Lx7b;

    .line 58
    .line 59
    const-string v6, "orderNo"

    .line 60
    .line 61
    iget-object v7, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v6, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    const-string v7, "bootItem"

    .line 68
    .line 69
    invoke-static {v7, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    invoke-virtual {v1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->l()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    move-object v7, v2

    .line 81
    :goto_2
    const-string v8, "serviceType"

    .line 82
    .line 83
    invoke-static {v8, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    invoke-virtual {v1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->d()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    goto :goto_3

    .line 94
    :cond_4
    move-object v8, v2

    .line 95
    :goto_3
    const-string v9, "businessType"

    .line 96
    .line 97
    invoke-static {v9, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    if-eqz v1, :cond_5

    .line 102
    .line 103
    invoke-virtual {v1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->f()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-eqz v1, :cond_5

    .line 108
    .line 109
    invoke-virtual {v1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;->k()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    :cond_5
    const-string v1, "orderStatus"

    .line 114
    .line 115
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const-string v2, "debitFlag"

    .line 120
    .line 121
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const/4 v3, 0x6

    .line 126
    new-array v3, v3, [Lkotlin/Pair;

    .line 127
    .line 128
    const/4 v9, 0x0

    .line 129
    aput-object v6, v3, v9

    .line 130
    .line 131
    const/4 v6, 0x1

    .line 132
    aput-object v0, v3, v6

    .line 133
    .line 134
    const/4 v0, 0x2

    .line 135
    aput-object v7, v3, v0

    .line 136
    .line 137
    const/4 v0, 0x3

    .line 138
    aput-object v8, v3, v0

    .line 139
    .line 140
    const/4 v0, 0x4

    .line 141
    aput-object v1, v3, v0

    .line 142
    .line 143
    const/4 v0, 0x5

    .line 144
    aput-object v2, v3, v0

    .line 145
    .line 146
    const-string v0, "statement_bootItem"

    .line 147
    .line 148
    invoke-virtual {v4, v0, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    if-nez p1, :cond_6

    .line 156
    .line 157
    move-object p1, v5

    .line 158
    :cond_6
    invoke-static {v0, p1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public final S0(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "order_no"

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "button_type"

    .line 12
    .line 13
    invoke-static {v2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v2, 0x2

    .line 18
    new-array v2, v2, [Lkotlin/Pair;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v1, v2, v3

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    aput-object p1, v2, v1

    .line 25
    .line 26
    const-string p1, "transaction_details_button_click"

    .line 27
    .line 28
    invoke-virtual {v0, p1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->e1()V

    .line 32
    .line 33
    .line 34
    new-array p1, v3, [Lkotlin/Pair;

    .line 35
    .line 36
    const-string v1, "transaction_details_share_receipt_click"

    .line 37
    .line 38
    invoke-virtual {v0, v1, p1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final T0(Landroid/widget/CompoundButton;Z)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->z:Z

    .line 3
    .line 4
    if-nez v1, :cond_1

    .line 5
    .line 6
    sget-object v1, Lx7b;->a:Lx7b;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const-string v2, "1"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v2, "0"

    .line 14
    .line 15
    :goto_0
    const-string v3, "status"

    .line 16
    .line 17
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-array v3, v0, [Lkotlin/Pair;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aput-object v2, v3, v4

    .line 25
    .line 26
    const-string v2, "transaction_details_split_switch_click"

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 29
    .line 30
    .line 31
    sget-object v4, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 32
    .line 33
    const/4 v8, 0x3

    .line 34
    const/4 v9, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    move-object v5, p0

    .line 38
    invoke-static/range {v4 .. v9}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->g(Lteam/opay/pay/util/OpayLoadingWindow$Companion;Landroidx/fragment/app/Fragment;ZZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-boolean v0, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->z:Z

    .line 42
    .line 43
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Llte;

    .line 48
    .line 49
    invoke-direct {v1, p0, p1, p2}, Llte;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Landroid/widget/CompoundButton;Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0, p2, v1}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->T(Lag8;ZLkotlin/jvm/functions/Function1;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public final V0(Lteam/opay/pay/account/verify/VerifyEvent;)V
    .locals 7

    .line 1
    invoke-static {p0}, Lteam/opay/pay/base/FragmentKt;->m(Landroidx/fragment/app/Fragment;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->y:Ljava/util/Map;

    .line 12
    .line 13
    iget-object v3, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-string v0, "getViewLifecycleOwner(...)"

    .line 20
    .line 21
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v6, Ltte;

    .line 25
    .line 26
    invoke-direct {v6, p0}, Ltte;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V

    .line 27
    .line 28
    .line 29
    move-object v4, p1

    .line 30
    invoke-virtual/range {v1 .. v6}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->V(Ljava/util/Map;Ljava/lang/String;Lteam/opay/pay/account/verify/VerifyEvent;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final X0()V
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "order_no"

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Lkotlin/Pair;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v2, v3

    .line 16
    .line 17
    const-string v1, "transaction_details_funds_flow_click"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "getViewLifecycleOwner(...)"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->A(Lag8;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->showProgress(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lteam/opay/pay/cashier/result/PaymentFailedFragment;->w:Lteam/opay/pay/cashier/result/PaymentFailedFragment$Companion;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x3

    .line 13
    invoke-static {v2, v0, v3, v4, v3}, Lteam/opay/pay/cashier/result/PaymentFailedFragment$Companion;->b(Lteam/opay/pay/cashier/result/PaymentFailedFragment$Companion;ILjava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/cashier/result/PaymentFailedFragment;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v1, v2}, Lteam/opay/pay/base/FragmentKt;->F(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->F0()Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;->a()V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lteam/opay/pay/history/details/ReloadTransactionListEvent;

    .line 32
    .line 33
    invoke-direct {v2}, Lteam/opay/pay/history/details/ReloadTransactionListEvent;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->showProgress(Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public h(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->showProgress(Z)V

    .line 3
    .line 4
    .line 5
    sget p1, Lteam/opay/pay/R$string;->opay_payment_successful_header:I

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lteam/opay/pay/home/security/PasswordBottomSheet;

    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Lteam/opay/pay/home/security/PasswordBottomSheet;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lxte;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lxte;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/security/PasswordBottomSheet;->g(Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lteam/opay/pay/home/security/PasswordBottomSheet;->i(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v0, Lteam/opay/pay/history/details/ReloadTransactionListEvent;

    .line 39
    .line 40
    invoke-direct {v0}, Lteam/opay/pay/history/details/ReloadTransactionListEvent;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->F0()Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;->a()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final h1(Lteam/opay/pay/account/verify/ModifyType;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->N()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget-object v1, Lteam/opay/pay/account/verify/VerifyActivity;->l:Lteam/opay/pay/account/verify/VerifyActivity$Companion;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "requireActivity(...)"

    .line 25
    .line 26
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lteam/opay/core/settings/SettingsStorage;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string v5, "requireContext(...)"

    .line 36
    .line 37
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v3, v4}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Lteam/opay/core/settings/SettingsStorage;->K()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v3}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iget-object v5, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->o:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v3, "TRANSFLOW"

    .line 59
    .line 60
    iget-object v7, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 61
    .line 62
    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->k()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const-string v7, ""

    .line 70
    .line 71
    if-nez v3, :cond_1

    .line 72
    .line 73
    move-object v3, v7

    .line 74
    :cond_1
    const-string v8, "SERVICETYPE"

    .line 75
    .line 76
    invoke-interface {v6, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->d()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-nez v3, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    move-object v7, v3

    .line 87
    :goto_0
    const-string v3, "BUSINESSTYPE"

    .line 88
    .line 89
    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->f()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;->a()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValue()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/String;)Ljava/lang/Float;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    goto :goto_1

    .line 121
    :cond_3
    const/4 v0, 0x0

    .line 122
    :goto_1
    const/high16 v3, 0x42c80000    # 100.0f

    .line 123
    .line 124
    mul-float v0, v0, v3

    .line 125
    .line 126
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v3, "TRANSAMOUNT"

    .line 131
    .line 132
    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 136
    .line 137
    move-object v3, p1

    .line 138
    invoke-virtual/range {v1 .. v6}, Lteam/opay/pay/account/verify/VerifyActivity$Companion;->h(Landroid/app/Activity;Lteam/opay/pay/account/verify/ModifyType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->u:Z

    .line 3
    .line 4
    sget-object v0, Lteam/opay/pay/cashier/PaymentWebAuthFragment;->D:Lteam/opay/pay/cashier/PaymentWebAuthFragment$Companion;

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaymentWebAuthFragment$Companion;->a()Lteam/opay/pay/cashier/PaymentWebAuthFragment;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lvte;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lvte;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashier/PaymentWebAuthFragment;->r0(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "getChildFragmentManager(...)"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v2, "webAuth"

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lteam/opay/core/base/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final j1(Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Lsse;

    .line 7
    .line 8
    iget-object v1, v1, Lsse;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 9
    .line 10
    const-string v2, "actionCustomService"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->e()Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v1, v3}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lsse;

    .line 33
    .line 34
    iget-object v1, v1, Lsse;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 35
    .line 36
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lrte;

    .line 40
    .line 41
    invoke-direct {v2, p0}, Lrte;-><init>(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->h()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-ne v1, v2, :cond_0

    .line 59
    .line 60
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lsse;

    .line 65
    .line 66
    iget-object v1, v1, Lsse;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    .line 68
    const-string v3, "buttonRecycleView"

    .line 69
    .line 70
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/16 v3, 0x20

    .line 74
    .line 75
    invoke-static {v3}, Ljmf;->d(I)I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    invoke-static {v3}, Ljmf;->d(I)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-static {v1, v4, v0, v3, v0}, Lteam/opay/core/android/ViewKt;->r(Landroid/view/View;IIII)V

    .line 84
    .line 85
    .line 86
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->E0()Lteam/opay/pay/history/details/DetailsFunAdapter;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->h()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1, p1}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->S(Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;)Ljava/util/ArrayList;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    new-instance v1, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;

    .line 106
    .line 107
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->o()Lteam/opay/core/api/Country;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    new-instance v7, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$updateUI$adapter$1;

    .line 116
    .line 117
    invoke-direct {v7, p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$updateUI$adapter$1;-><init>(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    new-instance v8, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$updateUI$adapter$2;

    .line 121
    .line 122
    invoke-direct {v8, p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$updateUI$adapter$2;-><init>(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    move-object v3, v1

    .line 126
    move-object v5, p0

    .line 127
    invoke-direct/range {v3 .. v8}, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;-><init>(Ljava/util/List;Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/core/api/Country;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->f()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    if-eqz v3, :cond_1

    .line 135
    .line 136
    invoke-virtual {v3}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;->k()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    goto :goto_0

    .line 141
    :cond_1
    const/4 v3, 0x0

    .line 142
    :goto_0
    const-string v4, "FAIL"

    .line 143
    .line 144
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    invoke-virtual {v1, v3}, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->q(Z)V

    .line 149
    .line 150
    .line 151
    new-instance v3, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$updateUI$2;

    .line 152
    .line 153
    invoke-direct {v3, p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$updateUI$2;-><init>(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v3}, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->m(Lkotlin/jvm/functions/Function1;)V

    .line 157
    .line 158
    .line 159
    new-instance v3, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$updateUI$3;

    .line 160
    .line 161
    invoke-direct {v3, p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$updateUI$3;-><init>(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v3}, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->r(Lkotlin/jvm/functions/Function0;)V

    .line 165
    .line 166
    .line 167
    new-instance v3, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$updateUI$4;

    .line 168
    .line 169
    invoke-direct {v3, p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$updateUI$4;-><init>(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v3}, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->n(Lkotlin/jvm/functions/Function1;)V

    .line 173
    .line 174
    .line 175
    new-instance v3, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$updateUI$5;

    .line 176
    .line 177
    invoke-direct {v3, p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$updateUI$5;-><init>(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v3}, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->o(Lkotlin/jvm/functions/Function2;)V

    .line 181
    .line 182
    .line 183
    new-instance v3, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$updateUI$6;

    .line 184
    .line 185
    invoke-direct {v3, p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$updateUI$6;-><init>(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v3}, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->p(Lkotlin/jvm/functions/Function2;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    check-cast v3, Lsse;

    .line 196
    .line 197
    iget-object v3, v3, Lsse;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 198
    .line 199
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 200
    .line 201
    .line 202
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->f1()V

    .line 203
    .line 204
    .line 205
    iget-boolean v1, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->w:Z

    .line 206
    .line 207
    if-nez v1, :cond_3

    .line 208
    .line 209
    iput-boolean v2, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->w:Z

    .line 210
    .line 211
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->l()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    if-nez p1, :cond_2

    .line 216
    .line 217
    const-string p1, ""

    .line 218
    .line 219
    :cond_2
    sget-object v1, Lx7b;->a:Lx7b;

    .line 220
    .line 221
    const-string v3, "order_no"

    .line 222
    .line 223
    iget-object v4, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 224
    .line 225
    invoke-static {v3, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    const-string v4, "page_type"

    .line 230
    .line 231
    invoke-static {v4, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    const/4 v4, 0x2

    .line 236
    new-array v4, v4, [Lkotlin/Pair;

    .line 237
    .line 238
    aput-object v3, v4, v0

    .line 239
    .line 240
    aput-object p1, v4, v2

    .line 241
    .line 242
    const-string p1, "transaction_details_page_show"

    .line 243
    .line 244
    invoke-virtual {v1, p1, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 245
    .line 246
    .line 247
    :cond_3
    return-void
.end method

.method public m()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->u:Z

    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-class v2, Lteam/opay/pay/payment/verification/OtpVerificationActivity;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->J0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->l0()Lteam/opay/pay/cashier/OrderInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, ""

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    :cond_0
    move-object v1, v2

    .line 34
    :cond_1
    const-string v3, "team.opay.pay.EXTRA_ORDER_ID"

    .line 35
    .line 36
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string v1, "team.opay.pay.EXTRA_INSTRUCTIONS"

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->E()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v3, "team.opay.pay.EXTRA_ORDER_AMOUNT"

    .line 57
    .line 58
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->J0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->w0()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    move-object v2, v1

    .line 73
    :goto_0
    const-string v1, "team.opay.pay.EXTRA_OTPRESEND_INTERVAL"

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    const/16 v1, 0x12e

    .line 79
    .line 80
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->H0()Lteam/opay/pay/history/TobepayManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lteam/opay/pay/history/TobepayManager;->f(IILandroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onEvent(Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$RefreshTransactionDetailsEvent;)V
    .locals 1
    .param p1    # Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2$RefreshTransactionDetailsEvent;
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
    iget-object p1, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->a1(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p2, "orderNo"

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    :cond_0
    const-string p1, ""

    .line 24
    .line 25
    :cond_1
    iput-object p1, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->p:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->a1(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lteam/opay/pay/history/details/TransactionDetailConfig;->Companion:Lteam/opay/pay/history/details/TransactionDetailConfig$Companion;

    .line 31
    .line 32
    invoke-virtual {p1}, Lteam/opay/pay/history/details/TransactionDetailConfig$Companion;->a()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput-boolean p1, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->v:Z

    .line 37
    .line 38
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->initView()V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->b1()V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->addObserver()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public s()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->u:Z

    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-class v2, Lteam/opay/pay/payment/verification/PinVerificationActivity;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->J0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->l0()Lteam/opay/pay/cashier/OrderInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, ""

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    :cond_0
    move-object v1, v2

    .line 34
    :cond_1
    const-string v3, "team.opay.pay.EXTRA_ORDER_ID"

    .line 35
    .line 36
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string v1, "team.opay.pay.EXTRA_INSTRUCTIONS"

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->E()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "team.opay.pay.EXTRA_ORDER_AMOUNT"

    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    const/16 v1, 0x12f

    .line 62
    .line 63
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public y()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->u:Z

    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-class v2, Lteam/opay/pay/payment/verification/PhoneVerificationActivity;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->J0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->l0()Lteam/opay/pay/cashier/OrderInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, ""

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    :cond_0
    move-object v1, v2

    .line 34
    :cond_1
    const-string v3, "team.opay.pay.EXTRA_ORDER_ID"

    .line 35
    .line 36
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string v1, "team.opay.pay.EXTRA_INSTRUCTIONS"

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;->I0()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->E()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "team.opay.pay.EXTRA_ORDER_AMOUNT"

    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    const/16 v1, 0x130

    .line 62
    .line 63
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
