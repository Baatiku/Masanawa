.class public final Lteam/opay/pay/transfer/contact/TransferContactRepository$h;
.super Lteam/opay/core/android/arch/SingleNetworkBoundResource;
.source "TransferContactRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/TransferContactRepository;->u(Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/SingleNetworkBoundResource<",
        "Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001b\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000e0\u000bH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "team/opay/pay/transfer/contact/TransferContactRepository$h",
        "Lteam/opay/core/android/arch/SingleNetworkBoundResource;",
        "Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;",
        "item",
        "",
        "H",
        "(Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)V",
        "data",
        "",
        "J",
        "(Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)Z",
        "Landroidx/lifecycle/LiveData;",
        "t",
        "()Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/ApiResponse;",
        "m",
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
.field public final synthetic e:Lteam/opay/pay/transfer/contact/TransferContactRepository;

.field public final synthetic f:Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository$h;->e:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository$h;->f:Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/TransferContactRepository$h;->E(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/transfer/contact/TransferContactRepository;)Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/TransferContactRepository$h;->G(Lteam/opay/pay/transfer/contact/TransferContactRepository;)Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/TransferContactRepository$h;->I(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Landroidx/lifecycle/MutableLiveData;Lteam/opay/pay/transfer/contact/TransferContactRepository;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/TransferContactRepository$h;->F(Landroidx/lifecycle/MutableLiveData;Lteam/opay/pay/transfer/contact/TransferContactRepository;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final E(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;
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
    check-cast p0, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final F(Landroidx/lifecycle/MutableLiveData;Lteam/opay/pay/transfer/contact/TransferContactRepository;)V
    .locals 2

    .line 1
    sget-object v0, Lqy;->a:Lqy;

    .line 2
    .line 3
    new-instance v1, Ls4f;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ls4f;-><init>(Lteam/opay/pay/transfer/contact/TransferContactRepository;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lqy;->b(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    new-instance p1, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {p1, v1, v1, v1, v0}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;-><init>(Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static final G(Lteam/opay/pay/transfer/contact/TransferContactRepository;)Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;
    .locals 1

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->h(Lteam/opay/pay/transfer/contact/TransferContactRepository;)Lteam/opay/pay/transfer/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p0, v0}, Lteam/opay/pay/transfer/a;->a(Ljava/lang/String;)Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    :cond_1
    return-object p0
.end method

.method public static final I(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->h(Lteam/opay/pay/transfer/contact/TransferContactRepository;)Lteam/opay/pay/transfer/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->e(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, p1}, Lteam/opay/pay/transfer/a;->c(Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method


# virtual methods
.method public H(Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)V
    .locals 3

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lqy;->a:Lqy;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository$h;->e:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 9
    .line 10
    new-instance v2, Lr4f;

    .line 11
    .line 12
    invoke-direct {v2, v1, p1}, Lr4f;-><init>(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lqy;->c(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public J(Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public m()Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository$h;->e:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->i(Lteam/opay/pay/transfer/contact/TransferContactRepository;)Lfv;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository$h;->f:Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lfv;->c1(Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;)Lretrofit2/Call;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lt4f;

    .line 14
    .line 15
    invoke-direct {v1}, Lt4f;-><init>()V

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

.method public t()Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->r()Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository$h;->e:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 15
    .line 16
    new-instance v3, Lq4f;

    .line 17
    .line 18
    invoke-direct {v3, v0, v2}, Lq4f;-><init>(Landroidx/lifecycle/MutableLiveData;Lteam/opay/pay/transfer/contact/TransferContactRepository;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public bridge synthetic x(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/transfer/contact/TransferContactRepository$h;->H(Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic z(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/transfer/contact/TransferContactRepository$h;->J(Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
