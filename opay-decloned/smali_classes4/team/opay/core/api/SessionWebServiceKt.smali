.class public final Lteam/opay/core/api/SessionWebServiceKt;
.super Ljava/lang/Object;
.source "SessionWebService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\"\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0002\u0010\u0003\"\u0018\u0010\t\u001a\u00020\u0006*\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"$\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0000*\u0008\u0012\u0004\u0012\u00020\n0\u00008BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "",
        "",
        "a",
        "Ljava/util/List;",
        "SUPPORTED_COUNTRY_CODES",
        "Lteam/opay/core/api/graphql/Response;",
        "Lteam/opay/core/api/Session;",
        "b",
        "(Lteam/opay/core/api/graphql/Response;)Lteam/opay/core/api/Session;",
        "session",
        "Lteam/opay/core/api/GraphQL$Country;",
        "c",
        "(Ljava/util/List;)Ljava/util/List;",
        "supported",
        "sdk_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lteam/opay/core/api/Country;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/core/api/Country;->KENYA:Lteam/opay/core/api/Country;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lteam/opay/core/api/Country;->GHANA:Lteam/opay/core/api/Country;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    const/16 v2, 0xa

    .line 26
    .line 27
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lteam/opay/core/api/Country;

    .line 49
    .line 50
    invoke-virtual {v2}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    sput-object v1, Lteam/opay/core/api/SessionWebServiceKt;->a:Ljava/util/List;

    .line 59
    .line 60
    return-void
.end method

.method public static final synthetic a(Lteam/opay/core/api/graphql/Response;)Lteam/opay/core/api/Session;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/api/SessionWebServiceKt;->b(Lteam/opay/core/api/graphql/Response;)Lteam/opay/core/api/Session;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Lteam/opay/core/api/graphql/Response;)Lteam/opay/core/api/Session;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/Response;->b()Lteam/opay/core/api/GraphQL$Schema;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$Schema;->e()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    new-instance v2, Lteam/opay/core/api/SessionWebServiceKt$special$$inlined$sortedBy$1;

    .line 21
    .line 22
    invoke-direct {v2}, Lteam/opay/core/api/SessionWebServiceKt$special$$inlined$sortedBy$1;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->M0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lteam/opay/core/api/SessionWebServiceKt;->c(Ljava/util/List;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/Response;->b()Lteam/opay/core/api/GraphQL$Schema;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$Schema;->g()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move-object v0, v1

    .line 45
    :goto_1
    if-nez v0, :cond_3

    .line 46
    .line 47
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_3
    move-object v7, v0

    .line 52
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_5

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    move-object v3, v2

    .line 67
    check-cast v3, Lteam/opay/core/api/GraphQL$Country;

    .line 68
    .line 69
    invoke-virtual {v3}, Lteam/opay/core/api/GraphQL$Country;->c()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_4

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_5
    move-object v2, v1

    .line 77
    :goto_2
    move-object v4, v2

    .line 78
    check-cast v4, Lteam/opay/core/api/GraphQL$Country;

    .line 79
    .line 80
    new-instance v0, Lteam/opay/core/api/Session;

    .line 81
    .line 82
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/Response;->b()Lteam/opay/core/api/GraphQL$Schema;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-eqz v2, :cond_6

    .line 87
    .line 88
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$Schema;->m()Lteam/opay/core/api/GraphQL$User;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    move-object v3, v2

    .line 93
    goto :goto_3

    .line 94
    :cond_6
    move-object v3, v1

    .line 95
    :goto_3
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/Response;->b()Lteam/opay/core/api/GraphQL$Schema;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    if-eqz p0, :cond_7

    .line 100
    .line 101
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$Schema;->h()Lteam/opay/core/api/GraphQL$Currency;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    :cond_7
    move-object v6, v1

    .line 106
    move-object v2, v0

    .line 107
    invoke-direct/range {v2 .. v7}, Lteam/opay/core/api/Session;-><init>(Lteam/opay/core/api/GraphQL$User;Lteam/opay/core/api/GraphQL$Country;Ljava/util/List;Lteam/opay/core/api/GraphQL$Currency;Ljava/util/List;)V

    .line 108
    .line 109
    .line 110
    return-object v0
.end method

.method public static final c(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$Country;",
            ">;)",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$Country;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v2, v1

    .line 21
    check-cast v2, Lteam/opay/core/api/GraphQL$Country;

    .line 22
    .line 23
    sget-object v3, Lteam/opay/core/api/SessionWebServiceKt;->a:Ljava/util/List;

    .line 24
    .line 25
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$Country;->a()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-object v0
.end method
