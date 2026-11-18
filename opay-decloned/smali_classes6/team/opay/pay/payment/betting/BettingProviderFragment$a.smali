.class public final Lteam/opay/pay/payment/betting/BettingProviderFragment$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "BettingProviderFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/betting/BettingProviderFragment;->initView()V
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
        "team/opay/pay/payment/betting/BettingProviderFragment$a",
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

.field public final synthetic b:Lteam/opay/pay/payment/betting/BettingProviderFragment;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/GridLayoutManager;Lteam/opay/pay/payment/betting/BettingProviderFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingProviderFragment$a;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/payment/betting/BettingProviderFragment$a;->b:Lteam/opay/pay/payment/betting/BettingProviderFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

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
    iget-object p1, p0, Lteam/opay/pay/payment/betting/BettingProviderFragment$a;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-object p2, p0, Lteam/opay/pay/payment/betting/BettingProviderFragment$a;->b:Lteam/opay/pay/payment/betting/BettingProviderFragment;

    .line 16
    .line 17
    invoke-static {p2}, Lteam/opay/pay/payment/betting/BettingProviderFragment;->b0(Lteam/opay/pay/payment/betting/BettingProviderFragment;)Lteam/opay/pay/payment/betting/BettingProviderAdapter;

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
    check-cast p1, Lteam/opay/core/api/graphql/BettingInfo;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/BettingInfo;->getItemType()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    const/4 p3, 0x1

    .line 34
    if-ne p2, p3, :cond_2

    .line 35
    .line 36
    iget-object p2, p0, Lteam/opay/pay/payment/betting/BettingProviderFragment$a;->b:Lteam/opay/pay/payment/betting/BettingProviderFragment;

    .line 37
    .line 38
    invoke-virtual {p2}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Ll11;

    .line 43
    .line 44
    iget-object p2, p2, Ll11;->g:Lteam/opay/core/android/views/InitialsLetterBar;

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    iget-object p3, p0, Lteam/opay/pay/payment/betting/BettingProviderFragment$a;->b:Lteam/opay/pay/payment/betting/BettingProviderFragment;

    .line 49
    .line 50
    invoke-static {p3}, Lteam/opay/pay/payment/betting/BettingProviderFragment;->c0(Lteam/opay/pay/payment/betting/BettingProviderFragment;)Lteam/opay/pay/payment/betting/BettingProviderViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-virtual {p3}, Lteam/opay/pay/payment/betting/BettingProviderViewModel;->H()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    const/4 v0, 0x0

    .line 63
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/BettingInfo;->b()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_0

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, -0x1

    .line 90
    :goto_1
    invoke-virtual {p2, v0}, Lteam/opay/core/android/views/InitialsLetterBar;->setChoose(I)V

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void
.end method
