.class public final Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ContactFavorites.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/phone/ContactFavorites;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FavoritesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R6\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u0013\u0010\'\u001a\u0004\u0018\u00010\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "<init>",
        "(Lteam/opay/pay/phone/ContactFavorites;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "getItemCount",
        "()I",
        "holder",
        "position",
        "",
        "onBindViewHolder",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V",
        "getItemViewType",
        "(I)I",
        "l",
        "()V",
        "n",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V",
        "a",
        "I",
        "selectedFavoritePos",
        "",
        "Lteam/opay/pay/favorites/Favorite;",
        "value",
        "b",
        "Ljava/util/List;",
        "getFavorites",
        "()Ljava/util/List;",
        "setFavorites",
        "(Ljava/util/List;)V",
        "favorites",
        "m",
        "()Lteam/opay/pay/favorites/Favorite;",
        "selectedFavorite",
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
.field public a:I

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/favorites/Favorite;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic c:Lteam/opay/pay/phone/ContactFavorites;


# direct methods
.method public constructor <init>(Lteam/opay/pay/phone/ContactFavorites;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->c:Lteam/opay/pay/phone/ContactFavorites;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->a:I

    .line 8
    .line 9
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->b:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->o(Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final o(Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    sget p1, Lteam/opay/pay/R$layout;->contact_favorite_action:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget p1, Lteam/opay/pay/R$layout;->contact_favorite_item:I

    .line 15
    .line 16
    :goto_0
    return p1
.end method

.method public final l()V
    .locals 2

    .line 1
    iget v0, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput v1, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->a:I

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->getItemCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final m()Lteam/opay/pay/favorites/Favorite;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->a:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lteam/opay/pay/favorites/Favorite;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lteam/opay/pay/phone/ContactFavorites$ActionViewHolder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Lteam/opay/pay/phone/ContactFavorites$ActionViewHolder;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/pay/phone/ContactFavorites$ActionViewHolder;->a()Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v2, Lteam/opay/pay/phone/ContactFavorites$ActionType;->ADD:Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 13
    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/pay/phone/ContactFavorites$ActionViewHolder;->a()Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v0, Lteam/opay/pay/phone/ContactFavorites$ActionType;->EDIT:Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 21
    .line 22
    if-ne p1, v0, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->c:Lteam/opay/pay/phone/ContactFavorites;

    .line 25
    .line 26
    invoke-static {p1}, Lteam/opay/pay/phone/ContactFavorites;->a(Lteam/opay/pay/phone/ContactFavorites;)Lteam/opay/pay/phone/ContactFavorites$a;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->m()Lteam/opay/pay/favorites/Favorite;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->c:Lteam/opay/pay/phone/ContactFavorites;

    .line 38
    .line 39
    invoke-static {p1}, Lteam/opay/pay/phone/ContactFavorites;->a(Lteam/opay/pay/phone/ContactFavorites;)Lteam/opay/pay/phone/ContactFavorites$a;

    .line 40
    .line 41
    .line 42
    throw v1

    .line 43
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->c:Lteam/opay/pay/phone/ContactFavorites;

    .line 44
    .line 45
    invoke-static {p1}, Lteam/opay/pay/phone/ContactFavorites;->a(Lteam/opay/pay/phone/ContactFavorites;)Lteam/opay/pay/phone/ContactFavorites$a;

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->b:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->c:Lteam/opay/pay/phone/ContactFavorites;

    .line 58
    .line 59
    invoke-static {p1}, Lteam/opay/pay/phone/ContactFavorites;->a(Lteam/opay/pay/phone/ContactFavorites;)Lteam/opay/pay/phone/ContactFavorites$a;

    .line 60
    .line 61
    .line 62
    throw v1

    .line 63
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->l()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput v0, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->a:I

    .line 71
    .line 72
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->c:Lteam/opay/pay/phone/ContactFavorites;

    .line 80
    .line 81
    invoke-static {v0}, Lteam/opay/pay/phone/ContactFavorites;->a(Lteam/opay/pay/phone/ContactFavorites;)Lteam/opay/pay/phone/ContactFavorites$a;

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->b:Ljava/util/List;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Lteam/opay/pay/favorites/Favorite;

    .line 95
    .line 96
    throw v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
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
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    .line 8
    iget v1, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->a:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne p2, v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->b:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ge p2, v0, :cond_1

    .line 26
    .line 27
    check-cast p1, Lteam/opay/pay/phone/ContactFavorites$FavoriteViewHolder;

    .line 28
    .line 29
    iget-object v0, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->b:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lteam/opay/pay/favorites/Favorite;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lteam/opay/pay/phone/ContactFavorites$FavoriteViewHolder;->a(Lteam/opay/pay/favorites/Favorite;)V

    .line 38
    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_1
    if-nez p2, :cond_2

    .line 42
    .line 43
    check-cast p1, Lteam/opay/pay/phone/ContactFavorites$FavoriteViewHolder;

    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    invoke-virtual {p1, p2}, Lteam/opay/pay/phone/ContactFavorites$FavoriteViewHolder;->a(Lteam/opay/pay/favorites/Favorite;)V

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_2
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 51
    .line 52
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    invoke-virtual {p0}, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->getItemCount()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    sub-int/2addr v0, v2

    .line 67
    if-ne p2, v0, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string p2, "Check failed."

    .line 73
    .line 74
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :cond_4
    :goto_1
    check-cast p1, Lteam/opay/pay/phone/ContactFavorites$ActionViewHolder;

    .line 79
    .line 80
    iget-object p2, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->b:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    iget-object v0, p0, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->c:Lteam/opay/pay/phone/ContactFavorites;

    .line 87
    .line 88
    invoke-static {v0}, Lteam/opay/pay/phone/ContactFavorites;->b(Lteam/opay/pay/phone/ContactFavorites;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-ge p2, v0, :cond_6

    .line 93
    .line 94
    invoke-virtual {p0}, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;->m()Lteam/opay/pay/favorites/Favorite;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    if-eqz p2, :cond_5

    .line 99
    .line 100
    sget-object p2, Lteam/opay/pay/phone/ContactFavorites$ActionType;->EDIT:Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    sget-object p2, Lteam/opay/pay/phone/ContactFavorites$ActionType;->ADD:Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_6
    sget-object p2, Lteam/opay/pay/phone/ContactFavorites$ActionType;->MANAGE:Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 107
    .line 108
    :goto_2
    invoke-virtual {p1, p2}, Lteam/opay/pay/phone/ContactFavorites$ActionViewHolder;->b(Lteam/opay/pay/phone/ContactFavorites$ActionType;)V

    .line 109
    .line 110
    .line 111
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
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
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p1, p2, v2, v0, v1}, Lozf;->b(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget v0, Lteam/opay/pay/R$layout;->contact_favorite_item:I

    .line 14
    .line 15
    if-ne p2, v0, :cond_0

    .line 16
    .line 17
    new-instance p2, Lteam/opay/pay/phone/ContactFavorites$FavoriteViewHolder;

    .line 18
    .line 19
    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    move-object v0, p1

    .line 25
    check-cast v0, Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-direct {p2, v0}, Lteam/opay/pay/phone/ContactFavorites$FavoriteViewHolder;-><init>(Landroid/widget/TextView;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p2, Lteam/opay/pay/phone/ContactFavorites$ActionViewHolder;

    .line 32
    .line 33
    const-string v0, "null cannot be cast to non-null type android.widget.ImageView"

    .line 34
    .line 35
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    move-object v0, p1

    .line 39
    check-cast v0, Landroid/widget/ImageView;

    .line 40
    .line 41
    invoke-direct {p2, v0}, Lteam/opay/pay/phone/ContactFavorites$ActionViewHolder;-><init>(Landroid/widget/ImageView;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    new-instance v0, Lkn2;

    .line 45
    .line 46
    invoke-direct {v0, p0, p2}, Lkn2;-><init>(Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    return-object p2
.end method
