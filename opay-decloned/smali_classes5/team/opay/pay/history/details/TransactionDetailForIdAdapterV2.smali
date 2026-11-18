.class public final Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TransactionDetailForIdAdapterV2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001WBW\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\n\u0012\u001a\u0010\u0011\u001a\u0016\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001f\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008 \u0010!R\u001d\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\u0017\u0010\t\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-R\"\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R(\u0010\u0011\u001a\u0016\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R0\u00108\u001a\u0010\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u00020\u000c\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010/\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R0\u0010=\u001a\u0010\u0012\u0004\u0012\u000209\u0012\u0004\u0012\u00020\u000c\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010/\u001a\u0004\u0008;\u00105\"\u0004\u0008<\u00107R*\u0010E\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010>8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR6\u0010M\u001a\u0016\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u00101\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR6\u0010Q\u001a\u0016\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008N\u00101\u001a\u0004\u0008O\u0010J\"\u0004\u0008P\u0010LR\"\u0010S\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010R\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010V\u00a8\u0006X"
    }
    d2 = {
        "Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;",
        "",
        "Lteam/opay/pay/history/details/BaseTransactionDetail;",
        "list",
        "Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;",
        "fragment",
        "Lteam/opay/core/api/Country;",
        "country",
        "Lkotlin/Function1;",
        "Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;",
        "",
        "contactBankClick",
        "Lkotlin/Function2;",
        "Landroid/widget/CompoundButton;",
        "",
        "transactionSpiltCallback",
        "<init>",
        "(Ljava/util/List;Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/core/api/Country;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "l",
        "(Landroid/view/ViewGroup;I)Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;",
        "holder",
        "position",
        "k",
        "(Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;I)V",
        "getItemViewType",
        "(I)I",
        "getItemCount",
        "()I",
        "a",
        "Ljava/util/List;",
        "getList",
        "()Ljava/util/List;",
        "b",
        "Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;",
        "getFragment",
        "()Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;",
        "c",
        "Lteam/opay/core/api/Country;",
        "getCountry",
        "()Lteam/opay/core/api/Country;",
        "d",
        "Lkotlin/jvm/functions/Function1;",
        "e",
        "Lkotlin/jvm/functions/Function2;",
        "Landroid/widget/TextView;",
        "f",
        "getChooseCategoryClick",
        "()Lkotlin/jvm/functions/Function1;",
        "m",
        "(Lkotlin/jvm/functions/Function1;)V",
        "chooseCategoryClick",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$DetailAction;",
        "g",
        "getMoreActionClick",
        "n",
        "moreActionClick",
        "Lkotlin/Function0;",
        "h",
        "Lkotlin/jvm/functions/Function0;",
        "getViewMoneyFlowClick",
        "()Lkotlin/jvm/functions/Function0;",
        "r",
        "(Lkotlin/jvm/functions/Function0;)V",
        "viewMoneyFlowClick",
        "",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
        "i",
        "getOnArrowClick",
        "()Lkotlin/jvm/functions/Function2;",
        "o",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onArrowClick",
        "j",
        "getOnBodyClickedListener",
        "p",
        "onBodyClickedListener",
        "Z",
        "isTransferFailed",
        "()Z",
        "q",
        "(Z)V",
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
.field public static final l:Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/history/details/BaseTransactionDetail;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/core/api/Country;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/widget/CompoundButton;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/widget/TextView;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$DetailAction;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lkotlin/jvm/functions/Function0;
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

.field public i:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->l:Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;Lteam/opay/core/api/Country;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/api/Country;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lteam/opay/pay/history/details/BaseTransactionDetail;",
            ">;",
            "Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;",
            "Lteam/opay/core/api/Country;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/widget/CompoundButton;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

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
    const-string v0, "country"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->a:Ljava/util/List;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->b:Lteam/opay/pay/history/details/TransactionDetailForidFragmentV2;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->c:Lteam/opay/core/api/Country;

    .line 24
    .line 25
    iput-object p4, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->d:Lkotlin/jvm/functions/Function1;

    .line 26
    .line 27
    iput-object p5, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->e:Lkotlin/jvm/functions/Function2;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lteam/opay/pay/history/details/BaseTransactionDetail;

    .line 8
    .line 9
    invoke-virtual {p1}, Lteam/opay/pay/history/details/BaseTransactionDetail;->getItemType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public k(Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;I)V
    .locals 1
    .param p1    # Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lteam/opay/pay/history/details/BaseTransactionDetail;

    .line 13
    .line 14
    invoke-virtual {p1, p2, v0}, Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;->a(ILteam/opay/pay/history/details/BaseTransactionDetail;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public l(Landroid/view/ViewGroup;I)Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;
    .locals 9
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "inflate(...)"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    packed-switch p2, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    :pswitch_0
    new-instance p2, Lteam/opay/pay/history/details/holder/TransactionDetailBodyHolder;

    .line 21
    .line 22
    invoke-static {v0, p1, v2}, Lak7;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lak7;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->i:Lkotlin/jvm/functions/Function2;

    .line 30
    .line 31
    iget-object v1, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->j:Lkotlin/jvm/functions/Function2;

    .line 32
    .line 33
    invoke-direct {p2, p1, v0, v1}, Lteam/opay/pay/history/details/holder/TransactionDetailBodyHolder;-><init>(Lak7;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 34
    .line 35
    .line 36
    return-object p2

    .line 37
    :pswitch_1
    new-instance p2, Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;

    .line 38
    .line 39
    invoke-static {v0, p1, v2}, Lbk7;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbk7;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->f:Lkotlin/jvm/functions/Function1;

    .line 47
    .line 48
    iget-object v1, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->g:Lkotlin/jvm/functions/Function1;

    .line 49
    .line 50
    invoke-direct {p2, p1, v0, v1}, Lteam/opay/pay/history/details/holder/TransactionDetailCategoryHolder;-><init>(Lbk7;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    return-object p2

    .line 54
    :pswitch_2
    new-instance p2, Lteam/opay/pay/history/details/holder/TransactionAdInfoViewHolder;

    .line 55
    .line 56
    invoke-static {v0, p1, v2}, Laj7;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Laj7;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p2, p1}, Lteam/opay/pay/history/details/holder/TransactionAdInfoViewHolder;-><init>(Laj7;)V

    .line 64
    .line 65
    .line 66
    return-object p2

    .line 67
    :pswitch_3
    new-instance p2, Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;

    .line 68
    .line 69
    invoke-static {v0, p1, v2}, Lck7;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lck7;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->e:Lkotlin/jvm/functions/Function2;

    .line 77
    .line 78
    invoke-direct {p2, p1, v0}, Lteam/opay/pay/history/details/holder/TransactionCostReductionHolder;-><init>(Lck7;Lkotlin/jvm/functions/Function2;)V

    .line 79
    .line 80
    .line 81
    return-object p2

    .line 82
    :pswitch_4
    new-instance p2, Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;

    .line 83
    .line 84
    invoke-static {v0, p1, v2}, Ldk7;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ldk7;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p2, p1}, Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;-><init>(Ldk7;)V

    .line 92
    .line 93
    .line 94
    return-object p2

    .line 95
    :pswitch_5
    new-instance p2, Lteam/opay/pay/history/details/holder/TransactionDetailBodyHolder;

    .line 96
    .line 97
    invoke-static {v0, p1, v2}, Lak7;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lak7;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->i:Lkotlin/jvm/functions/Function2;

    .line 105
    .line 106
    iget-object v1, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->j:Lkotlin/jvm/functions/Function2;

    .line 107
    .line 108
    invoke-direct {p2, p1, v0, v1}, Lteam/opay/pay/history/details/holder/TransactionDetailBodyHolder;-><init>(Lak7;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 109
    .line 110
    .line 111
    return-object p2

    .line 112
    :pswitch_6
    new-instance p2, Lteam/opay/pay/history/details/holder/TransactionDetailHeaderHolder;

    .line 113
    .line 114
    invoke-static {v0, p1, v2}, Lek7;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lek7;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v4, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->c:Lteam/opay/core/api/Country;

    .line 122
    .line 123
    iget-object v5, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->h:Lkotlin/jvm/functions/Function0;

    .line 124
    .line 125
    iget-object v6, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->d:Lkotlin/jvm/functions/Function1;

    .line 126
    .line 127
    iget-object v7, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->i:Lkotlin/jvm/functions/Function2;

    .line 128
    .line 129
    iget-object v8, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->j:Lkotlin/jvm/functions/Function2;

    .line 130
    .line 131
    move-object v2, p2

    .line 132
    invoke-direct/range {v2 .. v8}, Lteam/opay/pay/history/details/holder/TransactionDetailHeaderHolder;-><init>(Lek7;Lteam/opay/core/api/Country;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 133
    .line 134
    .line 135
    return-object p2

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final m(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/widget/TextView;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->f:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final n(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$DetailAction;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->g:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final o(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->i:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->k(Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->l(Landroid/view/ViewGroup;I)Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final p(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->j:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public final q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public final r(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/history/details/TransactionDetailForIdAdapterV2;->h:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method
