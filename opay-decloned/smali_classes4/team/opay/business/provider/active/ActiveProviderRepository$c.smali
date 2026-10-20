.class public final Lteam/opay/business/provider/active/ActiveProviderRepository$c;
.super Lteam/opay/core/http/arch/NetworkBoundAction;
.source "ActiveProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/provider/active/ActiveProviderRepository;->e(Lteam/opay/business/provider/active/NoticeRequest;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/http/arch/NetworkBoundAction<",
        "Ljava/util/List<",
        "+",
        "Lteam/opay/business/provider/active/NoticeEntity;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lteam/opay/business/provider/active/NoticeEntity;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u001e\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001J1\u0010\u0006\u001a$\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\'\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\u000e\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "team/opay/business/provider/active/ActiveProviderRepository$c",
        "Lteam/opay/core/http/arch/NetworkBoundAction;",
        "",
        "Lteam/opay/business/provider/active/NoticeEntity;",
        "Lteam/opay/core/http/arch/LiveDataCall;",
        "Lteam/opay/core/http/HttpResponse;",
        "g",
        "()Lteam/opay/core/http/arch/LiveDataCall;",
        "response",
        "i",
        "(Ljava/util/List;)Ljava/util/List;",
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
.field public final synthetic c:Lteam/opay/business/provider/active/ActiveProviderRepository;

.field public final synthetic d:Lteam/opay/business/provider/active/NoticeRequest;


# direct methods
.method public constructor <init>(Lteam/opay/business/provider/active/ActiveProviderRepository;Lteam/opay/business/provider/active/NoticeRequest;Lteam/opay/core/http/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/provider/active/ActiveProviderRepository$c;->c:Lteam/opay/business/provider/active/ActiveProviderRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/provider/active/ActiveProviderRepository$c;->d:Lteam/opay/business/provider/active/NoticeRequest;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lteam/opay/core/http/arch/NetworkBoundAction;-><init>(Lteam/opay/core/http/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic f(Lteam/opay/core/http/HttpResponse;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/provider/active/ActiveProviderRepository$c;->h(Lteam/opay/core/http/HttpResponse;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final h(Lteam/opay/core/http/HttpResponse;)Ljava/util/List;
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
    check-cast p0, Ljava/util/List;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public bridge synthetic d()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/provider/active/ActiveProviderRepository$c;->g()Lteam/opay/core/http/arch/LiveDataCall;

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
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/business/provider/active/ActiveProviderRepository$c;->i(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public g()Lteam/opay/core/http/arch/LiveDataCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/http/arch/LiveDataCall<",
            "Lteam/opay/core/http/HttpResponse<",
            "Ljava/util/List<",
            "Lteam/opay/business/provider/active/NoticeEntity;",
            ">;>;",
            "Ljava/util/List<",
            "Lteam/opay/business/provider/active/NoticeEntity;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/ActiveProviderRepository$c;->c:Lteam/opay/business/provider/active/ActiveProviderRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/business/provider/active/ActiveProviderRepository;->a(Lteam/opay/business/provider/active/ActiveProviderRepository;)Luv;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/business/provider/active/ActiveProviderRepository$c;->d:Lteam/opay/business/provider/active/NoticeRequest;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Luv;->h(Lteam/opay/business/provider/active/NoticeRequest;)Lretrofit2/Call;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lae;

    .line 14
    .line 15
    invoke-direct {v1}, Lae;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v0, v3, v1, v2, v3}, Ly57;->c(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/core/http/arch/LiveDataCall;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public i(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/business/provider/active/NoticeEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lteam/opay/business/provider/active/NoticeEntity;",
            ">;"
        }
    .end annotation

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
