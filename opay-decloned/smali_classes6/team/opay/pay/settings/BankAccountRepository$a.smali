.class public final Lteam/opay/pay/settings/BankAccountRepository$a;
.super Lteam/opay/core/android/arch/NetworkBoundResource;
.source "BankAccountRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/settings/BankAccountRepository;->m(Lteam/opay/core/api/Country;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/NetworkBoundResource<",
        "Ljava/util/List<",
        "+",
        "Lteam/opay/pay/bank/BankAccount;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lteam/opay/pay/bank/BankAccount;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000?\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\"\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u0001J!\u0010\u0007\u001a\u00020\u00062\u0010\u0010\u0005\u001a\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J%\u0010\u000b\u001a\u00020\n2\u0014\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\u0004\u0018\u0001`\u0004H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001b\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\rH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\'\u0010\u0013\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0010H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "team/opay/pay/settings/BankAccountRepository$a",
        "Lteam/opay/core/android/arch/NetworkBoundResource;",
        "",
        "Lteam/opay/pay/bank/BankAccount;",
        "Lteam/opay/pay/settings/BankAccountList;",
        "item",
        "",
        "F",
        "(Ljava/util/List;)V",
        "data",
        "",
        "G",
        "(Ljava/util/List;)Z",
        "Landroidx/lifecycle/LiveData;",
        "u",
        "()Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/pay/api/HttpResponse;",
        "Lteam/opay/pay/bank/BankResponse;",
        "D",
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
.field public final synthetic c:Lteam/opay/pay/settings/BankAccountRepository;

.field public final synthetic d:Lteam/opay/core/api/Country;


# direct methods
.method public constructor <init>(Lteam/opay/pay/settings/BankAccountRepository;Lteam/opay/core/api/Country;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/settings/BankAccountRepository$a;->c:Lteam/opay/pay/settings/BankAccountRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/settings/BankAccountRepository$a;->d:Lteam/opay/core/api/Country;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lteam/opay/core/android/arch/NetworkBoundResource;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic C(Lteam/opay/pay/settings/BankAccountRepository;Lteam/opay/core/api/Country;Lteam/opay/pay/api/HttpResponse;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/settings/BankAccountRepository$a;->E(Lteam/opay/pay/settings/BankAccountRepository;Lteam/opay/core/api/Country;Lteam/opay/pay/api/HttpResponse;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final E(Lteam/opay/pay/settings/BankAccountRepository;Lteam/opay/core/api/Country;Lteam/opay/pay/api/HttpResponse;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lteam/opay/pay/api/HttpResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Lteam/opay/pay/bank/BankResponse;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Lteam/opay/pay/bank/BankResponse;->a()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p2, 0x0

    .line 20
    :goto_0
    invoke-static {p0, p1, p2}, Lteam/opay/pay/settings/BankAccountRepository;->g(Lteam/opay/pay/settings/BankAccountRepository;Lteam/opay/core/api/Country;Ljava/util/List;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method


# virtual methods
.method public bridge synthetic B(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/settings/BankAccountRepository$a;->G(Ljava/util/List;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public D()Lteam/opay/core/android/arch/LiveDataCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Lteam/opay/pay/bank/BankResponse;",
            ">;",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/BankAccount;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/BankAccountRepository$a;->c:Lteam/opay/pay/settings/BankAccountRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/settings/BankAccountRepository;->h(Lteam/opay/pay/settings/BankAccountRepository;)Lfv;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lteam/opay/pay/bank/BankRequest;

    .line 8
    .line 9
    iget-object v2, p0, Lteam/opay/pay/settings/BankAccountRepository$a;->d:Lteam/opay/core/api/Country;

    .line 10
    .line 11
    invoke-virtual {v2}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "ACCOUNT"

    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Lteam/opay/pay/bank/BankRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Lfv;->i(Lteam/opay/pay/bank/BankRequest;)Lretrofit2/Call;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lteam/opay/pay/settings/BankAccountRepository$a;->c:Lteam/opay/pay/settings/BankAccountRepository;

    .line 25
    .line 26
    iget-object v2, p0, Lteam/opay/pay/settings/BankAccountRepository$a;->d:Lteam/opay/core/api/Country;

    .line 27
    .line 28
    new-instance v3, Lxh0;

    .line 29
    .line 30
    invoke-direct {v3, v1, v2}, Lxh0;-><init>(Lteam/opay/pay/settings/BankAccountRepository;Lteam/opay/core/api/Country;)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-static {v0, v2, v3, v1, v2}, Lyv;->c(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public F(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/BankAccount;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/settings/BankAccountRepository$a;->c:Lteam/opay/pay/settings/BankAccountRepository;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lteam/opay/pay/settings/BankAccountRepository;->k(Lteam/opay/pay/settings/BankAccountRepository;Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public G(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/BankAccount;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lteam/opay/pay/settings/BankAccountRepository$a;->c:Lteam/opay/pay/settings/BankAccountRepository;

    .line 2
    .line 3
    invoke-static {p1}, Lteam/opay/pay/settings/BankAccountRepository;->i(Lteam/opay/pay/settings/BankAccountRepository;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic l()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/BankAccountRepository$a;->D()Lteam/opay/core/android/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public u()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/BankAccount;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/BankAccountRepository$a;->c:Lteam/opay/pay/settings/BankAccountRepository;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/settings/BankAccountRepository$a;->d:Lteam/opay/core/api/Country;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lteam/opay/pay/settings/BankAccountRepository;->j(Lteam/opay/pay/settings/BankAccountRepository;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public bridge synthetic z(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/settings/BankAccountRepository$a;->F(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
