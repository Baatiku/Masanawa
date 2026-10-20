.class public final Lteam/opay/pay/payment/giftcard/GiftCardListFragment$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "GiftCardListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/giftcard/GiftCardListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "team/opay/pay/payment/giftcard/GiftCardListFragment$a",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "dx",
        "dy",
        "",
        "onScrolled",
        "(Landroidx/recyclerview/widget/RecyclerView;II)V",
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
.field public final synthetic a:Landroidx/recyclerview/widget/GridLayoutManager;

.field public final synthetic b:Lteam/opay/pay/payment/giftcard/GiftCardListFragment;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/GridLayoutManager;Lteam/opay/pay/payment/giftcard/GiftCardListFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/GridLayoutManager;",
            "Lteam/opay/pay/payment/giftcard/GiftCardListFragment;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$a;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$a;->b:Lteam/opay/pay/payment/giftcard/GiftCardListFragment;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$a;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-object p2, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$a;->b:Lteam/opay/pay/payment/giftcard/GiftCardListFragment;

    .line 16
    .line 17
    invoke-static {p2}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment;->S(Lteam/opay/pay/payment/giftcard/GiftCardListFragment;)Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lteam/opay/pay/payment/giftcard/QuickSpanItemEntry;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Lteam/opay/pay/payment/giftcard/QuickSpanItemEntry;->getItemType()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    const/4 p3, 0x3

    .line 34
    if-ne p2, p3, :cond_0

    .line 35
    .line 36
    iget-object p2, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 37
    .line 38
    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p2, Ljava/util/List;

    .line 41
    .line 42
    invoke-virtual {p1}, Lteam/opay/pay/payment/giftcard/QuickSpanItemEntry;->a()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->m0(Ljava/util/List;Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/4 p2, -0x1

    .line 51
    if-eq p1, p2, :cond_0

    .line 52
    .line 53
    iget-object p2, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$a;->b:Lteam/opay/pay/payment/giftcard/GiftCardListFragment;

    .line 54
    .line 55
    invoke-virtual {p2}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    check-cast p2, Lwd6;

    .line 60
    .line 61
    iget-object p2, p2, Lwd6;->d:Lteam/opay/core/android/views/InitialsLetterBar;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Lteam/opay/core/android/views/InitialsLetterBar;->setChoose(I)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method
