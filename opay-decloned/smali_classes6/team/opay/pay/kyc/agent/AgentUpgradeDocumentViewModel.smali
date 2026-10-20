.class public final Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;
.super Lteam/opay/pay/android/arch/BaseViewModel;
.source "AgentUpgradeDocumentViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B)\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ!\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u000e2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J!\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u000f0\u000e2\u0006\u0010\u0013\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0015\u0010\u0012J!\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u000f0\u000e2\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0017\u0010\r\u001a\u00020\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R$\u0010*\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R$\u0010.\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010%\u001a\u0004\u0008,\u0010\'\"\u0004\u0008-\u0010)R$\u00102\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u0010%\u001a\u0004\u00080\u0010\'\"\u0004\u00081\u0010)R\u001d\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u000f0\u000e8F\u00a2\u0006\u0006\u001a\u0004\u00083\u00104R\u0014\u00108\u001a\u0002058\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u00086\u00107R\u0014\u0010<\u001a\u0002098\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010;R\u0016\u0010@\u001a\u0004\u0018\u00010=8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010?\u00a8\u0006A"
    }
    d2 = {
        "Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;",
        "Lteam/opay/pay/android/arch/BaseViewModel;",
        "Lteam/opay/core/api/e;",
        "Lteam/opay/core/account/AccountRepository;",
        "accountRepository",
        "Lteam/opay/pay/kyc/bvn/BvnRepository;",
        "bvnRepository",
        "sessionProvider",
        "Lteam/opay/core/api/Features;",
        "features",
        "<init>",
        "(Lteam/opay/core/account/AccountRepository;Lteam/opay/pay/kyc/bvn/BvnRepository;Lteam/opay/core/api/e;Lteam/opay/core/api/Features;)V",
        "",
        "bvn",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/api/GraphQL$BvnInfo;",
        "w",
        "(Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "otp",
        "",
        "B",
        "Lteam/opay/core/account/AccountProfile;",
        "accountProfile",
        "",
        "A",
        "(Lteam/opay/core/account/AccountProfile;)Landroidx/lifecycle/LiveData;",
        "c",
        "Lteam/opay/core/account/AccountRepository;",
        "d",
        "Lteam/opay/pay/kyc/bvn/BvnRepository;",
        "Lteam/opay/pay/android/validation/FieldValidation;",
        "e",
        "Lteam/opay/pay/android/validation/FieldValidation;",
        "s",
        "()Lteam/opay/pay/android/validation/FieldValidation;",
        "f",
        "Ljava/lang/String;",
        "t",
        "()Ljava/lang/String;",
        "x",
        "(Ljava/lang/String;)V",
        "userIdentificationEncoded",
        "g",
        "v",
        "z",
        "userUtilityBillEncoded",
        "h",
        "u",
        "y",
        "userPhotoEncoded",
        "r",
        "()Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/api/Country;",
        "o",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "p",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "m",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
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
.field public final synthetic b:Lteam/opay/core/api/e;

.field public final c:Lteam/opay/core/account/AccountRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/pay/kyc/bvn/BvnRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lteam/opay/pay/android/validation/FieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/account/AccountRepository;Lteam/opay/pay/kyc/bvn/BvnRepository;Lteam/opay/core/api/e;Lteam/opay/core/api/Features;)V
    .locals 7
    .param p1    # Lteam/opay/core/account/AccountRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/bvn/BvnRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/core/api/Features;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "accountRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bvnRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "sessionProvider"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "features"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p4}, Lteam/opay/pay/android/arch/BaseViewModel;-><init>(Lteam/opay/core/api/Features;)V

    .line 22
    .line 23
    .line 24
    iput-object p3, p0, Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;->b:Lteam/opay/core/api/e;

    .line 25
    .line 26
    iput-object p1, p0, Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;->c:Lteam/opay/core/account/AccountRepository;

    .line 27
    .line 28
    iput-object p2, p0, Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;->d:Lteam/opay/pay/kyc/bvn/BvnRepository;

    .line 29
    .line 30
    new-instance p1, Lteam/opay/pay/android/validation/FieldValidation;

    .line 31
    .line 32
    invoke-static {}, Lm7e;->V()Lkotlin/jvm/functions/Function1;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/4 v5, 0x4

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v2, 0x1

    .line 39
    const/4 v4, 0x0

    .line 40
    move-object v1, p1

    .line 41
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;->e:Lteam/opay/pay/android/validation/FieldValidation;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final A(Lteam/opay/core/account/AccountProfile;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/core/account/AccountProfile;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/account/AccountProfile;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "accountProfile"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;->c:Lteam/opay/core/account/AccountRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/core/account/AccountRepository;->u(Lteam/opay/core/account/AccountProfile;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final B(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "otp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;->d:Lteam/opay/pay/kyc/bvn/BvnRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/bvn/BvnRepository;->g(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;->b:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public o()Lteam/opay/core/api/Country;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;->b:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->o()Lteam/opay/core/api/Country;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public p()Lteam/opay/core/api/GraphQL$Currency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;->b:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final r()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/account/AccountProfile;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;->c:Lteam/opay/core/account/AccountRepository;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lteam/opay/core/account/AccountRepository;->o(Z)Landroidx/lifecycle/LiveData;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public final s()Lteam/opay/pay/android/validation/FieldValidation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;->e:Lteam/opay/pay/android/validation/FieldValidation;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/GraphQL$BvnInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "bvn"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;->d:Lteam/opay/pay/kyc/bvn/BvnRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/bvn/BvnRepository;->f(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final x(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/agent/AgentUpgradeDocumentViewModel;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
