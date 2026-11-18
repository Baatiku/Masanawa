.class public final Lcom/opay/team/newhome/reward/RewardsRepository$a;
.super Lteam/opay/core/android/arch/NetworkBoundAction;
.source "RewardsRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/reward/RewardsRepository;->f(Lcom/opay/team/newhome/reward/RewardsTaskReq;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/NetworkBoundAction<",
        "Lcom/opay/team/newhome/reward/RewardsTaskRsp;",
        "Lcom/opay/team/newhome/reward/RewardsTaskRsp;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J!\u0010\u0005\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0004\u0012\u00020\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "com/opay/team/newhome/reward/RewardsRepository$a",
        "Lteam/opay/core/android/arch/NetworkBoundAction;",
        "Lcom/opay/team/newhome/reward/RewardsTaskRsp;",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/pay/api/HttpResponse;",
        "g",
        "()Lteam/opay/core/android/arch/LiveDataCall;",
        "response",
        "i",
        "(Lcom/opay/team/newhome/reward/RewardsTaskRsp;)Lcom/opay/team/newhome/reward/RewardsTaskRsp;",
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
.field public final synthetic c:Lcom/opay/team/newhome/reward/RewardsRepository;

.field public final synthetic d:Lcom/opay/team/newhome/reward/RewardsTaskReq;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/reward/RewardsRepository;Lcom/opay/team/newhome/reward/RewardsTaskReq;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsRepository$a;->c:Lcom/opay/team/newhome/reward/RewardsRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/reward/RewardsRepository$a;->d:Lcom/opay/team/newhome/reward/RewardsTaskReq;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lteam/opay/core/android/arch/NetworkBoundAction;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic f(Lteam/opay/pay/api/HttpResponse;)Lcom/opay/team/newhome/reward/RewardsTaskRsp;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/reward/RewardsRepository$a;->h(Lteam/opay/pay/api/HttpResponse;)Lcom/opay/team/newhome/reward/RewardsTaskRsp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final h(Lteam/opay/pay/api/HttpResponse;)Lcom/opay/team/newhome/reward/RewardsTaskRsp;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/api/HttpResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/opay/team/newhome/reward/RewardsTaskRsp;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public bridge synthetic d()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsRepository$a;->g()Lteam/opay/core/android/arch/LiveDataCall;

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
    check-cast p1, Lcom/opay/team/newhome/reward/RewardsTaskRsp;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/reward/RewardsRepository$a;->i(Lcom/opay/team/newhome/reward/RewardsTaskRsp;)Lcom/opay/team/newhome/reward/RewardsTaskRsp;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public g()Lteam/opay/core/android/arch/LiveDataCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Lcom/opay/team/newhome/reward/RewardsTaskRsp;",
            ">;",
            "Lcom/opay/team/newhome/reward/RewardsTaskRsp;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsRepository$a;->c:Lcom/opay/team/newhome/reward/RewardsRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/opay/team/newhome/reward/RewardsRepository;->e(Lcom/opay/team/newhome/reward/RewardsRepository;)Lusc;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/opay/team/newhome/reward/RewardsRepository$a;->d:Lcom/opay/team/newhome/reward/RewardsTaskReq;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lusc;->e(Lcom/opay/team/newhome/reward/RewardsTaskReq;)Lretrofit2/Call;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lhxc;

    .line 14
    .line 15
    invoke-direct {v1}, Lhxc;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v0, v3, v1, v2, v3}, Lyv;->c(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public i(Lcom/opay/team/newhome/reward/RewardsTaskRsp;)Lcom/opay/team/newhome/reward/RewardsTaskRsp;
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
