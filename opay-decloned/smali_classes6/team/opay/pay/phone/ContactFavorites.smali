.class public final Lteam/opay/pay/phone/ContactFavorites;
.super Ljava/lang/Object;
.source "ContactFavorites.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/phone/ContactFavorites$ActionType;,
        Lteam/opay/pay/phone/ContactFavorites$ActionViewHolder;,
        Lteam/opay/pay/phone/ContactFavorites$a;,
        Lteam/opay/pay/phone/ContactFavorites$FavoriteViewHolder;,
        Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0005\u0010\u0011\u0012\u0013\nB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0018\u0010\u000f\u001a\u00060\u000cR\u00020\u00008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/pay/phone/ContactFavorites;",
        "",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "limit",
        "Lteam/opay/pay/phone/ContactFavorites$a;",
        "delegate",
        "<init>",
        "(Landroidx/recyclerview/widget/RecyclerView;ILteam/opay/pay/phone/ContactFavorites$a;)V",
        "a",
        "I",
        "Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;",
        "b",
        "Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;",
        "adapter",
        "FavoriteViewHolder",
        "ActionType",
        "ActionViewHolder",
        "FavoritesAdapter",
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
.field public final a:I

.field public final b:Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;ILteam/opay/pay/phone/ContactFavorites$a;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/phone/ContactFavorites$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "delegate"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput p2, p0, Lteam/opay/pay/phone/ContactFavorites;->a:I

    .line 15
    .line 16
    new-instance p2, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;

    .line 17
    .line 18
    invoke-direct {p2, p0}, Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;-><init>(Lteam/opay/pay/phone/ContactFavorites;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/pay/phone/ContactFavorites;->b:Lteam/opay/pay/phone/ContactFavorites$FavoritesAdapter;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 24
    .line 25
    .line 26
    new-instance p2, Lteam/opay/pay/android/SpaceItemDecoration;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    sget v0, Lteam/opay/pay/R$dimen;->contact_favorites_spacing:I

    .line 33
    .line 34
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    const v0, 0x7fffffff

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, p3, v0}, Lteam/opay/pay/android/SpaceItemDecoration;-><init>(II)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static final synthetic a(Lteam/opay/pay/phone/ContactFavorites;)Lteam/opay/pay/phone/ContactFavorites$a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lteam/opay/pay/phone/ContactFavorites;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/pay/phone/ContactFavorites;->a:I

    .line 2
    .line 3
    return p0
.end method
