.class public final Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TnItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\'B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00082\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ#\u0010\u000f\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J#\u0010\u0013\u001a\u00020\u00082\n\u0010\u0011\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0012\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R6\u0010\u001e\u001a\u0016\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR$\u0010#\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u001fj\u0008\u0012\u0004\u0012\u00020\u0006` 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010&\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;",
        "<init>",
        "()V",
        "",
        "Lteam/opay/opb/qrcode/api/TnDetail;",
        "newData",
        "",
        "setData",
        "(Ljava/util/List;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "o",
        "(Landroid/view/ViewGroup;I)Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;",
        "holder",
        "position",
        "n",
        "(Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;I)V",
        "getItemCount",
        "()I",
        "Lkotlin/Function2;",
        "a",
        "Lkotlin/jvm/functions/Function2;",
        "m",
        "()Lkotlin/jvm/functions/Function2;",
        "p",
        "(Lkotlin/jvm/functions/Function2;)V",
        "callback",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "b",
        "Ljava/util/ArrayList;",
        "data",
        "c",
        "I",
        "selectedPosition",
        "TnViewHolder",
        "opay-qrcode_release"
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
            "Ljava/lang/Integer;",
            "-",
            "Lteam/opay/opb/qrcode/api/TnDetail;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/opb/qrcode/api/TnDetail;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;->c:I

    .line 13
    .line 14
    return-void
.end method

.method public static final synthetic k(Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic l(Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;->c:I

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;->b:Ljava/util/ArrayList;

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

.method public final m()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Lteam/opay/opb/qrcode/api/TnDetail;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;->a:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public n(Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;I)V
    .locals 1
    .param p1    # Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;
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
    iget-object v0, p0, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lteam/opay/opb/qrcode/api/TnDetail;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p1, v0, p2}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->b(Lteam/opay/opb/qrcode/api/TnDetail;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public o(Landroid/view/ViewGroup;I)Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;
    .locals 4
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
    new-instance p2, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;

    .line 7
    .line 8
    sget v0, Lteam/opay/opb/qrcode/R$layout;->qr_sdk_item_tn:I

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {p1, v0, v3, v1, v2}, Let;->r(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p2, p0, p1}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;-><init>(Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;->n(Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;->o(Landroid/view/ViewGroup;I)Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;

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
            "Ljava/lang/Integer;",
            "-",
            "Lteam/opay/opb/qrcode/api/TnDetail;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;->a:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public final setData(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "Lteam/opay/opb/qrcode/api/TnDetail;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;->c:I

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
