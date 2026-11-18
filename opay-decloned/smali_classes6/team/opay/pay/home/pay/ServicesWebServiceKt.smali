.class public final Lteam/opay/pay/home/pay/ServicesWebServiceKt;
.super Ljava/lang/Object;
.source "ServicesWebService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0002\u0010\u0003\"$\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0000*\u0008\u0012\u0004\u0012\u00020\u00050\u00008BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\"\u0015\u0010\r\u001a\u00020\n*\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\"\u001b\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0000*\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\"\u0015\u0010\u0015\u001a\u00020\u0013*\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "",
        "",
        "a",
        "Ljava/util/List;",
        "SUPPORTED_COUNTRY_CODES",
        "Lteam/opay/core/api/GraphQL$Country;",
        "d",
        "(Ljava/util/List;)Ljava/util/List;",
        "supported",
        "Lteam/opay/core/api/GraphQL$Schema;",
        "Lteam/opay/core/api/Session;",
        "c",
        "(Lteam/opay/core/api/GraphQL$Schema;)Lteam/opay/core/api/Session;",
        "session",
        "Lteam/opay/pay/home/pay/Service;",
        "b",
        "(Lteam/opay/core/api/GraphQL$Schema;)Ljava/util/List;",
        "availableServices",
        "Lteam/opay/core/api/GraphQL$KycLimit;",
        "Lteam/opay/pay/kyc/levels/KycLevel;",
        "(Lteam/opay/core/api/GraphQL$KycLimit;)Lteam/opay/pay/kyc/levels/KycLevel;",
        "asKycLevels",
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
    sput-object v1, Lteam/opay/pay/home/pay/ServicesWebServiceKt;->a:Ljava/util/List;

    .line 59
    .line 60
    return-void
.end method

.method public static final a(Lteam/opay/core/api/GraphQL$KycLimit;)Lteam/opay/pay/kyc/levels/KycLevel;
    .locals 13
    .param p0    # Lteam/opay/core/api/GraphQL$KycLimit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/kyc/levels/KycLevel;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$KycLimit;->d()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$KycLimit;->e()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$KycLimit;->a()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_0
    move-object v4, v1

    .line 27
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$KycLimit;->c()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    sget-object v1, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 34
    .line 35
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_1
    move-object v5, v1

    .line 40
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$KycLimit;->j()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    sget-object v1, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 47
    .line 48
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :cond_2
    move-object v6, v1

    .line 53
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$KycLimit;->g()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-nez v1, :cond_3

    .line 58
    .line 59
    sget-object v1, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 60
    .line 61
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :cond_3
    move-object v7, v1

    .line 66
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$KycLimit;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-nez v1, :cond_4

    .line 71
    .line 72
    sget-object v1, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 73
    .line 74
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :cond_4
    move-object v8, v1

    .line 79
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$KycLimit;->i()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-nez v1, :cond_5

    .line 84
    .line 85
    sget-object v1, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 86
    .line 87
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    :cond_5
    move-object v9, v1

    .line 92
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$KycLimit;->f()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-nez v1, :cond_6

    .line 97
    .line 98
    sget-object v1, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 99
    .line 100
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    :cond_6
    move-object v10, v1

    .line 105
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$KycLimit;->h()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-nez v1, :cond_7

    .line 110
    .line 111
    sget-object v1, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 112
    .line 113
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    :cond_7
    move-object v11, v1

    .line 118
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$KycLimit;->k()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    if-nez p0, :cond_8

    .line 123
    .line 124
    sget-object p0, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 125
    .line 126
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    :cond_8
    move-object v12, p0

    .line 131
    move-object v1, v0

    .line 132
    invoke-direct/range {v1 .. v12}, Lteam/opay/pay/kyc/levels/KycLevel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;)V

    .line 133
    .line 134
    .line 135
    return-object v0
.end method

.method public static final b(Lteam/opay/core/api/GraphQL$Schema;)Ljava/util/List;
    .locals 14
    .param p0    # Lteam/opay/core/api/GraphQL$Schema;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/GraphQL$Schema;",
            ")",
            "Ljava/util/List<",
            "Lteam/opay/pay/home/pay/Service;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$Schema;->l()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lteam/opay/core/api/GraphQL$TermsAndConditions;

    .line 37
    .line 38
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$TermsAndConditions;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 45
    .line 46
    invoke-virtual {v4, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "toUpperCase(...)"

    .line 51
    .line 52
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$TermsAndConditions;->getAccepted()Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$Schema;->j()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    if-nez p0, :cond_4

    .line 70
    .line 71
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_7

    .line 89
    .line 90
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    move-object v4, v2

    .line 95
    check-cast v4, Lteam/opay/core/api/GraphQL$Service;

    .line 96
    .line 97
    if-eqz v4, :cond_6

    .line 98
    .line 99
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$Service;->f()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    goto :goto_2

    .line 104
    :cond_6
    move-object v5, v3

    .line 105
    :goto_2
    if-eqz v5, :cond_5

    .line 106
    .line 107
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$Service;->a()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_5

    .line 112
    .line 113
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$Service;->c()Lteam/opay/core/api/GraphQL$ServiceId;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    if-eqz v4, :cond_5

    .line 118
    .line 119
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_7
    new-instance p0, Ljava/util/ArrayList;

    .line 124
    .line 125
    const/16 v2, 0xa

    .line 126
    .line 127
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    .line 133
    .line 134
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_14

    .line 143
    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    check-cast v2, Lteam/opay/core/api/GraphQL$Service;

    .line 149
    .line 150
    if-eqz v2, :cond_8

    .line 151
    .line 152
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$Service;->f()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    goto :goto_4

    .line 157
    :cond_8
    move-object v4, v3

    .line 158
    :goto_4
    const-string v5, ""

    .line 159
    .line 160
    if-nez v4, :cond_9

    .line 161
    .line 162
    move-object v8, v5

    .line 163
    goto :goto_5

    .line 164
    :cond_9
    move-object v8, v4

    .line 165
    :goto_5
    if-eqz v2, :cond_a

    .line 166
    .line 167
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$Service;->c()Lteam/opay/core/api/GraphQL$ServiceId;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    if-eqz v4, :cond_a

    .line 172
    .line 173
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$ServiceId;->getValue()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    goto :goto_6

    .line 178
    :cond_a
    move-object v4, v3

    .line 179
    :goto_6
    if-nez v4, :cond_b

    .line 180
    .line 181
    move-object v7, v5

    .line 182
    goto :goto_7

    .line 183
    :cond_b
    move-object v7, v4

    .line 184
    :goto_7
    const/4 v4, 0x0

    .line 185
    if-eqz v2, :cond_c

    .line 186
    .line 187
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$Service;->a()Z

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    move v9, v6

    .line 192
    goto :goto_8

    .line 193
    :cond_c
    const/4 v9, 0x0

    .line 194
    :goto_8
    if-eqz v2, :cond_d

    .line 195
    .line 196
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$Service;->b()Z

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    move v10, v6

    .line 201
    goto :goto_9

    .line 202
    :cond_d
    const/4 v10, 0x0

    .line 203
    :goto_9
    if-eqz v2, :cond_f

    .line 204
    .line 205
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$Service;->d()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    if-nez v6, :cond_e

    .line 210
    .line 211
    goto :goto_b

    .line 212
    :cond_e
    :goto_a
    move-object v12, v6

    .line 213
    goto :goto_c

    .line 214
    :cond_f
    :goto_b
    new-instance v6, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 215
    .line 216
    invoke-direct {v6, v5, v5}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto :goto_a

    .line 220
    :goto_c
    if-eqz v2, :cond_11

    .line 221
    .line 222
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$Service;->e()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    if-nez v6, :cond_10

    .line 227
    .line 228
    goto :goto_e

    .line 229
    :cond_10
    :goto_d
    move-object v11, v6

    .line 230
    goto :goto_f

    .line 231
    :cond_11
    :goto_e
    new-instance v6, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 232
    .line 233
    invoke-direct {v6, v5, v5}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    goto :goto_d

    .line 237
    :goto_f
    if-eqz v2, :cond_12

    .line 238
    .line 239
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$Service;->f()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    goto :goto_10

    .line 244
    :cond_12
    move-object v2, v3

    .line 245
    :goto_10
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    check-cast v2, Ljava/lang/Boolean;

    .line 250
    .line 251
    if-eqz v2, :cond_13

    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    move v13, v2

    .line 258
    goto :goto_11

    .line 259
    :cond_13
    const/4 v13, 0x0

    .line 260
    :goto_11
    new-instance v2, Lteam/opay/pay/home/pay/Service;

    .line 261
    .line 262
    move-object v6, v2

    .line 263
    invoke-direct/range {v6 .. v13}, Lteam/opay/pay/home/pay/Service;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Z)V

    .line 264
    .line 265
    .line 266
    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    goto/16 :goto_3

    .line 270
    .line 271
    :cond_14
    return-object p0
.end method

.method public static final c(Lteam/opay/core/api/GraphQL$Schema;)Lteam/opay/core/api/Session;
    .locals 7
    .param p0    # Lteam/opay/core/api/GraphQL$Schema;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$Schema;->e()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    new-instance v1, Lteam/opay/pay/home/pay/ServicesWebServiceKt$special$$inlined$sortedBy$1;

    .line 17
    .line 18
    invoke-direct {v1}, Lteam/opay/pay/home/pay/ServicesWebServiceKt$special$$inlined$sortedBy$1;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->M0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lteam/opay/pay/home/pay/ServicesWebServiceKt;->d(Ljava/util/List;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$Schema;->g()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_1
    move-object v6, v0

    .line 40
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    move-object v2, v1

    .line 55
    check-cast v2, Lteam/opay/core/api/GraphQL$Country;

    .line 56
    .line 57
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$Country;->c()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/4 v1, 0x0

    .line 65
    :goto_0
    move-object v3, v1

    .line 66
    check-cast v3, Lteam/opay/core/api/GraphQL$Country;

    .line 67
    .line 68
    new-instance v0, Lteam/opay/core/api/Session;

    .line 69
    .line 70
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$Schema;->m()Lteam/opay/core/api/GraphQL$User;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$Schema;->h()Lteam/opay/core/api/GraphQL$Currency;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    move-object v1, v0

    .line 79
    invoke-direct/range {v1 .. v6}, Lteam/opay/core/api/Session;-><init>(Lteam/opay/core/api/GraphQL$User;Lteam/opay/core/api/GraphQL$Country;Ljava/util/List;Lteam/opay/core/api/GraphQL$Currency;Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    return-object v0
.end method

.method public static final d(Ljava/util/List;)Ljava/util/List;
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
    sget-object v3, Lteam/opay/pay/home/pay/ServicesWebServiceKt;->a:Ljava/util/List;

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
