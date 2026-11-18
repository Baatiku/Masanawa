.class public final Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OperatorBundlesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0015\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001b\u0010\u0010\u001a\u00020\u00052\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u000cJ\u001f\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR6\u0010(\u001a\u0016\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0005\u0018\u00010!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;",
        "<init>",
        "()V",
        "",
        "l",
        "",
        "position",
        "r",
        "(I)V",
        "m",
        "()I",
        "",
        "Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;",
        "list",
        "setData",
        "(Ljava/util/List;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "p",
        "(Landroid/view/ViewGroup;I)Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;",
        "getItemCount",
        "holder",
        "n",
        "(Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;I)V",
        "a",
        "Ljava/util/List;",
        "dataList",
        "b",
        "I",
        "selectedPosition",
        "Lkotlin/Function2;",
        "c",
        "Lkotlin/jvm/functions/Function2;",
        "getOnItemSelected",
        "()Lkotlin/jvm/functions/Function2;",
        "q",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onItemSelected",
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
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I

.field public c:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    iput-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;->a:Ljava/util/List;

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;->b:I

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;ILteam/opay/pay/payment/airtimeDataBase/OperatorItemData;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;->o(Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;ILteam/opay/pay/payment/airtimeDataBase/OperatorItemData;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final o(Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;ILteam/opay/pay/payment/airtimeDataBase/OperatorItemData;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;->c:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;->a:Ljava/util/List;

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

.method public final l()V
    .locals 2

    .line 1
    iget v0, p0, Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iput v1, p0, Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;->b:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final m()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public n(Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;I)V
    .locals 2
    .param p1    # Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;
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
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget v1, p0, Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;->b:I

    .line 18
    .line 19
    if-ne p2, v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x0

    .line 24
    :goto_0
    invoke-virtual {p1, v0, v1}, Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;->a(Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;Z)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 28
    .line 29
    new-instance v1, Lvva;

    .line 30
    .line 31
    invoke-direct {v1, p0, p2, v0}, Lvva;-><init>(Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;ILteam/opay/pay/payment/airtimeDataBase/OperatorItemData;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;->n(Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;->p(Landroid/view/ViewGroup;I)Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public p(Landroid/view/ViewGroup;I)Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;
    .locals 1
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
    sget p2, Lteam/opay/pay/R$layout;->fragment_airtime_data_operator_item:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, p2, v0}, Lozf;->a(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Llb6;->bind(Landroid/view/View;)Llb6;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p2, "bind(...)"

    .line 18
    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;

    .line 23
    .line 24
    invoke-direct {p2, p1}, Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;-><init>(Llb6;)V

    .line 25
    .line 26
    .line 27
    return-object p2
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
            "Ljava/lang/Integer;",
            "-",
            "Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;->c:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public final r(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setData(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;",
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
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/OperatorBundlesAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method
