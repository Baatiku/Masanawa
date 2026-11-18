.class public final Lteam/opay/pay/onboarding/register/GuardianExpireFragment$a;
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
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$a;->a:Lteam/opay/pay/onboarding/register/GuardianExpireFragment;

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
    .locals 0
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
    sget-object p1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2}, Lteam/opay/core/account/AccountInfoManager;->d(Z)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/onboarding/register/GuardianExpireFragment$a;->a:Lteam/opay/pay/onboarding/register/GuardianExpireFragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/GuardianExpireFragment;->onBackPressed()Z

    .line 14
    .line 15
    .line 16
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p1
.end method
