.class public final Lteam/opay/core/account/AccountRepository$g;
.super Lteam/opay/core/android/arch/NetworkBoundAction;
.source "AccountRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/account/AccountRepository;->u(Lteam/opay/core/account/AccountProfile;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/NetworkBoundAction<",
        "Lkotlin/Unit;",
        "Lteam/opay/core/account/AccountProfile;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001b\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00050\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "team/opay/core/account/AccountRepository$g",
        "Lteam/opay/core/android/arch/NetworkBoundAction;",
        "",
        "Lteam/opay/core/account/AccountProfile;",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/ApiResponse;",
        "d",
        "()Landroidx/lifecycle/LiveData;",
        "response",
        "f",
        "(Lteam/opay/core/account/AccountProfile;)V",
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
.field public final synthetic c:Lteam/opay/core/account/AccountRepository;

.field public final synthetic d:Lteam/opay/core/account/AccountProfile;


# direct methods
.method public constructor <init>(Lteam/opay/core/account/AccountRepository;Lteam/opay/core/account/AccountProfile;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/account/AccountRepository$g;->c:Lteam/opay/core/account/AccountRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/account/AccountRepository$g;->d:Lteam/opay/core/account/AccountProfile;

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
            "Lteam/opay/core/account/AccountProfile;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/account/AccountRepository$g;->c:Lteam/opay/core/account/AccountRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/core/account/AccountRepository;->f(Lteam/opay/core/account/AccountRepository;)Lfd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/core/account/AccountRepository$g;->d:Lteam/opay/core/account/AccountProfile;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lfd;->i(Lteam/opay/core/account/AccountProfile;)Landroidx/lifecycle/LiveData;

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
    check-cast p1, Lteam/opay/core/account/AccountProfile;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/core/account/AccountRepository$g;->f(Lteam/opay/core/account/AccountProfile;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method

.method public f(Lteam/opay/core/account/AccountProfile;)V
    .locals 1

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/account/AccountRepository$g;->c:Lteam/opay/core/account/AccountRepository;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lteam/opay/core/account/AccountRepository;->l(Lteam/opay/core/account/AccountRepository;Lteam/opay/core/account/AccountProfile;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
