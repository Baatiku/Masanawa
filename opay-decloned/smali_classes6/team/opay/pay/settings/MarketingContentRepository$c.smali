.class public final Lteam/opay/pay/settings/MarketingContentRepository$c;
.super Lteam/opay/core/android/arch/NetworkBoundAction;
.source "MarketingContentRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/settings/MarketingContentRepository;->h(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/NetworkBoundAction<",
        "Lteam/opay/pay/api/UserInfoListByBVNBank;",
        "Lteam/opay/pay/api/UserInfoListByBVNBank;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J#\u0010\u0008\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0007\u0012\u0004\u0012\u00020\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "team/opay/pay/settings/MarketingContentRepository$c",
        "Lteam/opay/core/android/arch/NetworkBoundAction;",
        "Lteam/opay/pay/api/UserInfoListByBVNBank;",
        "response",
        "i",
        "(Lteam/opay/pay/api/UserInfoListByBVNBank;)Lteam/opay/pay/api/UserInfoListByBVNBank;",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/pay/api/HttpResponse;",
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
.field public final synthetic c:Lteam/opay/pay/settings/MarketingContentRepository;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lteam/opay/pay/settings/MarketingContentRepository;Ljava/lang/String;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/settings/MarketingContentRepository$c;->c:Lteam/opay/pay/settings/MarketingContentRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/settings/MarketingContentRepository$c;->d:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lteam/opay/core/android/arch/NetworkBoundAction;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic f(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/api/UserInfoListByBVNBank;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/MarketingContentRepository$c;->h(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/api/UserInfoListByBVNBank;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final h(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/api/UserInfoListByBVNBank;
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
    check-cast p0, Lteam/opay/pay/api/UserInfoListByBVNBank;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public bridge synthetic d()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/MarketingContentRepository$c;->g()Lteam/opay/core/android/arch/LiveDataCall;

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
    check-cast p1, Lteam/opay/pay/api/UserInfoListByBVNBank;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/settings/MarketingContentRepository$c;->i(Lteam/opay/pay/api/UserInfoListByBVNBank;)Lteam/opay/pay/api/UserInfoListByBVNBank;

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
            "Lteam/opay/pay/api/UserInfoListByBVNBank;",
            ">;",
            "Lteam/opay/pay/api/UserInfoListByBVNBank;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/MarketingContentRepository$c;->c:Lteam/opay/pay/settings/MarketingContentRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/settings/MarketingContentRepository;->e(Lteam/opay/pay/settings/MarketingContentRepository;)Lfv;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lteam/opay/pay/api/UserMobileRequest;

    .line 8
    .line 9
    iget-object v2, p0, Lteam/opay/pay/settings/MarketingContentRepository$c;->d:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lteam/opay/pay/api/UserMobileRequest;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lfv;->G(Lteam/opay/pay/api/UserMobileRequest;)Lretrofit2/Call;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lus8;

    .line 19
    .line 20
    invoke-direct {v1}, Lus8;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static {v0, v3, v1, v2, v3}, Lyv;->c(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public i(Lteam/opay/pay/api/UserInfoListByBVNBank;)Lteam/opay/pay/api/UserInfoListByBVNBank;
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
