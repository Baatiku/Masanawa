.class final Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TNBindPosChangeSuccessDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;-><init>()V
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
        "Ljava/lang/Integer;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
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
    c = "team.opay.sme.va.receive.staticAccount.transferNumber.TNBindPosChangeSuccessDialog$countDownTimer$2$1"
    f = "TNBindPosChangeSuccessDialog.kt"
    l = {
        0x1e,
        0x1f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Ljr2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 3
    .line 4
    .line 5
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
    new-instance v0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;-><init>(Ljr2;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;->L$0:Ljava/lang/Object;

    .line 7
    .line 8
    return-object v0
.end method

.method public final invoke(La66;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La66<",
            "-",
            "Ljava/lang/Integer;",
            ">;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, La66;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;->invoke(La66;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;->label:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-ne v1, v3, :cond_1

    .line 15
    .line 16
    iget v1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;->I$0:I

    .line 17
    .line 18
    iget-object v5, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;->L$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v5, La66;

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    move-object p1, v5

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_2
    iget v1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;->I$0:I

    .line 36
    .line 37
    iget-object v5, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v5, La66;

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;->L$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, La66;

    .line 51
    .line 52
    const/4 v1, 0x3

    .line 53
    :goto_0
    if-ge v2, v1, :cond_5

    .line 54
    .line 55
    invoke-static {v1}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;->L$0:Ljava/lang/Object;

    .line 60
    .line 61
    iput v1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;->I$0:I

    .line 62
    .line 63
    iput v4, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;->label:I

    .line 64
    .line 65
    invoke-interface {p1, v5, p0}, La66;->emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    if-ne v5, v0, :cond_4

    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_4
    move-object v5, p1

    .line 73
    :goto_1
    iput-object v5, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    iput v1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;->I$0:I

    .line 76
    .line 77
    iput v3, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$1;->label:I

    .line 78
    .line 79
    const-wide/16 v6, 0x3e8

    .line 80
    .line 81
    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v0, :cond_0

    .line 86
    .line 87
    return-object v0

    .line 88
    :goto_2
    add-int/2addr v1, v2

    .line 89
    goto :goto_0

    .line 90
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    return-object p1
.end method
