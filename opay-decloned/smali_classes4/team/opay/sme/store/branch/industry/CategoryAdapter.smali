.class public final Lteam/opay/sme/store/branch/industry/CategoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CategoryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0011\u0008\u0000\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001+B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J#\u0010\t\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ#\u0010\u0010\u001a\u00020\u000f2\n\u0010\r\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R6\u0010\u001a\u001a\u0016\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R6\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u001b2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u001b8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R.\u0010*\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00138\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006,"
    }
    d2 = {
        "Lteam/opay/sme/store/branch/industry/CategoryAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;",
        "<init>",
        "()V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "n",
        "(Landroid/view/ViewGroup;I)Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;",
        "getItemCount",
        "()I",
        "holder",
        "position",
        "",
        "m",
        "(Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;I)V",
        "Lkotlin/Function2;",
        "Lteam/opay/sme/store/api/IndustryCategory;",
        "a",
        "Lkotlin/jvm/functions/Function2;",
        "k",
        "()Lkotlin/jvm/functions/Function2;",
        "o",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onItemClick",
        "",
        "value",
        "b",
        "Ljava/util/List;",
        "getDataList",
        "()Ljava/util/List;",
        "setDataList",
        "(Ljava/util/List;)V",
        "dataList",
        "c",
        "Lteam/opay/sme/store/api/IndustryCategory;",
        "l",
        "()Lteam/opay/sme/store/api/IndustryCategory;",
        "p",
        "(Lteam/opay/sme/store/api/IndustryCategory;)V",
        "selectedItem",
        "VH",
        "business-sme-store_release"
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
            "Lteam/opay/sme/store/api/IndustryCategory;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/IndustryCategory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lteam/opay/sme/store/api/IndustryCategory;
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
    iput-object v0, p0, Lteam/opay/sme/store/branch/industry/CategoryAdapter;->b:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/branch/industry/CategoryAdapter;->b:Ljava/util/List;

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

.method public final k()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Lteam/opay/sme/store/api/IndustryCategory;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/branch/industry/CategoryAdapter;->a:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Lteam/opay/sme/store/api/IndustryCategory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/branch/industry/CategoryAdapter;->c:Lteam/opay/sme/store/api/IndustryCategory;

    .line 2
    .line 3
    return-object v0
.end method

.method public m(Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;I)V
    .locals 1
    .param p1    # Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;
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
    iget-object v0, p0, Lteam/opay/sme/store/branch/industry/CategoryAdapter;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lteam/opay/sme/store/api/IndustryCategory;

    .line 13
    .line 14
    invoke-virtual {p1, p2, v0}, Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;->c(ILteam/opay/sme/store/api/IndustryCategory;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public n(Landroid/view/ViewGroup;I)Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;
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
    new-instance p2, Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;

    .line 7
    .line 8
    sget v0, Lteam/opay/sme/store/R$layout;->sme_store_item_industry:I

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
    invoke-direct {p2, p0, p1}, Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;-><init>(Lteam/opay/sme/store/branch/industry/CategoryAdapter;Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-object p2
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
            "Ljava/lang/Integer;",
            "-",
            "Lteam/opay/sme/store/api/IndustryCategory;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/industry/CategoryAdapter;->a:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/industry/CategoryAdapter;->m(Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/industry/CategoryAdapter;->n(Landroid/view/ViewGroup;I)Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final p(Lteam/opay/sme/store/api/IndustryCategory;)V
    .locals 0
    .param p1    # Lteam/opay/sme/store/api/IndustryCategory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/industry/CategoryAdapter;->c:Lteam/opay/sme/store/api/IndustryCategory;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setDataList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/IndustryCategory;",
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
    iput-object p1, p0, Lteam/opay/sme/store/branch/industry/CategoryAdapter;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
