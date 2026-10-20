.class public final Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberFragment$a;
.super Ljava/lang/Object;
.source "Kyc2SetIdNumberFragment.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberFragment;->addObserver()V
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
.field public final synthetic a:Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberFragment$a;->a:Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/pay/account/verify/VerifyExitEvent;Ljr2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/VerifyExitEvent;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyExitEvent;->f()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyExitEvent;->c()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object p2, Lteam/opay/pay/account/verify/ModifyType;->UID_RETRIEVE_ID:Lteam/opay/pay/account/verify/ModifyType;

    .line 21
    .line 22
    invoke-virtual {p2}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberFragment$a;->a:Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberFragment;

    .line 33
    .line 34
    invoke-static {p1}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberFragment;->d1(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberFragment;)Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->G()Lteam/opay/pay/kyc/upgrade2/task/ForgotFailBean;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object p2, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberFragment$a;->a:Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberFragment;

    .line 45
    .line 46
    invoke-static {p2}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberFragment;->d1(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberFragment;)Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->F()Landroidx/lifecycle/MutableLiveData;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/account/verify/VerifyExitEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberFragment$a;->c(Lteam/opay/pay/account/verify/VerifyExitEvent;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
