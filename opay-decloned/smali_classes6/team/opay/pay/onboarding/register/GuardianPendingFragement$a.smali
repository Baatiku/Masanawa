.class public final Lteam/opay/pay/onboarding/register/GuardianPendingFragement$a;
.super Ljava/lang/Object;
.source "GuardianPendingFragement.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/onboarding/register/GuardianPendingFragement;->addObserver()V
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
.field public final synthetic a:Lteam/opay/pay/onboarding/register/GuardianPendingFragement;


# direct methods
.method public constructor <init>(Lteam/opay/pay/onboarding/register/GuardianPendingFragement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/GuardianPendingFragement$a;->a:Lteam/opay/pay/onboarding/register/GuardianPendingFragement;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/pay/util/EmptyMessage;Ljr2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/util/EmptyMessage;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lteam/opay/pay/onboarding/register/GuardianPendingFragement$a;->a:Lteam/opay/pay/onboarding/register/GuardianPendingFragement;

    .line 2
    .line 3
    invoke-static {p1}, Lteam/opay/pay/onboarding/register/GuardianPendingFragement;->Y(Lteam/opay/pay/onboarding/register/GuardianPendingFragement;)Lteam/opay/pay/onboarding/register/RegisterViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lteam/opay/pay/onboarding/register/GuardianPendingFragement$a;->a:Lteam/opay/pay/onboarding/register/GuardianPendingFragement;

    .line 8
    .line 9
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const-string v0, "getViewLifecycleOwner(...)"

    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->y(Lag8;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/util/EmptyMessage;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/onboarding/register/GuardianPendingFragement$a;->c(Lteam/opay/pay/util/EmptyMessage;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
