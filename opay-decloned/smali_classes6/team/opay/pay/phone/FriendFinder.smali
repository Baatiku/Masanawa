.class public final Lteam/opay/pay/phone/FriendFinder;
.super Ljava/lang/Object;
.source "FriendFinder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R0\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148\u0002@BX\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR \u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000c0\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR&\u0010#\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000c0!0 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\"R&\u0010&\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0!0$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010%R)\u0010,\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0!0\'8\u0006\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\u00a8\u0006-"
    }
    d2 = {
        "Lteam/opay/pay/phone/FriendFinder;",
        "",
        "Lteam/opay/pay/favorites/FavoritesRepository;",
        "favoritesRepository",
        "Lteam/opay/core/api/e;",
        "sessionProvider",
        "Lteam/opay/pay/phone/ContactMatcher;",
        "contactMatcher",
        "<init>",
        "(Lteam/opay/pay/favorites/FavoritesRepository;Lteam/opay/core/api/e;Lteam/opay/pay/phone/ContactMatcher;)V",
        "",
        "phoneNumber",
        "Lteam/opay/pay/phone/Friend;",
        "e",
        "(Ljava/lang/String;)Lteam/opay/pay/phone/Friend;",
        "",
        "d",
        "()V",
        "a",
        "Lteam/opay/pay/phone/ContactMatcher;",
        "",
        "Lteam/opay/pay/favorites/Favorite;",
        "value",
        "b",
        "Ljava/util/List;",
        "g",
        "(Ljava/util/List;)V",
        "favorites",
        "",
        "c",
        "Ljava/util/Map;",
        "cache",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Landroidx/lifecycle/MutableLiveData;",
        "mapData",
        "Landroidx/lifecycle/MediatorLiveData;",
        "Landroidx/lifecycle/MediatorLiveData;",
        "_data",
        "Landroidx/lifecycle/LiveData;",
        "f",
        "Landroidx/lifecycle/LiveData;",
        "getData",
        "()Landroidx/lifecycle/LiveData;",
        "data",
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
.field public final a:Lteam/opay/pay/phone/ContactMatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/phone/Friend;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/phone/Friend;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/pay/favorites/FavoritesRepository;Lteam/opay/core/api/e;Lteam/opay/pay/phone/ContactMatcher;)V
    .locals 2
    .param p1    # Lteam/opay/pay/favorites/FavoritesRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/phone/ContactMatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "favoritesRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sessionProvider"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "contactMatcher"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p3, p0, Lteam/opay/pay/phone/FriendFinder;->a:Lteam/opay/pay/phone/ContactMatcher;

    .line 20
    .line 21
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    iput-object p3, p0, Lteam/opay/pay/phone/FriendFinder;->b:Ljava/util/List;

    .line 26
    .line 27
    new-instance p3, Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p3, p0, Lteam/opay/pay/phone/FriendFinder;->c:Ljava/util/Map;

    .line 33
    .line 34
    new-instance p3, Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    invoke-direct {p3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p3, p0, Lteam/opay/pay/phone/FriendFinder;->d:Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    .line 42
    .line 43
    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lteam/opay/pay/phone/FriendFinder;->e:Landroidx/lifecycle/MediatorLiveData;

    .line 47
    .line 48
    iput-object v0, p0, Lteam/opay/pay/phone/FriendFinder;->f:Landroidx/lifecycle/LiveData;

    .line 49
    .line 50
    invoke-interface {p2}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    if-eqz p2, :cond_0

    .line 55
    .line 56
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$User;->e()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 p2, 0x0

    .line 62
    :goto_0
    if-nez p2, :cond_1

    .line 63
    .line 64
    const-string p2, ""

    .line 65
    .line 66
    :cond_1
    invoke-virtual {p1, p2}, Lteam/opay/pay/favorites/FavoritesRepository;->a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    new-instance p2, Lok6;

    .line 73
    .line 74
    invoke-direct {p2, p0}, Lok6;-><init>(Lteam/opay/pay/phone/FriendFinder;)V

    .line 75
    .line 76
    .line 77
    new-instance v1, Lteam/opay/pay/phone/FriendFinder$a;

    .line 78
    .line 79
    invoke-direct {v1, p2}, Lteam/opay/pay/phone/FriendFinder$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    new-instance p1, Lpk6;

    .line 86
    .line 87
    invoke-direct {p1, p0}, Lpk6;-><init>(Lteam/opay/pay/phone/FriendFinder;)V

    .line 88
    .line 89
    .line 90
    new-instance p2, Lteam/opay/pay/phone/FriendFinder$a;

    .line 91
    .line 92
    invoke-direct {p2, p1}, Lteam/opay/pay/phone/FriendFinder$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p3, p2}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/phone/FriendFinder;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/phone/FriendFinder;->f(Lteam/opay/pay/phone/FriendFinder;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/pay/phone/FriendFinder;Ljava/util/Map;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/phone/FriendFinder;->c(Lteam/opay/pay/phone/FriendFinder;Ljava/util/Map;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lteam/opay/pay/phone/FriendFinder;Ljava/util/Map;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object p1, p0, Lteam/opay/pay/phone/FriendFinder;->e:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/pay/phone/FriendFinder;->d:Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/util/Map;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lkotlin/collections/e;->i()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v1}, Lkotlin/collections/e;->e(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/util/Map$Entry;

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lteam/opay/pay/phone/Friend;

    .line 59
    .line 60
    invoke-virtual {v1}, Lteam/opay/pay/phone/Friend;->a()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p0
.end method

.method public static final f(Lteam/opay/pay/phone/FriendFinder;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/phone/FriendFinder;->g(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/phone/FriendFinder;->d()V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method


# virtual methods
.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/phone/FriendFinder;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p0, Lteam/opay/pay/phone/FriendFinder;->c:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lteam/opay/pay/phone/Friend;

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Lteam/opay/pay/phone/FriendFinder;->e(Ljava/lang/String;)Lteam/opay/pay/phone/Friend;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    iget-object v3, p0, Lteam/opay/pay/phone/FriendFinder;->c:Ljava/util/Map;

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Lteam/opay/pay/phone/FriendFinder;->e(Ljava/lang/String;)Lteam/opay/pay/phone/Friend;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    if-eqz v1, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lteam/opay/pay/phone/FriendFinder;->d:Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    iget-object v1, p0, Lteam/opay/pay/phone/FriendFinder;->c:Ljava/util/Map;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void
.end method

.method public final e(Ljava/lang/String;)Lteam/opay/pay/phone/Friend;
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/phone/FriendFinder;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v3, v1

    .line 19
    check-cast v3, Lteam/opay/pay/favorites/Favorite;

    .line 20
    .line 21
    invoke-virtual {v3}, Lteam/opay/pay/favorites/Favorite;->b()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v3, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v1, v2

    .line 33
    :goto_0
    check-cast v1, Lteam/opay/pay/favorites/Favorite;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    return-object v2

    .line 38
    :cond_2
    new-instance p1, Lteam/opay/pay/phone/Friend;

    .line 39
    .line 40
    invoke-virtual {v1}, Lteam/opay/pay/favorites/Favorite;->a()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v1, Lteam/opay/pay/phone/Source;->FAVORITES:Lteam/opay/pay/phone/Source;

    .line 45
    .line 46
    invoke-direct {p1, v0, v1}, Lteam/opay/pay/phone/Friend;-><init>(Ljava/lang/String;Lteam/opay/pay/phone/Source;)V

    .line 47
    .line 48
    .line 49
    return-object p1
.end method

.method public final g(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/favorites/Favorite;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/phone/FriendFinder;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lteam/opay/pay/phone/FriendFinder;->b:Ljava/util/List;

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/phone/FriendFinder;->d()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
