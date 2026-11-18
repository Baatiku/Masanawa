.class public final Lteam/opay/pay/bank/BankRepository$c;
.super Lteam/opay/core/android/arch/NetworkBoundAction;
.source "BankRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/bank/BankRepository;->l(Lteam/opay/core/api/Country;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/NetworkBoundAction<",
        "Ljava/util/List<",
        "+",
        "Lteam/opay/pay/bank/Bank;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lteam/opay/pay/bank/Bank;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\"\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u0001J!\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00060\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J+\u0010\n\u001a\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00042\u0010\u0010\t\u001a\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "team/opay/pay/bank/BankRepository$c",
        "Lteam/opay/core/android/arch/NetworkBoundAction;",
        "",
        "Lteam/opay/pay/bank/Bank;",
        "Lteam/opay/pay/bank/BankList;",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/ApiResponse;",
        "d",
        "()Landroidx/lifecycle/LiveData;",
        "response",
        "f",
        "(Ljava/util/List;)Ljava/util/List;",
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
.field public final synthetic c:Lteam/opay/pay/bank/BankRepository;

.field public final synthetic d:Lteam/opay/core/api/Country;


# direct methods
.method public constructor <init>(Lteam/opay/pay/bank/BankRepository;Lteam/opay/core/api/Country;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/bank/BankRepository$c;->c:Lteam/opay/pay/bank/BankRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/bank/BankRepository$c;->d:Lteam/opay/core/api/Country;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lteam/opay/core/android/arch/NetworkBoundAction;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public d()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/Bank;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/bank/BankRepository$c;->c:Lteam/opay/pay/bank/BankRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/bank/BankRepository;->e(Lteam/opay/pay/bank/BankRepository;)Lxl0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/pay/bank/BankRepository$c;->d:Lteam/opay/core/api/Country;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lxl0;->b(Lteam/opay/core/api/Country;)Landroidx/lifecycle/LiveData;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/bank/BankRepository$c;->f(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public f(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/Bank;",
            ">;)",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/Bank;",
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
