.class public final Lteam/opay/pay/history/details/pdf/PdfDetailFragment;
.super Lteam/opay/pay/history/details/pdf/Hilt_PdfDetailFragment;
.source "PdfDetailFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/history/details/pdf/PdfDetailFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/history/details/pdf/Hilt_PdfDetailFragment<",
        "Lz0f;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \'2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J!\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\r\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0012R\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0016R$\u0010 \u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001b\u0010&\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/pay/history/details/pdf/PdfDetailFragment;",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Lz0f;",
        "<init>",
        "()V",
        "",
        "addObserver",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onActivityCreated",
        "(Landroid/os/Bundle;)V",
        "",
        "orderNo",
        "d0",
        "(Ljava/lang/String;)V",
        "shareType",
        "e0",
        "p",
        "Ljava/lang/String;",
        "q",
        "transactionType",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;",
        "r",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;",
        "getReceiptResponse",
        "()Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;",
        "setReceiptResponse",
        "(Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;)V",
        "receiptResponse",
        "Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;",
        "s",
        "Lid8;",
        "Y",
        "()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;",
        "transactionDetailsViewModel",
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
.field public static final t:Lteam/opay/pay/history/details/pdf/PdfDetailFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final s:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/history/details/pdf/PdfDetailFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->t:Lteam/opay/pay/history/details/pdf/PdfDetailFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/history/details/pdf/PdfDetailFragment$1;->INSTANCE:Lteam/opay/pay/history/details/pdf/PdfDetailFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/history/details/pdf/Hilt_PdfDetailFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->p:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->q:Ljava/lang/String;

    .line 11
    .line 12
    const-class v0, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lteam/opay/pay/history/details/pdf/PdfDetailFragment$special$$inlined$activityViewModels$default$1;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lteam/opay/pay/history/details/pdf/PdfDetailFragment$special$$inlined$activityViewModels$default$2;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lteam/opay/pay/history/details/pdf/PdfDetailFragment$special$$inlined$activityViewModels$default$3;

    .line 30
    .line 31
    invoke-direct {v3, p0}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->s:Lid8;

    .line 39
    .line 40
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->a0(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->c0(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->W(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;Ljava/lang/String;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->X(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;Ljava/lang/String;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->b0(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->Z(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->V(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final W(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Ld1f;->a:Ld1f;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lemb;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lemb;-><init>(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Ld1f;->h(Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;Lkotlin/jvm/functions/Function2;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final X(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;Ljava/lang/String;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "transType"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "list"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->q:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lz0f;

    .line 18
    .line 19
    iget-object p0, p0, Lz0f;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    new-instance p2, Lteam/opay/pay/history/details/pdf/PdfDetailAdapter;

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->m()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p2, p3, p1, v0}, Lteam/opay/pay/history/details/pdf/PdfDetailAdapter;-><init>(Ljava/util/List;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method

.method public static final Z(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 6

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
    sget-object v0, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    move-object v1, p0

    .line 14
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->g(Lteam/opay/pay/util/OpayLoadingWindow$Companion;Landroidx/fragment/app/Fragment;ZZILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p1, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->a(Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method public static final a0(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;)Lkotlin/Unit;
    .locals 3

    .line 1
    iput-object p1, p0, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->r:Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->p:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->d0(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const-string p1, "Transaction Receipt"

    .line 12
    .line 13
    iput-object p1, p0, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->q:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lz0f;

    .line 20
    .line 21
    iget-object p1, p1, Lz0f;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    new-instance v0, Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter;

    .line 24
    .line 25
    iget-object p0, p0, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->r:Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;

    .line 26
    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    if-eqz p0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;->e()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v1, 0x0

    .line 40
    :goto_0
    if-nez v1, :cond_3

    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    :cond_3
    const/4 v2, 0x0

    .line 45
    invoke-direct {v0, p0, v1, v2}, Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter;-><init>(Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0
.end method

.method private final addObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->Y()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->G()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v2, Lcmb;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcmb;-><init>(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lteam/opay/pay/history/details/pdf/a$a;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lteam/opay/pay/history/details/pdf/a$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->Y()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

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
    new-instance v2, Ldmb;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Ldmb;-><init>(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lteam/opay/pay/history/details/pdf/a$a;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Lteam/opay/pay/history/details/pdf/a$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static final b0(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "PDF"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->e0(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final c0(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "Image"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->e0(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method


# virtual methods
.method public final Y()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->s:Lid8;

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

.method public final d0(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->Y()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

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

.method public final e0(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/history/details/pdf/Hilt_PdfDetailFragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->Y()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "requireContext(...)"

    .line 19
    .line 20
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->y(Landroid/content/Context;)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "PDF"

    .line 28
    .line 29
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const-string v4, "-"

    .line 34
    .line 35
    const-string v5, "order_no"

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    sget-object p1, Lx7b;->a:Lx7b;

    .line 40
    .line 41
    iget-object v3, p0, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->p:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v5, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    new-array v1, v1, [Lkotlin/Pair;

    .line 48
    .line 49
    aput-object v3, v1, v0

    .line 50
    .line 51
    const-string v0, "share_receipt_pop_pdf_click"

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 54
    .line 55
    .line 56
    sget-object p1, Lj3d;->a:Lj3d;

    .line 57
    .line 58
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->q:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v1, p0, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->p:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const/4 v1, 0x2

    .line 81
    invoke-virtual {p1, v2, v0, v1}, Lj3d;->d(Landroid/view/View;Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    const-string v3, "Image"

    .line 86
    .line 87
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    sget-object p1, Lx7b;->a:Lx7b;

    .line 94
    .line 95
    iget-object v3, p0, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->p:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v5, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    new-array v1, v1, [Lkotlin/Pair;

    .line 102
    .line 103
    aput-object v3, v1, v0

    .line 104
    .line 105
    const-string v0, "share_receipt_pop_image_click"

    .line 106
    .line 107
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 108
    .line 109
    .line 110
    sget-object p1, Lf3d;->a:Lf3d;

    .line 111
    .line 112
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->q:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v1, p0, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->p:Ljava/lang/String;

    .line 115
    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p1, v2, v0}, Lf3d;->d(Landroid/view/View;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
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
    check-cast p1, Lz0f;

    .line 9
    .line 10
    iget-object p1, p1, Lz0f;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    new-instance v0, Lteam/opay/pay/history/details/OpayWaterMark;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, v1}, Lteam/opay/pay/history/details/OpayWaterMark;-><init>(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lx7b;->a:Lx7b;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    new-array v0, v0, [Lkotlin/Pair;

    .line 25
    .line 26
    const-string v1, "notify_recipient_page_show"

    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->Y()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->I()Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lylb;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lylb;-><init>(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lteam/opay/pay/history/details/pdf/a$a;

    .line 49
    .line 50
    invoke-direct {v2, v1}, Lteam/opay/pay/history/details/pdf/a$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->Y()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->J()Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v1, Lzlb;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Lzlb;-><init>(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;)V

    .line 71
    .line 72
    .line 73
    new-instance v2, Lteam/opay/pay/history/details/pdf/a$a;

    .line 74
    .line 75
    invoke-direct {v2, v1}, Lteam/opay/pay/history/details/pdf/a$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lz0f;

    .line 86
    .line 87
    iget-object p1, p1, Lz0f;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    .line 89
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 90
    .line 91
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->Y()Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->p:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const-string v2, "getViewLifecycleOwner(...)"

    .line 112
    .line 113
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0, v1}, Lteam/opay/pay/history/details/TransactionDetailsViewModelV2;->L(Ljava/lang/String;Lag8;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lz0f;

    .line 124
    .line 125
    iget-object p1, p1, Lz0f;->d:Lcom/google/android/material/button/MaterialButton;

    .line 126
    .line 127
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    const/4 v0, 0x6

    .line 131
    invoke-static {v0}, Ljmf;->d(I)I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-static {p1, v1}, Lteam/opay/core/android/ViewKt;->c(Landroid/view/View;I)V

    .line 136
    .line 137
    .line 138
    const-string v1, "apply(...)"

    .line 139
    .line 140
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    new-instance v2, Lamb;

    .line 144
    .line 145
    invoke-direct {v2, p0}, Lamb;-><init>(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;)V

    .line 146
    .line 147
    .line 148
    invoke-static {p1, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Lz0f;

    .line 156
    .line 157
    iget-object p1, p1, Lz0f;->c:Lcom/google/android/material/button/MaterialButton;

    .line 158
    .line 159
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-static {v0}, Ljmf;->d(I)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    invoke-static {p1, v0}, Lteam/opay/core/android/ViewKt;->c(Landroid/view/View;I)V

    .line 167
    .line 168
    .line 169
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    new-instance v0, Lbmb;

    .line 173
    .line 174
    invoke-direct {v0, p0}, Lbmb;-><init>(Lteam/opay/pay/history/details/pdf/PdfDetailFragment;)V

    .line 175
    .line 176
    .line 177
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 178
    .line 179
    .line 180
    invoke-direct {p0}, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->addObserver()V

    .line 181
    .line 182
    .line 183
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
    iput-object p1, p0, Lteam/opay/pay/history/details/pdf/PdfDetailFragment;->p:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method
