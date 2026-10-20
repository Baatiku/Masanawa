.class public final Lteam/opay/pay/pin/PasswordRecoveryFragment$b;
.super Ljava/lang/Object;
.source "PasswordRecoveryFragment.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/pin/PasswordRecoveryFragment;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La66;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/pin/PasswordRecoveryFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/pin/PasswordRecoveryFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/pin/PasswordRecoveryFragment$b;->a:Lteam/opay/pay/pin/PasswordRecoveryFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/pay/account/verify/VerifyEvent;Ljr2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/VerifyEvent;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getRequestCode()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "new_forget_password_page"

    .line 6
    .line 7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    sget-object p2, Lteam/opay/pay/home/security/ForgotPasswordActivity;->h:Lteam/opay/pay/home/security/ForgotPasswordActivity$Companion;

    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/pay/pin/PasswordRecoveryFragment$b;->a:Lteam/opay/pay/pin/PasswordRecoveryFragment;

    .line 16
    .line 17
    invoke-static {v0}, Lteam/opay/pay/pin/PasswordRecoveryFragment;->c0(Lteam/opay/pay/pin/PasswordRecoveryFragment;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x3

    .line 22
    invoke-virtual {p2, v0, p1, v1, v2}, Lteam/opay/pay/home/security/ForgotPasswordActivity$Companion;->c(Lteam/opay/core/base/BaseFragmentV2;Lteam/opay/pay/account/verify/VerifyEvent;Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/account/verify/VerifyEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/pin/PasswordRecoveryFragment$b;->c(Lteam/opay/pay/account/verify/VerifyEvent;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
