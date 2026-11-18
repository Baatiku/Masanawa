.class public final Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MoreListBannerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/provider/active/MoreListBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MoreListBannerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/core/common/internal/AdapterViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001d\u0010\t\u001a\u00020\u00082\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R6\u0010\"\u001a\u0016\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R*\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R&\u0010/\u001a\u0012\u0012\u0004\u0012\u00020\u00060+j\u0008\u0012\u0004\u0012\u00020\u0006`,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.\u00a8\u00060"
    }
    d2 = {
        "Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/core/common/internal/AdapterViewHolder;",
        "<init>",
        "(Lteam/opay/business/provider/active/MoreListBannerView;)V",
        "",
        "Lteam/opay/business/provider/active/MoreAdInfo;",
        "data",
        "",
        "setNewData",
        "(Ljava/util/List;)V",
        "",
        "getItemCount",
        "()I",
        "position",
        "getItemViewType",
        "(I)I",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "l",
        "(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/AdapterViewHolder;",
        "holder",
        "k",
        "(Lteam/opay/core/common/internal/AdapterViewHolder;I)V",
        "Lkotlin/Function2;",
        "",
        "Lteam/opay/business/provider/active/AdItem;",
        "a",
        "Lkotlin/jvm/functions/Function2;",
        "getCallback",
        "()Lkotlin/jvm/functions/Function2;",
        "m",
        "(Lkotlin/jvm/functions/Function2;)V",
        "callback",
        "Lkotlin/Function0;",
        "b",
        "Lkotlin/jvm/functions/Function0;",
        "getMoreCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "n",
        "(Lkotlin/jvm/functions/Function0;)V",
        "moreCallback",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "c",
        "Ljava/util/ArrayList;",
        "dataList",
        "business-provider_release"
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
.field public a:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lteam/opay/business/provider/active/AdItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lkotlin/jvm/functions/Function0;
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

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/business/provider/active/MoreAdInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic d:Lteam/opay/business/provider/active/MoreListBannerView;


# direct methods
.method public constructor <init>(Lteam/opay/business/provider/active/MoreListBannerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;->d:Lteam/opay/business/provider/active/MoreListBannerView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

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
    iget-object v0, p0, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lteam/opay/business/provider/active/MoreAdInfo;

    .line 8
    .line 9
    invoke-virtual {p1}, Lteam/opay/business/provider/active/MoreAdInfo;->b()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public k(Lteam/opay/core/common/internal/AdapterViewHolder;I)V
    .locals 3
    .param p1    # Lteam/opay/core/common/internal/AdapterViewHolder;
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
    iget-object v0, p0, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lteam/opay/business/provider/active/MoreAdInfo;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0, p2}, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;->getItemViewType(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0xb

    .line 22
    .line 23
    if-eq v1, v2, :cond_2

    .line 24
    .line 25
    const/16 v2, 0xc

    .line 26
    .line 27
    if-eq v1, v2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    check-cast p1, Lteam/opay/business/provider/active/MoreListBannerView$MoreBannerListMoreHolder;

    .line 31
    .line 32
    invoke-virtual {p1, p2, v0}, Lteam/opay/business/provider/active/MoreListBannerView$MoreBannerListMoreHolder;->c(ILteam/opay/business/provider/active/MoreAdInfo;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    check-cast p1, Lteam/opay/business/provider/active/MoreListBannerView$MoreBannerListNormalHolder;

    .line 37
    .line 38
    invoke-virtual {p1, p2, v0}, Lteam/opay/business/provider/active/MoreListBannerView$MoreBannerListNormalHolder;->e(ILteam/opay/business/provider/active/MoreAdInfo;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public l(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/AdapterViewHolder;
    .locals 4
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
    const/16 v0, 0xb

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eq p2, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0xc

    .line 14
    .line 15
    if-eq p2, v0, :cond_0

    .line 16
    .line 17
    new-instance p2, Lteam/opay/core/common/internal/EmptyViewHolder;

    .line 18
    .line 19
    new-instance v0, Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, v0}, Lteam/opay/core/common/internal/EmptyViewHolder;-><init>(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p2, Lteam/opay/business/provider/active/MoreListBannerView$MoreBannerListMoreHolder;

    .line 33
    .line 34
    sget v0, Lteam/opay/business/provider/R$layout;->provider_item_banner_bottom_more:I

    .line 35
    .line 36
    invoke-static {p1, v0, v3, v2, v1}, Let;->r(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p2, p1}, Lteam/opay/business/provider/active/MoreListBannerView$MoreBannerListMoreHolder;-><init>(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;->b:Lkotlin/jvm/functions/Function0;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lteam/opay/business/provider/active/MoreListBannerView$MoreBannerListMoreHolder;->e(Lkotlin/jvm/functions/Function0;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance p2, Lteam/opay/business/provider/active/MoreListBannerView$MoreBannerListNormalHolder;

    .line 50
    .line 51
    sget v0, Lteam/opay/business/provider/R$layout;->provider_item_more_banner:I

    .line 52
    .line 53
    invoke-static {p1, v0, v3, v2, v1}, Let;->r(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p2, p1}, Lteam/opay/business/provider/active/MoreListBannerView$MoreBannerListNormalHolder;-><init>(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;->a:Lkotlin/jvm/functions/Function2;

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Lteam/opay/business/provider/active/MoreListBannerView$MoreBannerListNormalHolder;->i(Lkotlin/jvm/functions/Function2;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-object p2
.end method

.method public final m(Lkotlin/jvm/functions/Function2;)V
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
            "Ljava/lang/Boolean;",
            "-",
            "Lteam/opay/business/provider/active/AdItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;->a:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public final n(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;->b:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/common/internal/AdapterViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;->k(Lteam/opay/core/common/internal/AdapterViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;->l(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/AdapterViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final setNewData(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/business/provider/active/MoreAdInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
