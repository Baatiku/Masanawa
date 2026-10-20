.class public final Lteam/opay/core/auth/AuthRepository$a;
.super Lteam/opay/core/android/arch/NetworkBoundAction;
.source "AuthRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/auth/AuthRepository;->b(Lteam/opay/core/api/graphql/RegisterRequest;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/NetworkBoundAction<",
        "Lteam/opay/core/api/graphql/RegisterV3Response;",
        "Lteam/opay/core/api/graphql/RegisterV3Response;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\u0008\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0007\u0012\u0004\u0012\u00020\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "team/opay/core/auth/AuthRepository$a",
        "Lteam/opay/core/android/arch/NetworkBoundAction;",
        "Lteam/opay/core/api/graphql/RegisterV3Response;",
        "response",
        "i",
        "(Lteam/opay/core/api/graphql/RegisterV3Response;)Lteam/opay/core/api/graphql/RegisterV3Response;",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/core/api/graphql/RestResponse;",
        "g",
        "()Lteam/opay/core/android/arch/LiveDataCall;",
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
.field public final synthetic c:Lteam/opay/core/auth/AuthRepository;

.field public final synthetic d:Lteam/opay/core/api/graphql/RegisterRequest;


# direct methods
.method public constructor <init>(Lteam/opay/core/auth/AuthRepository;Lteam/opay/core/api/graphql/RegisterRequest;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/auth/AuthRepository$a;->c:Lteam/opay/core/auth/AuthRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/auth/AuthRepository$a;->d:Lteam/opay/core/api/graphql/RegisterRequest;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lteam/opay/core/android/arch/NetworkBoundAction;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic f(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/RegisterV3Response;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/auth/AuthRepository$a;->h(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/RegisterV3Response;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final h(Lteam/opay/core/api/graphql/RestResponse;)Lteam/opay/core/api/graphql/RegisterV3Response;
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
    check-cast p0, Lteam/opay/core/api/graphql/RegisterV3Response;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public bridge synthetic d()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/auth/AuthRepository$a;->g()Lteam/opay/core/android/arch/LiveDataCall;

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
    check-cast p1, Lteam/opay/core/api/graphql/RegisterV3Response;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/core/auth/AuthRepository$a;->i(Lteam/opay/core/api/graphql/RegisterV3Response;)Lteam/opay/core/api/graphql/RegisterV3Response;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public g()Lteam/opay/core/android/arch/LiveDataCall;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/core/api/graphql/RestResponse<",
            "Lteam/opay/core/api/graphql/RegisterV3Response;",
            ">;",
            "Lteam/opay/core/api/graphql/RegisterV3Response;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/auth/AuthRepository$a;->c:Lteam/opay/core/auth/AuthRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/core/auth/AuthRepository;->a(Lteam/opay/core/auth/AuthRepository;)Lxt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/core/auth/AuthRepository$a;->c:Lteam/opay/core/auth/AuthRepository;

    .line 8
    .line 9
    invoke-static {v1}, Lteam/opay/core/auth/AuthRepository;->a(Lteam/opay/core/auth/AuthRepository;)Lxt;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lteam/opay/core/auth/AuthRepository$a;->d:Lteam/opay/core/api/graphql/RegisterRequest;

    .line 14
    .line 15
    invoke-interface {v1, v2}, Lxt;->Y(Lteam/opay/core/api/graphql/RegisterRequest;)Lretrofit2/Call;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lo70;

    .line 20
    .line 21
    invoke-direct {v2}, Lo70;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lsu;->e(Lxt;Lretrofit2/Call;Lkotlin/jvm/functions/Function1;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public i(Lteam/opay/core/api/graphql/RegisterV3Response;)Lteam/opay/core/api/graphql/RegisterV3Response;
    .locals 1

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
