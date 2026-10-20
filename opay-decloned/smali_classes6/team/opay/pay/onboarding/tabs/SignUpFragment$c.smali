.class public final Lteam/opay/pay/onboarding/tabs/SignUpFragment$c;
.super Ljava/lang/Object;
.source "SignUpFragment.kt"

# interfaces
.implements Lteam/opay/pay/onboarding/register/InviationCodeView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/onboarding/tabs/SignUpFragment;->O0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "team/opay/pay/onboarding/tabs/SignUpFragment$c",
        "Lteam/opay/pay/onboarding/register/InviationCodeView$a;",
        "",
        "code",
        "",
        "c",
        "(Ljava/lang/String;)V",
        "Landroid/view/View;",
        "view",
        "",
        "focus",
        "b",
        "(Landroid/view/View;Z)V",
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
.field public final synthetic a:Lteam/opay/pay/onboarding/tabs/SignUpFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/onboarding/tabs/SignUpFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/onboarding/tabs/SignUpFragment$c;->a:Lteam/opay/pay/onboarding/tabs/SignUpFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/register/InviationCodeView$a$a;->c(Lteam/opay/pay/onboarding/register/InviationCodeView$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2}, Lteam/opay/pay/onboarding/register/InviationCodeView$a$a;->a(Lteam/opay/pay/onboarding/register/InviationCodeView$a;Landroid/view/View;Z)V

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/onboarding/tabs/SignUpFragment$c;->a:Lteam/opay/pay/onboarding/tabs/SignUpFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/pay/onboarding/tabs/SignUpFragment;->k0(Lteam/opay/pay/onboarding/tabs/SignUpFragment;)Lteam/opay/pay/account/KeyBoardHelper;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/pay/account/KeyBoardHelper;->i()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1}, Lli2;->f(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "code"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/onboarding/tabs/SignUpFragment$c;->a:Lteam/opay/pay/onboarding/tabs/SignUpFragment;

    .line 7
    .line 8
    invoke-static {v0}, Lteam/opay/pay/onboarding/tabs/SignUpFragment;->l0(Lteam/opay/pay/onboarding/tabs/SignUpFragment;)Lteam/opay/pay/onboarding/OnboardingViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lteam/opay/pay/onboarding/OnboardingViewModel;->Y(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/register/InviationCodeView$a$a;->b(Lteam/opay/pay/onboarding/register/InviationCodeView$a;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
