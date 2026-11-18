.class final Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment$checkOtpPage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HasSignGuideFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment;->Y()V
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
    c = "team.opay.pay.onboarding.tabs.HasSignGuideFragment$checkOtpPage$2"
    f = "HasSignGuideFragment.kt"
    l = {
        0xa9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field I$0:I

.field label:I

.field final synthetic this$0:Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment$checkOtpPage$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment$checkOtpPage$2;->this$0:Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 1
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
    new-instance p1, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment$checkOtpPage$2;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment$checkOtpPage$2;->this$0:Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment$checkOtpPage$2;-><init>(Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment;Ljr2;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment$checkOtpPage$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment$checkOtpPage$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment$checkOtpPage$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment$checkOtpPage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget v2, p0, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment$checkOtpPage$2;->label:I

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    if-ne v2, v0, :cond_0

    .line 11
    .line 12
    iget v1, p0, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment$checkOtpPage$2;->I$0:I

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Lteam/opay/pay/onboarding/tabs/MtnTestABTest;->Companion:Lteam/opay/pay/onboarding/tabs/MtnTestABTest$Companion;

    .line 30
    .line 31
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/tabs/MtnTestABTest$Companion;->c()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    int-to-long v2, p1

    .line 36
    const-wide/16 v4, 0x3e8

    .line 37
    .line 38
    mul-long v2, v2, v4

    .line 39
    .line 40
    iput p1, p0, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment$checkOtpPage$2;->I$0:I

    .line 41
    .line 42
    iput v0, p0, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment$checkOtpPage$2;->label:I

    .line 43
    .line 44
    invoke-static {v2, v3, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-ne v2, v1, :cond_2

    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_2
    move v1, p1

    .line 52
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment$checkOtpPage$2;->this$0:Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment;

    .line 53
    .line 54
    invoke-static {p1}, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment;->W(Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v2, "onCheckSuccess has been delay="

    .line 66
    .line 67
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    sget-object p1, Lx7b;->a:Lx7b;

    .line 74
    .line 75
    const-string v1, "st"

    .line 76
    .line 77
    const-string v2, "0"

    .line 78
    .line 79
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "error_code"

    .line 84
    .line 85
    const-string v3, "timeout"

    .line 86
    .line 87
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const-string v4, "error_message"

    .line 92
    .line 93
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    const/4 v4, 0x3

    .line 98
    new-array v4, v4, [Lkotlin/Pair;

    .line 99
    .line 100
    const/4 v5, 0x0

    .line 101
    aput-object v1, v4, v5

    .line 102
    .line 103
    aput-object v2, v4, v0

    .line 104
    .line 105
    const/4 v0, 0x2

    .line 106
    aput-object v3, v4, v0

    .line 107
    .line 108
    const-string v0, "sign_up_verify_MTNAuthen"

    .line 109
    .line 110
    invoke-virtual {p1, v0, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment$checkOtpPage$2;->this$0:Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment;

    .line 114
    .line 115
    const-string v0, "mtn"

    .line 116
    .line 117
    invoke-static {p1, v0}, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment;->X(Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 121
    .line 122
    return-object p1
.end method
