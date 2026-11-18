.class public final Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AirtimeRewardsBundleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\t\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0015\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR6\u0010$\u001a\u0016\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R6\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u001d0%2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u001d0%8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,\u00a8\u0006."
    }
    d2 = {
        "Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;",
        "<init>",
        "()V",
        "",
        "enabled",
        "",
        "l",
        "(Z)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "o",
        "(Landroid/view/ViewGroup;I)Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;",
        "getItemCount",
        "()I",
        "holder",
        "position",
        "m",
        "(Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;I)V",
        "a",
        "Z",
        "Lbj7;",
        "b",
        "Lbj7;",
        "binding",
        "Lkotlin/Function2;",
        "Lteam/opay/pay/api/BundleInfo;",
        "c",
        "Lkotlin/jvm/functions/Function2;",
        "getOnItemSelected",
        "()Lkotlin/jvm/functions/Function2;",
        "q",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onItemSelected",
        "",
        "value",
        "d",
        "Ljava/util/List;",
        "getBundles",
        "()Ljava/util/List;",
        "p",
        "(Ljava/util/List;)V",
        "bundles",
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
.field public a:Z

.field public b:Lbj7;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lteam/opay/pay/api/BundleInfo;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/api/BundleInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;->d:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;Lteam/opay/pay/api/BundleInfo;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;->n(Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;Lteam/opay/pay/api/BundleInfo;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final n(Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;Lteam/opay/pay/api/BundleInfo;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;->c:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;->a:Z

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p2, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;->d:Ljava/util/List;

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

.method public final l(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;->a:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;->a:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public m(Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;I)V
    .locals 1
    .param p1    # Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;
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
    iget-object v0, p0, Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;->d:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lteam/opay/pay/api/BundleInfo;

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-boolean v0, p0, Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;->a:Z

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0}, Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;->a(Lteam/opay/pay/api/BundleInfo;Z)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 23
    .line 24
    new-instance v0, Lzp;

    .line 25
    .line 26
    invoke-direct {v0, p0, p2}, Lzp;-><init>(Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;Lteam/opay/pay/api/BundleInfo;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public o(Landroid/view/ViewGroup;I)Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p2, Lteam/opay/pay/R$layout;->item_airtime_rewards_bundle:I

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {p1, p2, v2, v0, v1}, Lozf;->b(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lbj7;->bind(Landroid/view/View;)Lbj7;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;->b:Lbj7;

    .line 20
    .line 21
    new-instance p1, Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;

    .line 22
    .line 23
    iget-object p2, p0, Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;->b:Lbj7;

    .line 24
    .line 25
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p2}, Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;-><init>(Lbj7;)V

    .line 29
    .line 30
    .line 31
    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;->m(Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;->o(Landroid/view/ViewGroup;I)Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final p(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/api/BundleInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;->d:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final q(Lkotlin/jvm/functions/Function2;)V
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
            "Lteam/opay/pay/api/BundleInfo;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/airtime/AirtimeRewardsBundleAdapter;->c:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method
