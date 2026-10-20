.class public final Lteam/opay/pay/onboarding/register/SetPasswordFragment$b;
.super Ljava/lang/Object;
.source "SetPasswordFragment.kt"

# interfaces
.implements Lteam/opay/pay/onboarding/register/InviationCodeView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/onboarding/register/SetPasswordFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "team/opay/pay/onboarding/register/SetPasswordFragment$b",
        "Lteam/opay/pay/onboarding/register/InviationCodeView$a;",
        "",
        "test",
        "",
        "c",
        "(Ljava/lang/String;)V",
        "",
        "expand",
        "d",
        "(Z)V",
        "a",
        "()V",
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
.field public final synthetic a:Lteam/opay/pay/onboarding/register/SetPasswordFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/onboarding/register/SetPasswordFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/SetPasswordFragment$b;->a:Lteam/opay/pay/onboarding/register/SetPasswordFragment;

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
    .locals 4

    .line 1
    sget-object v0, Luqe;->a:Luqe;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/onboarding/register/SetPasswordFragment$b;->a:Lteam/opay/pay/onboarding/register/SetPasswordFragment;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lteam/opay/pay/onboarding/register/SetPasswordFragment$b;->a:Lteam/opay/pay/onboarding/register/SetPasswordFragment;

    .line 10
    .line 11
    invoke-static {v2}, Lteam/opay/pay/onboarding/register/SetPasswordFragment;->d0(Lteam/opay/pay/onboarding/register/SetPasswordFragment;)[Lkotlin/Pair;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    array-length v3, v2

    .line 16
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, [Lkotlin/Pair;

    .line 21
    .line 22
    const-string v3, "set_up_invitation_code_show"

    .line 23
    .line 24
    invoke-virtual {v0, v1, v3, v2}, Luqe;->b(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/onboarding/register/InviationCodeView$a$a;->a(Lteam/opay/pay/onboarding/register/InviationCodeView$a;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "test"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/16 v0, 0xa

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    sget-object p1, Luqe;->a:Luqe;

    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/SetPasswordFragment$b;->a:Lteam/opay/pay/onboarding/register/SetPasswordFragment;

    .line 17
    .line 18
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lteam/opay/pay/onboarding/register/SetPasswordFragment$b;->a:Lteam/opay/pay/onboarding/register/SetPasswordFragment;

    .line 23
    .line 24
    invoke-static {v1}, Lteam/opay/pay/onboarding/register/SetPasswordFragment;->d0(Lteam/opay/pay/onboarding/register/SetPasswordFragment;)[Lkotlin/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    array-length v2, v1

    .line 29
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, [Lkotlin/Pair;

    .line 34
    .line 35
    const-string v2, "set_up_invitation_code_click"

    .line 36
    .line 37
    invoke-virtual {p1, v0, v2, v1}, Luqe;->b(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Luqe;->a:Luqe;

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/SetPasswordFragment$b;->a:Lteam/opay/pay/onboarding/register/SetPasswordFragment;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lteam/opay/pay/onboarding/register/SetPasswordFragment$b;->a:Lteam/opay/pay/onboarding/register/SetPasswordFragment;

    .line 12
    .line 13
    invoke-static {v1}, Lteam/opay/pay/onboarding/register/SetPasswordFragment;->d0(Lteam/opay/pay/onboarding/register/SetPasswordFragment;)[Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    array-length v2, v1

    .line 18
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, [Lkotlin/Pair;

    .line 23
    .line 24
    const-string v2, "set_up_invitation_code_fold_click"

    .line 25
    .line 26
    invoke-virtual {p1, v0, v2, v1}, Luqe;->b(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object p1, Luqe;->a:Luqe;

    .line 31
    .line 32
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/SetPasswordFragment$b;->a:Lteam/opay/pay/onboarding/register/SetPasswordFragment;

    .line 33
    .line 34
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lteam/opay/pay/onboarding/register/SetPasswordFragment$b;->a:Lteam/opay/pay/onboarding/register/SetPasswordFragment;

    .line 39
    .line 40
    invoke-static {v1}, Lteam/opay/pay/onboarding/register/SetPasswordFragment;->d0(Lteam/opay/pay/onboarding/register/SetPasswordFragment;)[Lkotlin/Pair;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    array-length v2, v1

    .line 45
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, [Lkotlin/Pair;

    .line 50
    .line 51
    const-string v2, "set_up_invitation_code_spread_click"

    .line 52
    .line 53
    invoke-virtual {p1, v0, v2, v1}, Luqe;->b(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method
