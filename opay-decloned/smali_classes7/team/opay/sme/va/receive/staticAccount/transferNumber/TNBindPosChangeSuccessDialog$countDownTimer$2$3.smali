.class final Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$3;
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
        "Ljava/lang/Integer;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        ""
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Ln33;
    c = "team.opay.sme.va.receive.staticAccount.transferNumber.TNBindPosChangeSuccessDialog$countDownTimer$2$3"
    f = "TNBindPosChangeSuccessDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic I$0:I

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
            "Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$3;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;

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
    .locals 2
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
    new-instance v0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$3;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$3;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$3;-><init>(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;Ljr2;)V

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/lang/Number;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, v0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$3;->I$0:I

    .line 15
    .line 16
    return-object v0
.end method

.method public final invoke(ILjr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$3;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$3;->invoke(ILjr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$3;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$3;->I$0:I

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$3;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$3;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$3;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog$countDownTimer$2$3;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;

    .line 39
    .line 40
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;->Y(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeSuccessDialog;)Lxwd;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v0, v0, Lxwd;->b:Lcom/google/android/material/button/MaterialButton;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "OK("

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p1, "s)"

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p1

    .line 74
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 80
    .line 81
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1
.end method
