.class final Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TNBindPosChangeSuccessDialog.kt"

# interfaces
.implements Lhm6;


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
        "Lhm6<",
        "La66<",
        "-",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Throwable;",
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
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0005\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\u00010\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "La66;",
        "",
        "",
        "it",
        "",
        "<anonymous>",
        "(La66;Ljava/lang/Throwable;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.sme.va.receive.staticAccount.transferNumber.TNBindPosChangeSuccessDialog$countDownTimer$2$2"
    f = "TNBindPosChangeSuccessDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$2;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(La66;Ljava/lang/Throwable;Ljr2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La66<",
            "-",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Throwable;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$2;

    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$2;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;

    invoke-direct {p1, v0, p3}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$2;-><init>(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;Ljr2;)V

    iput-object p2, p1, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$2;->L$0:Ljava/lang/Object;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, La66;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Ljr2;

    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$2;->invoke(La66;Ljava/lang/Throwable;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$2;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/Throwable;

    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$2;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$2;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$2;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    instance-of p1, p1, Ljava/util/concurrent/CancellationException;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$2;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;

    .line 45
    .line 46
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;->Y(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;)Lxwd;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p1, p1, Lxwd;->b:Lcom/google/android/material/button/MaterialButton;

    .line 51
    .line 52
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$2;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;

    .line 53
    .line 54
    sget v1, Lteam/opay/core/common/R$string;->common_ok:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$2;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;

    .line 64
    .line 65
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;->Y(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;)Lxwd;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p1, p1, Lxwd;->b:Lcom/google/android/material/button/MaterialButton;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    .line 72
    .line 73
    .line 74
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 83
    .line 84
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method
