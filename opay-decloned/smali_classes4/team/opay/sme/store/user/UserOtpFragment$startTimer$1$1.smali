.class final Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UserOtpFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "La66<",
        "-",
        "Ljava/lang/Long;",
        ">;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "La66;",
        "",
        "",
        "<anonymous>",
        "(La66;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.sme.store.user.UserOtpFragment$startTimer$1$1"
    f = "UserOtpFragment.kt"
    l = {
        0xaa,
        0xab
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $otpResendTime:J

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(JLjr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;->$otpResendTime:J

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 3
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
    new-instance v0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;

    .line 2
    .line 3
    iget-wide v1, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;->$otpResendTime:J

    .line 4
    .line 5
    invoke-direct {v0, v1, v2, p2}, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;-><init>(JLjr2;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(La66;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La66<",
            "-",
            "Ljava/lang/Long;",
            ">;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, La66;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;->invoke(La66;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;->label:I

    .line 6
    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    if-eq v1, v5, :cond_2

    .line 14
    .line 15
    if-ne v1, v4, :cond_1

    .line 16
    .line 17
    iget-wide v6, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;->J$0:J

    .line 18
    .line 19
    iget-object v1, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;->L$0:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, La66;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    move-object p1, v1

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_2
    iget-wide v6, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;->J$0:J

    .line 37
    .line 38
    iget-object v1, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, La66;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, La66;

    .line 52
    .line 53
    iget-wide v6, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;->$otpResendTime:J

    .line 54
    .line 55
    :goto_0
    cmp-long v1, v2, v6

    .line 56
    .line 57
    if-gez v1, :cond_5

    .line 58
    .line 59
    invoke-static {v6, v7}, Ldf1;->e(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object p1, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    iput-wide v6, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;->J$0:J

    .line 66
    .line 67
    iput v5, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;->label:I

    .line 68
    .line 69
    invoke-interface {p1, v1, p0}, La66;->emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-ne v1, v0, :cond_4

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_4
    move-object v1, p1

    .line 77
    :goto_1
    iput-object v1, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    iput-wide v6, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;->J$0:J

    .line 80
    .line 81
    iput v4, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$1;->label:I

    .line 82
    .line 83
    const-wide/16 v8, 0x3e8

    .line 84
    .line 85
    invoke-static {v8, v9, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-ne p1, v0, :cond_0

    .line 90
    .line 91
    return-object v0

    .line 92
    :goto_2
    add-long/2addr v6, v2

    .line 93
    goto :goto_0

    .line 94
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    return-object p1
.end method
