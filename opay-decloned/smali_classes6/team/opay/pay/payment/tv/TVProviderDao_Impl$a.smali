.class public Lteam/opay/pay/payment/tv/TVProviderDao_Impl$a;
.super Landroidx/room/EntityInsertAdapter;
.source "TVProviderDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/tv/TVProviderDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lteam/opay/pay/payment/tv/TVProvider;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/payment/tv/TVProviderDao_Impl;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/tv/TVProviderDao_Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/tv/TVProviderDao_Impl$a;->a:Lteam/opay/pay/payment/tv/TVProviderDao_Impl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

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
    check-cast p2, Lteam/opay/pay/payment/tv/TVProvider;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/tv/TVProviderDao_Impl$a;->e(Ld2d;Lteam/opay/pay/payment/tv/TVProvider;)V

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
    const-string v0, "INSERT OR ABORT INTO `TVProvider` (`name`,`id`,`bouquet`) VALUES (?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Ld2d;Lteam/opay/pay/payment/tv/TVProvider;)V
    .locals 2
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/payment/tv/TVProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TVProvider;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TVProvider;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TVProviderDao_Impl$a;->a:Lteam/opay/pay/payment/tv/TVProviderDao_Impl;

    .line 20
    .line 21
    invoke-static {v0}, Lteam/opay/pay/payment/tv/TVProviderDao_Impl;->a(Lteam/opay/pay/payment/tv/TVProviderDao_Impl;)Lteam/opay/pay/database/RoomTypeConverters;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TVProvider;->b()Lteam/opay/core/api/GraphQL$ServiceId;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lteam/opay/pay/database/RoomTypeConverters;->j(Lteam/opay/core/api/GraphQL$ServiceId;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x2

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TVProviderDao_Impl$a;->a:Lteam/opay/pay/payment/tv/TVProviderDao_Impl;

    .line 44
    .line 45
    invoke-static {v0}, Lteam/opay/pay/payment/tv/TVProviderDao_Impl;->a(Lteam/opay/pay/payment/tv/TVProviderDao_Impl;)Lteam/opay/pay/database/RoomTypeConverters;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TVProvider;->a()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {v0, p2}, Lteam/opay/pay/database/RoomTypeConverters;->m(Ljava/util/List;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const/4 v0, 0x3

    .line 58
    if-nez p2, :cond_2

    .line 59
    .line 60
    invoke-interface {p1, v0}, Ld2d;->l(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    invoke-interface {p1, v0, p2}, Ld2d;->m(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_2
    return-void
.end method
