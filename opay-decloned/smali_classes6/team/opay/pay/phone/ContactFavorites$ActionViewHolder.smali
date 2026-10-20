.class final Lteam/opay/pay/phone/ContactFavorites$ActionViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ContactFavorites.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/phone/ContactFavorites;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R*\u0010\u000e\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00088\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0006\u0010\u000c\"\u0004\u0008\n\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/pay/phone/ContactFavorites$ActionViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/widget/ImageView;",
        "imageView",
        "<init>",
        "(Landroid/widget/ImageView;)V",
        "a",
        "Landroid/widget/ImageView;",
        "Lteam/opay/pay/phone/ContactFavorites$ActionType;",
        "value",
        "b",
        "Lteam/opay/pay/phone/ContactFavorites$ActionType;",
        "()Lteam/opay/pay/phone/ContactFavorites$ActionType;",
        "(Lteam/opay/pay/phone/ContactFavorites$ActionType;)V",
        "type",
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
.field public final a:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lteam/opay/pay/phone/ContactFavorites$ActionType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "imageView"

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
    iput-object p1, p0, Lteam/opay/pay/phone/ContactFavorites$ActionViewHolder;->a:Landroid/widget/ImageView;

    .line 10
    .line 11
    sget-object p1, Lteam/opay/pay/phone/ContactFavorites$ActionType;->ADD:Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 12
    .line 13
    iput-object p1, p0, Lteam/opay/pay/phone/ContactFavorites$ActionViewHolder;->b:Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/pay/phone/ContactFavorites$ActionType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/phone/ContactFavorites$ActionViewHolder;->b:Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Lteam/opay/pay/phone/ContactFavorites$ActionType;)V
    .locals 1
    .param p1    # Lteam/opay/pay/phone/ContactFavorites$ActionType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/phone/ContactFavorites$ActionViewHolder;->b:Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/pay/phone/ContactFavorites$ActionViewHolder;->a:Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/pay/phone/ContactFavorites$ActionType;->getIconRes()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
