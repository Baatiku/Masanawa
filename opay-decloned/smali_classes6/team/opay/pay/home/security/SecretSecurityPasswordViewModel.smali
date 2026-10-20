.class public final Lteam/opay/pay/home/security/SecretSecurityPasswordViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SecretSecurityPasswordViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/security/SecretSecurityPasswordViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 ,2\u00020\u00012\u00020\u0002:\u0001-B!\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJE\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00130\u00122\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001f\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0014\u0010\'\u001a\u00020$8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0016\u0010+\u001a\u0004\u0018\u00010(8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*\u00a8\u0006."
    }
    d2 = {
        "Lteam/opay/pay/home/security/SecretSecurityPasswordViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lteam/opay/core/api/e;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/pay/home/security/SecretSecurityPasswordRepository;",
        "secretSecurityPasswordRepository",
        "sessionProvider",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/pay/home/security/SecretSecurityPasswordRepository;Lteam/opay/core/api/e;)V",
        "",
        "phoneNumber",
        "updateOperation",
        "password",
        "Lteam/opay/pay/account/verify/VerifyEvent;",
        "event",
        "",
        "needKickOut",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/pay/home/security/UpdatePasswordResponse;",
        "r",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/VerifyEvent;Z)Landroidx/lifecycle/LiveData;",
        "c",
        "Lteam/opay/pay/home/security/SecretSecurityPasswordRepository;",
        "d",
        "Z",
        "t",
        "()Z",
        "u",
        "(Z)V",
        "loading",
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
        "e",
        "Companion",
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


# static fields
.field public static final e:Lteam/opay/pay/home/security/SecretSecurityPasswordViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final synthetic b:Lteam/opay/core/api/e;

.field public final c:Lteam/opay/pay/home/security/SecretSecurityPasswordRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/security/SecretSecurityPasswordViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/security/SecretSecurityPasswordViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/security/SecretSecurityPasswordViewModel;->e:Lteam/opay/pay/home/security/SecretSecurityPasswordViewModel$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lteam/opay/pay/home/security/SecretSecurityPasswordRepository;Lteam/opay/core/api/e;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/home/security/SecretSecurityPasswordRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "secretSecurityPasswordRepository"

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
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 17
    .line 18
    .line 19
    iput-object p3, p0, Lteam/opay/pay/home/security/SecretSecurityPasswordViewModel;->b:Lteam/opay/core/api/e;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/pay/home/security/SecretSecurityPasswordViewModel;->c:Lteam/opay/pay/home/security/SecretSecurityPasswordRepository;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic s(Lteam/opay/pay/home/security/SecretSecurityPasswordViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/VerifyEvent;ZILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x10

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p5, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v5, p5

    .line 9
    :goto_0
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    move-object v2, p2

    .line 12
    move-object v3, p3

    .line 13
    move-object v4, p4

    .line 14
    invoke-virtual/range {v0 .. v5}, Lteam/opay/pay/home/security/SecretSecurityPasswordViewModel;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/VerifyEvent;Z)Landroidx/lifecycle/LiveData;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method


# virtual methods
.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/SecretSecurityPasswordViewModel;->b:Lteam/opay/core/api/e;

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
    iget-object v0, p0, Lteam/opay/pay/home/security/SecretSecurityPasswordViewModel;->b:Lteam/opay/core/api/e;

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
    iget-object v0, p0, Lteam/opay/pay/home/security/SecretSecurityPasswordViewModel;->b:Lteam/opay/core/api/e;

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

.method public final r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/VerifyEvent;Z)Landroidx/lifecycle/LiveData;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/account/verify/VerifyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/pay/account/verify/VerifyEvent;",
            "Z)",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/home/security/UpdatePasswordResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "phoneNumber"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "updateOperation"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "password"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/pay/home/security/SecretSecurityPasswordViewModel;->c:Lteam/opay/pay/home/security/SecretSecurityPasswordRepository;

    .line 17
    .line 18
    new-instance v9, Lteam/opay/pay/home/security/ChangePasswordRequest;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz p4, :cond_0

    .line 22
    .line 23
    invoke-virtual {p4}, Lteam/opay/pay/account/verify/VerifyEvent;->getRefreshToken()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    move-object v5, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v5, v1

    .line 30
    :goto_0
    if-eqz p4, :cond_1

    .line 31
    .line 32
    invoke-virtual {p4}, Lteam/opay/pay/account/verify/VerifyEvent;->getValChainId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    move-object v6, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move-object v6, v1

    .line 39
    :goto_1
    if-eqz p4, :cond_2

    .line 40
    .line 41
    invoke-virtual {p4}, Lteam/opay/pay/account/verify/VerifyEvent;->getSecurityId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    move-object v7, p4

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move-object v7, v1

    .line 48
    :goto_2
    move-object v1, v9

    .line 49
    move-object v2, p1

    .line 50
    move-object v3, p2

    .line 51
    move-object v4, p3

    .line 52
    move v8, p5

    .line 53
    invoke-direct/range {v1 .. v8}, Lteam/opay/pay/home/security/ChangePasswordRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v9}, Lteam/opay/pay/home/security/SecretSecurityPasswordRepository;->f(Lteam/opay/pay/home/security/ChangePasswordRequest;)Landroidx/lifecycle/LiveData;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/security/SecretSecurityPasswordViewModel;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final u(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/home/security/SecretSecurityPasswordViewModel;->d:Z

    .line 2
    .line 3
    return-void
.end method
