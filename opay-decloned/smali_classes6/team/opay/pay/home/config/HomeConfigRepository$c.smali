.class public final Lteam/opay/pay/home/config/HomeConfigRepository$c;
.super Lteam/opay/core/android/arch/NetworkBoundResource;
.source "HomeConfigRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/config/HomeConfigRepository;->r(Lteam/opay/pay/wallet/addmoney/bean/CommonPayReq;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/NetworkBoundResource<",
        "Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;",
        "Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u001b\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00040\u0003H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "team/opay/pay/home/config/HomeConfigRepository$c",
        "Lteam/opay/core/android/arch/NetworkBoundResource;",
        "Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/ApiResponse;",
        "l",
        "()Landroidx/lifecycle/LiveData;",
        "u",
        "item",
        "",
        "E",
        "(Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;)V",
        "data",
        "",
        "F",
        "(Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;)Z",
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
.field public final synthetic c:Lteam/opay/pay/home/config/HomeConfigRepository;

.field public final synthetic d:Lteam/opay/pay/wallet/addmoney/bean/CommonPayReq;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/config/HomeConfigRepository;Lteam/opay/pay/wallet/addmoney/bean/CommonPayReq;Ljava/lang/String;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/config/HomeConfigRepository$c;->c:Lteam/opay/pay/home/config/HomeConfigRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/config/HomeConfigRepository$c;->d:Lteam/opay/pay/wallet/addmoney/bean/CommonPayReq;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/home/config/HomeConfigRepository$c;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0, p4}, Lteam/opay/core/android/arch/NetworkBoundResource;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic C(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/config/HomeConfigRepository$c;->D(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final D(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;
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
    check-cast p0, Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public bridge synthetic B(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/config/HomeConfigRepository$c;->F(Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public E(Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;)V
    .locals 2

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/home/config/HomeConfigRepository$c;->e:Ljava/lang/String;

    .line 7
    .line 8
    const-string/jumbo v1, "withdraw_root"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lteam/opay/pay/home/config/HomeConfigRepository$c;->c:Lteam/opay/pay/home/config/HomeConfigRepository;

    .line 18
    .line 19
    const-string v1, "WithDrawDefaultLocalData"

    .line 20
    .line 21
    invoke-virtual {v0, p1, v1}, Lteam/opay/pay/home/config/HomeConfigRepository;->p(Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/home/config/HomeConfigRepository$c;->c:Lteam/opay/pay/home/config/HomeConfigRepository;

    .line 26
    .line 27
    const-string v1, "WithDrawDefaultLocalData_by_agent"

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Lteam/opay/pay/home/config/HomeConfigRepository;->p(Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public F(Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public l()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/config/HomeConfigRepository$c;->c:Lteam/opay/pay/home/config/HomeConfigRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/home/config/HomeConfigRepository;->h(Lteam/opay/pay/home/config/HomeConfigRepository;)Lfv;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/pay/home/config/HomeConfigRepository$c;->d:Lteam/opay/pay/wallet/addmoney/bean/CommonPayReq;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lfv;->F1(Lteam/opay/pay/wallet/addmoney/bean/CommonPayReq;)Lretrofit2/Call;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Llz6;

    .line 14
    .line 15
    invoke-direct {v1}, Llz6;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "200"

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Lyv;->b(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public u()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/config/HomeConfigRepository$c;->e:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "withdraw_root"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lteam/opay/pay/home/config/HomeConfigRepository$c;->c:Lteam/opay/pay/home/config/HomeConfigRepository;

    .line 13
    .line 14
    const-string v1, "WithDrawDefaultLocalData"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/config/HomeConfigRepository;->l(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/home/config/HomeConfigRepository$c;->c:Lteam/opay/pay/home/config/HomeConfigRepository;

    .line 22
    .line 23
    const-string v1, "WithDrawDefaultLocalData_by_agent"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/config/HomeConfigRepository;->l(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    return-object v0
.end method

.method public bridge synthetic z(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/config/HomeConfigRepository$c;->E(Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
