.class public final Lteam/opay/pay/onboarding/register/GuardianExpireFragment$b;
.super Ljava/lang/Object;
.source "GuardianExpireFragment.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field public final synthetic a:Lteam/opay/pay/onboarding/register/GuardianExpireFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/onboarding/register/GuardianExpireFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$b;->a:Lteam/opay/pay/onboarding/register/GuardianExpireFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$b;->a:Lteam/opay/pay/onboarding/register/GuardianExpireFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->Q(Lteam/opay/pay/onboarding/register/GuardianExpireFragment;)Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->U()Lteam/opay/pay/onboarding/register/SetPwdDataRsp;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$b;->a:Lteam/opay/pay/onboarding/register/GuardianExpireFragment;

    .line 14
    .line 15
    invoke-static {p2, p1}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->R(Lteam/opay/pay/onboarding/register/GuardianExpireFragment;Lteam/opay/pay/onboarding/register/SetPwdDataRsp;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$b;->a:Lteam/opay/pay/onboarding/register/GuardianExpireFragment;

    .line 20
    .line 21
    sget-object v0, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->h:Lteam/opay/pay/onboarding/register/SetPasswordActivity$Companion;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string p2, "requireContext(...)"

    .line 28
    .line 29
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->T()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/SceneViewModel;->d0()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->T()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->l0()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const/16 v6, 0x18

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v4, 0x0

    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-static/range {v0 .. v7}, Lteam/opay/pay/onboarding/register/SetPasswordActivity$Companion;->b(Lteam/opay/pay/onboarding/register/SetPasswordActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 57
    .line 58
    return-object p1
.end method
