.class public final Lteam/opay/pay/email/VerifyEmailViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "VerifyEmailViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\r0\u000c2\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\"\u0010$\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R$\u0010,\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+\u00a8\u0006-"
    }
    d2 = {
        "Lteam/opay/pay/email/VerifyEmailViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lteam/opay/core/account/AccountRepository;",
        "accountRepository",
        "Lteam/opay/pay/account/verify/VerifyRepository;",
        "verifyRepository",
        "Landroid/app/Application;",
        "app",
        "<init>",
        "(Lteam/opay/core/account/AccountRepository;Lteam/opay/pay/account/verify/VerifyRepository;Landroid/app/Application;)V",
        "Lteam/opay/pay/email/EmailSendOtpBody;",
        "email",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "",
        "s",
        "(Lteam/opay/pay/email/EmailSendOtpBody;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/account/verify/VerifyCallbackRequest;",
        "request",
        "Lteam/opay/pay/account/verify/UnfreezeCallbackResponse;",
        "u",
        "(Lteam/opay/pay/account/verify/VerifyCallbackRequest;)Landroidx/lifecycle/LiveData;",
        "b",
        "Lteam/opay/core/account/AccountRepository;",
        "c",
        "Lteam/opay/pay/account/verify/VerifyRepository;",
        "d",
        "Landroid/app/Application;",
        "getApp",
        "()Landroid/app/Application;",
        "e",
        "Ljava/lang/String;",
        "getFrom",
        "()Ljava/lang/String;",
        "setFrom",
        "(Ljava/lang/String;)V",
        "from",
        "Lteam/opay/pay/account/verify/VerifyEvent;",
        "f",
        "Lteam/opay/pay/account/verify/VerifyEvent;",
        "r",
        "()Lteam/opay/pay/account/verify/VerifyEvent;",
        "t",
        "(Lteam/opay/pay/account/verify/VerifyEvent;)V",
        "event",
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
.field public final b:Lteam/opay/core/account/AccountRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/pay/account/verify/VerifyRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lteam/opay/pay/account/verify/VerifyEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/account/AccountRepository;Lteam/opay/pay/account/verify/VerifyRepository;Landroid/app/Application;)V
    .locals 1
    .param p1    # Lteam/opay/core/account/AccountRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/account/verify/VerifyRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/Application;
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
    const-string v0, "verifyRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "app"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p3}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/pay/email/VerifyEmailViewModel;->b:Lteam/opay/core/account/AccountRepository;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/pay/email/VerifyEmailViewModel;->c:Lteam/opay/pay/account/verify/VerifyRepository;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/pay/email/VerifyEmailViewModel;->d:Landroid/app/Application;

    .line 24
    .line 25
    const-string p1, ""

    .line 26
    .line 27
    iput-object p1, p0, Lteam/opay/pay/email/VerifyEmailViewModel;->e:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final r()Lteam/opay/pay/account/verify/VerifyEvent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/email/VerifyEmailViewModel;->f:Lteam/opay/pay/account/verify/VerifyEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s(Lteam/opay/pay/email/EmailSendOtpBody;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/pay/email/EmailSendOtpBody;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/email/EmailSendOtpBody;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "email"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/email/VerifyEmailViewModel;->b:Lteam/opay/core/account/AccountRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/core/account/AccountRepository;->s(Lteam/opay/pay/email/EmailSendOtpBody;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final t(Lteam/opay/pay/account/verify/VerifyEvent;)V
    .locals 0
    .param p1    # Lteam/opay/pay/account/verify/VerifyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/email/VerifyEmailViewModel;->f:Lteam/opay/pay/account/verify/VerifyEvent;

    .line 2
    .line 3
    return-void
.end method

.method public final u(Lteam/opay/pay/account/verify/VerifyCallbackRequest;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/pay/account/verify/VerifyCallbackRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/VerifyCallbackRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/account/verify/UnfreezeCallbackResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/email/VerifyEmailViewModel;->c:Lteam/opay/pay/account/verify/VerifyRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/account/verify/VerifyRepository;->n(Lteam/opay/pay/account/verify/VerifyCallbackRequest;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
