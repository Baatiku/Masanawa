.class public final Lteam/opay/business/provider/adServices/AdProviderRepository$a;
.super Lteam/opay/core/http/arch/NetworkBoundAction;
.source "AdProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/provider/adServices/AdProviderRepository;->c(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/http/arch/NetworkBoundAction<",
        "Lteam/opay/business/provider/active/HomeListResponse;",
        "Lteam/opay/business/provider/active/HomeListResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J!\u0010\u0005\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0004\u0012\u00020\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "team/opay/business/provider/adServices/AdProviderRepository$a",
        "Lteam/opay/core/http/arch/NetworkBoundAction;",
        "Lteam/opay/business/provider/active/HomeListResponse;",
        "Lteam/opay/core/http/arch/LiveDataCall;",
        "Lteam/opay/core/http/HttpResponse;",
        "g",
        "()Lteam/opay/core/http/arch/LiveDataCall;",
        "response",
        "i",
        "(Lteam/opay/business/provider/active/HomeListResponse;)Lteam/opay/business/provider/active/HomeListResponse;",
        "business-provider_release"
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
.field public final synthetic c:Lteam/opay/business/provider/adServices/AdProviderRepository;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lteam/opay/business/provider/adServices/AdProviderRepository;Ljava/lang/String;Lteam/opay/core/http/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/provider/adServices/AdProviderRepository$a;->c:Lteam/opay/business/provider/adServices/AdProviderRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/provider/adServices/AdProviderRepository$a;->d:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lteam/opay/core/http/arch/NetworkBoundAction;-><init>(Lteam/opay/core/http/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic f(Lteam/opay/core/http/HttpResponse;)Lteam/opay/business/provider/active/HomeListResponse;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/provider/adServices/AdProviderRepository$a;->h(Lteam/opay/core/http/HttpResponse;)Lteam/opay/business/provider/active/HomeListResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final h(Lteam/opay/core/http/HttpResponse;)Lteam/opay/business/provider/active/HomeListResponse;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/http/HttpResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lteam/opay/business/provider/active/HomeListResponse;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public bridge synthetic d()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/provider/adServices/AdProviderRepository$a;->g()Lteam/opay/core/http/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/business/provider/active/HomeListResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/business/provider/adServices/AdProviderRepository$a;->i(Lteam/opay/business/provider/active/HomeListResponse;)Lteam/opay/business/provider/active/HomeListResponse;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public g()Lteam/opay/core/http/arch/LiveDataCall;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/http/arch/LiveDataCall<",
            "Lteam/opay/core/http/HttpResponse<",
            "Lteam/opay/business/provider/active/HomeListResponse;",
            ">;",
            "Lteam/opay/business/provider/active/HomeListResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/adServices/AdProviderRepository$a;->c:Lteam/opay/business/provider/adServices/AdProviderRepository;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/provider/adServices/AdProviderRepository$a;->d:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lteam/opay/business/provider/adServices/AdProviderRepository;->a(Lteam/opay/business/provider/adServices/AdProviderRepository;Ljava/lang/String;)Lretrofit2/Call;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lwh;

    .line 10
    .line 11
    invoke-direct {v1}, Lwh;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "200"

    .line 15
    .line 16
    invoke-static {v0, v2, v1}, Ly57;->b(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lteam/opay/core/http/arch/LiveDataCall;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public i(Lteam/opay/business/provider/active/HomeListResponse;)Lteam/opay/business/provider/active/HomeListResponse;
    .locals 4

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lw3c;->b:Lw3c;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/business/provider/adServices/AdProviderRepository$a;->d:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {}, Lkt6;->g()Lcom/google/gson/Gson;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "toJson(...)"

    .line 19
    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lw3c;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method
