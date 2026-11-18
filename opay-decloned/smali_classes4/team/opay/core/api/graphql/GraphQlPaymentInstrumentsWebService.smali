.class public final Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;
.super Ljava/lang/Object;
.source "PaymentInstruments.kt"

# interfaces
.implements Lteam/opay/core/api/d;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J#\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ#\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\t0\u00082\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J)\u0010\u0018\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u0015\u0012\u0004\u0012\u00020\u00170\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J)\u0010\u001c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u0015\u0012\u0004\u0012\u00020\u001b0\u00142\u0006\u0010\u0013\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001b\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\t0\u0008H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008\"\u0010#R\u0014\u0010&\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010%\u00a8\u0006\'"
    }
    d2 = {
        "Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;",
        "Lteam/opay/core/api/d;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
        "Lteam/opay/core/api/GraphQL$PaymentInstrumentInput;",
        "instrument",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/ApiResponse;",
        "Lteam/opay/core/api/graphql/BindInstrumentRes;",
        "f",
        "(Lteam/opay/core/api/GraphQL$PaymentInstrumentInput;)Landroidx/lifecycle/LiveData;",
        "",
        "id",
        "",
        "b",
        "(Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/api/PaymentInstrumentListRequest;",
        "request",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/core/api/graphql/RestResponse;",
        "Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentListResponse;",
        "Lteam/opay/core/api/PaymentInstrumentListResponse;",
        "q",
        "(Lteam/opay/core/api/PaymentInstrumentListRequest;)Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/core/api/graphql/OrderFeeRequest;",
        "Lteam/opay/core/api/graphql/OrderFeeResponse;",
        "o",
        "(Lteam/opay/core/api/graphql/OrderFeeRequest;)Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/core/api/graphql/UserBindCardInfo;",
        "a",
        "()Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;",
        "v",
        "(Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;)Z",
        "Lxt;",
        "Lxt;",
        "api",
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
.field public final a:Lxt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lteam/opay/core/api/GraphQL;->a(Landroid/content/Context;)Lxt;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;->a:Lxt;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic e(Lteam/opay/core/api/graphql/RestResponse;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;->t(Lteam/opay/core/api/graphql/RestResponse;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/PaymentInstrumentListResponse;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;->r(Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/PaymentInstrumentListResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/UserBindCardInfo;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;->s(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/UserBindCardInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/OrderFeeResponse;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;->p(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/OrderFeeResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lretrofit2/Response;Ljava/lang/Boolean;)Lteam/opay/core/android/arch/ApiErrorResponse;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;->u(Lretrofit2/Response;Ljava/lang/Boolean;)Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lretrofit2/Response;Lteam/opay/core/api/graphql/BindInstrumentRes;)Lteam/opay/core/android/arch/ApiErrorResponse;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;->n(Lretrofit2/Response;Lteam/opay/core/api/graphql/BindInstrumentRes;)Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/BindInstrumentRes;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;->m(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/BindInstrumentRes;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final m(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/BindInstrumentRes;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/RestResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lteam/opay/core/api/graphql/BindInstrumentRes;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final n(Lretrofit2/Response;Lteam/opay/core/api/graphql/BindInstrumentRes;)Lteam/opay/core/android/arch/ApiErrorResponse;
    .locals 3

    .line 1
    const-string v0, "apiResponse"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lteam/opay/core/api/graphql/RestResponse;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/RestResponse;->b()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lteam/opay/core/api/graphql/BindInstrumentRes;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/BindInstrumentRes;->isSuccessedBind()Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    if-nez p0, :cond_1

    .line 35
    .line 36
    sget-object p0, Lvu;->a:Lvu;

    .line 37
    .line 38
    new-instance v0, Lteam/opay/core/android/arch/ApiError;

    .line 39
    .line 40
    sget-object v1, Lteam/opay/core/android/arch/ErrorType;->OTHER:Lteam/opay/core/android/arch/ErrorType;

    .line 41
    .line 42
    const-string v2, "Instrument was not marked as added"

    .line 43
    .line 44
    invoke-direct {v0, v1, v2}, Lteam/opay/core/android/arch/ApiError;-><init>(Lteam/opay/core/android/arch/ErrorType;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, v0}, Lvu;->c(Ljava/lang/Object;Lteam/opay/core/android/arch/ApiError;)Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 p0, 0x0

    .line 53
    :goto_1
    return-object p0
.end method

.method public static final p(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/OrderFeeResponse;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/RestResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lteam/opay/core/api/graphql/OrderFeeResponse;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final r(Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/PaymentInstrumentListResponse;
    .locals 32

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/graphql/RestResponse;->b()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentListResponse;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentListResponse;->b()Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v2

    .line 23
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/graphql/RestResponse;->b()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentListResponse;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentListResponse;->a()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :cond_1
    if-nez v2, :cond_2

    .line 36
    .line 37
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    move-object v4, v3

    .line 61
    check-cast v4, Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;

    .line 62
    .line 63
    move-object/from16 v5, p0

    .line 64
    .line 65
    invoke-virtual {v5, v4}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;->v(Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    .line 76
    .line 77
    const/16 v3, 0xa

    .line 78
    .line 79
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_6

    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    move-object v4, v3

    .line 101
    check-cast v4, Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;

    .line 102
    .line 103
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;->getCardSkipCvv()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_5

    .line 108
    .line 109
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;->getType()Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    sget-object v5, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->CARD:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 114
    .line 115
    if-ne v3, v5, :cond_5

    .line 116
    .line 117
    sget-object v3, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->TOKEN:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 118
    .line 119
    :goto_3
    move-object v6, v3

    .line 120
    goto :goto_4

    .line 121
    :cond_5
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;->getType()Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    goto :goto_3

    .line 126
    :goto_4
    const v30, 0x1fffffd

    .line 127
    .line 128
    .line 129
    const/16 v31, 0x0

    .line 130
    .line 131
    const/4 v5, 0x0

    .line 132
    const/4 v7, 0x0

    .line 133
    const/4 v8, 0x0

    .line 134
    const/4 v9, 0x0

    .line 135
    const/4 v10, 0x0

    .line 136
    const/4 v11, 0x0

    .line 137
    const/4 v12, 0x0

    .line 138
    const/4 v13, 0x0

    .line 139
    const/4 v14, 0x0

    .line 140
    const/4 v15, 0x0

    .line 141
    const/16 v16, 0x0

    .line 142
    .line 143
    const/16 v17, 0x0

    .line 144
    .line 145
    const/16 v18, 0x0

    .line 146
    .line 147
    const/16 v19, 0x0

    .line 148
    .line 149
    const/16 v20, 0x0

    .line 150
    .line 151
    const/16 v21, 0x0

    .line 152
    .line 153
    const/16 v22, 0x0

    .line 154
    .line 155
    const/16 v23, 0x0

    .line 156
    .line 157
    const/16 v24, 0x0

    .line 158
    .line 159
    const/16 v25, 0x0

    .line 160
    .line 161
    const/16 v26, 0x0

    .line 162
    .line 163
    const/16 v27, 0x0

    .line 164
    .line 165
    const/16 v28, 0x0

    .line 166
    .line 167
    const/16 v29, 0x0

    .line 168
    .line 169
    invoke-static/range {v4 .. v31}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;->copy$default(Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;Ljava/lang/String;Lteam/opay/core/api/GraphQL$PaymentInstrumentType;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CoinsAccount;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$MobileMoneyProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    const-string v4, "null cannot be cast to non-null type team.opay.core.api.PaymentInstrument"

    .line 174
    .line 175
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_6
    new-instance v1, Lteam/opay/core/api/PaymentInstrumentListResponse;

    .line 183
    .line 184
    invoke-direct {v1, v0, v2}, Lteam/opay/core/api/PaymentInstrumentListResponse;-><init>(Ljava/lang/Long;Ljava/util/List;)V

    .line 185
    .line 186
    .line 187
    return-object v1
.end method

.method public static final s(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/UserBindCardInfo;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/RestResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lteam/opay/core/api/graphql/UserBindCardInfo;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final t(Lteam/opay/core/api/graphql/RestResponse;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/RestResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/lang/Boolean;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final u(Lretrofit2/Response;Ljava/lang/Boolean;)Lteam/opay/core/android/arch/ApiErrorResponse;
    .locals 3

    .line 1
    const-string v0, "apiResponse"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lteam/opay/core/api/graphql/RestResponse;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/RestResponse;->b()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    if-nez p0, :cond_1

    .line 27
    .line 28
    sget-object p0, Lvu;->a:Lvu;

    .line 29
    .line 30
    new-instance v0, Lteam/opay/core/android/arch/ApiError;

    .line 31
    .line 32
    sget-object v1, Lteam/opay/core/android/arch/ErrorType;->OTHER:Lteam/opay/core/android/arch/ErrorType;

    .line 33
    .line 34
    const-string v2, "Instrument was not marked as removed"

    .line 35
    .line 36
    invoke-direct {v0, v1, v2}, Lteam/opay/core/android/arch/ApiError;-><init>(Lteam/opay/core/android/arch/ErrorType;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Lvu;->c(Ljava/lang/Object;Lteam/opay/core/android/arch/ApiError;)Lteam/opay/core/android/arch/ApiErrorResponse;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    :goto_1
    return-object p0
.end method


# virtual methods
.method public a()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "Lteam/opay/core/api/graphql/UserBindCardInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;->a:Lxt;

    .line 2
    .line 3
    invoke-interface {v0}, Lxt;->a()Lretrofit2/Call;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lws6;

    .line 8
    .line 9
    invoke-direct {v2}, Lws6;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lsu;->e(Lxt;Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public b(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;->a:Lxt;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/core/api/graphql/DeleteInstrumentRequest;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Lteam/opay/core/api/graphql/DeleteInstrumentRequest;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lxt;->E(Lteam/opay/core/api/graphql/DeleteInstrumentRequest;)Lretrofit2/Call;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v1, Lxs6;

    .line 18
    .line 19
    invoke-direct {v1}, Lxs6;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1, v1}, Lsu;->e(Lxt;Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v0, Lys6;

    .line 27
    .line 28
    invoke-direct {v0}, Lys6;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lteam/opay/core/android/arch/LiveDataCall;->d(Lkotlin/jvm/functions/Function2;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public bridge synthetic c(Lteam/opay/core/api/graphql/OrderFeeRequest;)Landroidx/lifecycle/LiveData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;->o(Lteam/opay/core/api/graphql/OrderFeeRequest;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic d(Lteam/opay/core/api/PaymentInstrumentListRequest;)Landroidx/lifecycle/LiveData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;->q(Lteam/opay/core/api/PaymentInstrumentListRequest;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public f(Lteam/opay/core/api/GraphQL$PaymentInstrumentInput;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/core/api/GraphQL$PaymentInstrumentInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/GraphQL$PaymentInstrumentInput;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "Lteam/opay/core/api/graphql/BindInstrumentRes;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "instrument"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;->a:Lxt;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lxt;->f(Lteam/opay/core/api/GraphQL$PaymentInstrumentInput;)Lretrofit2/Call;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v1, Lus6;

    .line 13
    .line 14
    invoke-direct {v1}, Lus6;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1, v1}, Lsu;->e(Lxt;Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Lvs6;

    .line 22
    .line 23
    invoke-direct {v0}, Lvs6;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lteam/opay/core/android/arch/LiveDataCall;->d(Lkotlin/jvm/functions/Function2;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public o(Lteam/opay/core/api/graphql/OrderFeeRequest;)Lteam/opay/core/android/arch/LiveDataCall;
    .locals 2
    .param p1    # Lteam/opay/core/api/graphql/OrderFeeRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/graphql/OrderFeeRequest;",
            ")",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/core/api/graphql/RestResponse<",
            "Lteam/opay/core/api/graphql/OrderFeeResponse;",
            ">;",
            "Lteam/opay/core/api/graphql/OrderFeeResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;->a:Lxt;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lxt;->c(Lteam/opay/core/api/graphql/OrderFeeRequest;)Lretrofit2/Call;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v1, Lzs6;

    .line 13
    .line 14
    invoke-direct {v1}, Lzs6;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1, v1}, Lsu;->e(Lxt;Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public q(Lteam/opay/core/api/PaymentInstrumentListRequest;)Lteam/opay/core/android/arch/LiveDataCall;
    .locals 2
    .param p1    # Lteam/opay/core/api/PaymentInstrumentListRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/PaymentInstrumentListRequest;",
            ")",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/core/api/graphql/RestResponse<",
            "Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentListResponse;",
            ">;",
            "Lteam/opay/core/api/PaymentInstrumentListResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;->a:Lxt;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lxt;->d(Lteam/opay/core/api/PaymentInstrumentListRequest;)Lretrofit2/Call;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v1, Lts6;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lts6;-><init>(Lteam/opay/core/api/graphql/GraphQlPaymentInstrumentsWebService;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1, v1}, Lsu;->e(Lxt;Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public final v(Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;->get_id()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;->get_displayName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_a

    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;->get_type()Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    const-string p1, "No type for payment instrument"

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;->get_type()Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-object v1, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->COINS:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 43
    .line 44
    if-ne v0, v1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;->getCoinsAccount()Lteam/opay/core/api/GraphQL$CoinsAccount;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    const-string p1, "Null account for coins instrument"

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;->get_type()Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget-object v1, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->CARD:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 60
    .line 61
    if-ne v0, v1, :cond_5

    .line 62
    .line 63
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;->get_skipCvv()Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;->get_cardNumber()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-nez v0, :cond_5

    .line 74
    .line 75
    :cond_4
    const-string p1, "Incomplete information about card"

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_5
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;->get_type()Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget-object v1, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->ACCOUNT:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 83
    .line 84
    if-ne v0, v1, :cond_7

    .line 85
    .line 86
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;->get_bankCode()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;->get_accountNumber()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-nez v0, :cond_7

    .line 97
    .line 98
    :cond_6
    const-string p1, "Incomplete information about bank account"

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_7
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;->get_type()Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    sget-object v1, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->MOBILE_MONEY:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 106
    .line 107
    if-ne v0, v1, :cond_9

    .line 108
    .line 109
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;->get_provider()Lteam/opay/core/api/GraphQL$MobileMoneyProvider;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_8

    .line 114
    .line 115
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GraphQlPaymentInstrument;->get_phoneNumber()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-eqz p1, :cond_8

    .line 120
    .line 121
    invoke-static {p1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_9

    .line 126
    .line 127
    :cond_8
    const-string p1, "Incomplete information about mobile money provider"

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_9
    const/4 p1, 0x0

    .line 131
    goto :goto_2

    .line 132
    :cond_a
    :goto_0
    const-string p1, "No display name for payment instrument"

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_b
    :goto_1
    const-string p1, "No id for payment instrument"

    .line 136
    .line 137
    :goto_2
    if-eqz p1, :cond_d

    .line 138
    .line 139
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 140
    .line 141
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_c

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v0

    .line 166
    :cond_d
    :goto_3
    if-eqz p1, :cond_f

    .line 167
    .line 168
    invoke-static {p1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_e

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_e
    const/4 p1, 0x0

    .line 176
    goto :goto_5

    .line 177
    :cond_f
    :goto_4
    const/4 p1, 0x1

    .line 178
    :goto_5
    return p1
.end method
