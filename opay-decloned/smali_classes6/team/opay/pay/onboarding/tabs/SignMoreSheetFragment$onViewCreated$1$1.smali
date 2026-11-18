.class final Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SignMoreSheetFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.onboarding.tabs.SignMoreSheetFragment$onViewCreated$1$1"
    f = "SignMoreSheetFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $ussdIntervalTime:J

.field final synthetic $ussdLeftSecond:J

.field label:I

.field final synthetic this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;JJLjr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;",
            "JJ",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 2
    .line 3
    iput-wide p2, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;->$ussdLeftSecond:J

    .line 4
    .line 5
    iput-wide p4, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;->$ussdIntervalTime:J

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 4
    .line 5
    iget-wide v2, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;->$ussdLeftSecond:J

    .line 6
    .line 7
    iget-wide v4, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;->$ussdIntervalTime:J

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    move-object v6, p2

    .line 11
    invoke-direct/range {v0 .. v6}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;-><init>(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;JJLjr2;)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 12
    .line 13
    iget-wide v0, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;->$ussdLeftSecond:J

    .line 14
    .line 15
    iget-wide v2, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;->$ussdIntervalTime:J

    .line 16
    .line 17
    sub-long/2addr v0, v2

    .line 18
    long-to-int v1, v0

    .line 19
    invoke-virtual {p1}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lai6;

    .line 24
    .line 25
    iget-object v0, v0, Lai6;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    const-string v2, "ussdCall"

    .line 28
    .line 29
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onViewCreated$1$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 33
    .line 34
    invoke-virtual {v2}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lai6;

    .line 39
    .line 40
    iget-object v2, v2, Lai6;->o:Landroidx/constraintlayout/helper/widget/Layer;

    .line 41
    .line 42
    const-string v3, "ussdLayer"

    .line 43
    .line 44
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v3, Lteam/opay/pay/account/otp/OtpChannel;->USSD:Lteam/opay/pay/account/otp/OtpChannel;

    .line 48
    .line 49
    invoke-static {p1, v1, v0, v2, v3}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->b0(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;ILandroid/widget/TextView;Landroidx/constraintlayout/helper/widget/Layer;Lteam/opay/pay/account/otp/OtpChannel;)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method
