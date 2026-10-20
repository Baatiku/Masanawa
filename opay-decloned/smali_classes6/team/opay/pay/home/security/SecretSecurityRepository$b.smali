.class public final Lteam/opay/pay/home/security/SecretSecurityRepository$b;
.super Lteam/opay/core/android/arch/NetworkBoundAction;
.source "SecretSecurityRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/security/SecretSecurityRepository;->c()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/NetworkBoundAction<",
        "Lteam/opay/pay/home/security/SecretSecurityData;",
        "Lteam/opay/pay/home/security/SecretSecurityData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u001b\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00040\u0003H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "team/opay/pay/home/security/SecretSecurityRepository$b",
        "Lteam/opay/core/android/arch/NetworkBoundAction;",
        "Lteam/opay/pay/home/security/SecretSecurityData;",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/ApiResponse;",
        "d",
        "()Landroidx/lifecycle/LiveData;",
        "response",
        "f",
        "(Lteam/opay/pay/home/security/SecretSecurityData;)Lteam/opay/pay/home/security/SecretSecurityData;",
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
.field public final synthetic c:Lteam/opay/pay/home/security/SecretSecurityRepository;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/security/SecretSecurityRepository;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/security/SecretSecurityRepository$b;->c:Lteam/opay/pay/home/security/SecretSecurityRepository;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lteam/opay/core/android/arch/NetworkBoundAction;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public d()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "Lteam/opay/pay/home/security/SecretSecurityData;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/SecretSecurityRepository$b;->c:Lteam/opay/pay/home/security/SecretSecurityRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/home/security/SecretSecurityRepository;->a(Lteam/opay/pay/home/security/SecretSecurityRepository;)Ln8d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ln8d;->e()Lteam/opay/core/android/arch/LiveDataCall;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/home/security/SecretSecurityData;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/security/SecretSecurityRepository$b;->f(Lteam/opay/pay/home/security/SecretSecurityData;)Lteam/opay/pay/home/security/SecretSecurityData;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public f(Lteam/opay/pay/home/security/SecretSecurityData;)Lteam/opay/pay/home/security/SecretSecurityData;
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
