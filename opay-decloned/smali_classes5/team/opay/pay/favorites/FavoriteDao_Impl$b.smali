.class public Lteam/opay/pay/favorites/FavoriteDao_Impl$b;
.super Landroidx/room/EntityDeleteOrUpdateAdapter;
.source "FavoriteDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/favorites/FavoriteDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeleteOrUpdateAdapter<",
        "Lteam/opay/pay/favorites/Favorite;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/favorites/FavoriteDao_Impl;


# direct methods
.method public constructor <init>(Lteam/opay/pay/favorites/FavoriteDao_Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/favorites/FavoriteDao_Impl$b;->a:Lteam/opay/pay/favorites/FavoriteDao_Impl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ld2d;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lteam/opay/pay/favorites/Favorite;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/favorites/FavoriteDao_Impl$b;->d(Ld2d;Lteam/opay/pay/favorites/Favorite;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "DELETE FROM `Favorite` WHERE `uid` = ?"

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Ld2d;Lteam/opay/pay/favorites/Favorite;)V
    .locals 2
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/favorites/Favorite;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/favorites/Favorite;->c()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    int-to-long v0, p2

    .line 6
    const/4 p2, 0x1

    .line 7
    invoke-interface {p1, p2, v0, v1}, Ld2d;->c(IJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
