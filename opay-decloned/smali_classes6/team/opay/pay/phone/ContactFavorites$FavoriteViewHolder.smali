.class final Lteam/opay/pay/phone/ContactFavorites$FavoriteViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContactFavorites.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/phone/ContactFavorites;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FavoriteViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u000bR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/pay/phone/ContactFavorites$FavoriteViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/widget/TextView;",
        "textView",
        "<init>",
        "(Landroid/widget/TextView;)V",
        "Lteam/opay/pay/favorites/Favorite;",
        "favorite",
        "",
        "a",
        "(Lteam/opay/pay/favorites/Favorite;)V",
        "Landroid/widget/TextView;",
        "b",
        "Lteam/opay/pay/favorites/Favorite;",
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
.field public final a:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lteam/opay/pay/favorites/Favorite;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "textView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/phone/ContactFavorites$FavoriteViewHolder;->a:Landroid/widget/TextView;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/pay/favorites/Favorite;)V
    .locals 1
    .param p1    # Lteam/opay/pay/favorites/Favorite;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/phone/ContactFavorites$FavoriteViewHolder;->b:Lteam/opay/pay/favorites/Favorite;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/pay/phone/ContactFavorites$FavoriteViewHolder;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    sget v0, Lteam/opay/pay/R$string;->add_contact_favorite_button:I

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lteam/opay/pay/phone/ContactFavorites$FavoriteViewHolder;->a:Landroid/widget/TextView;

    .line 13
    .line 14
    sget v0, Lteam/opay/pay/R$drawable;->ripple_primary_12:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/phone/ContactFavorites$FavoriteViewHolder;->a:Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/pay/favorites/Favorite;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lteam/opay/pay/phone/ContactFavorites$FavoriteViewHolder;->a:Landroid/widget/TextView;

    .line 30
    .line 31
    sget v0, Lteam/opay/pay/R$drawable;->contact_favorite_background:I

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method
