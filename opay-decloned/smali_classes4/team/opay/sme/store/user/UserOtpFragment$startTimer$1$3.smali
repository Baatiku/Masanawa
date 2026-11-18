.class final Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UserOtpFragment.kt"

# interfaces
.implements Lhm6;


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
        "Lhm6<",
        "La66<",
        "-",
        "Ljava/lang/Long;",
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
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0005\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\u00010\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
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
    c = "team.opay.sme.store.user.UserOtpFragment$startTimer$1$3"
    f = "UserOtpFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/user/UserOtpFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/user/UserOtpFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/user/UserOtpFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$3;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La66<",
            "-",
            "Ljava/lang/Long;",
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
    new-instance p1, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$3;

    iget-object p2, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$3;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    invoke-direct {p1, p2, p3}, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$3;-><init>(Lteam/opay/sme/store/user/UserOtpFragment;Ljr2;)V

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, La66;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Ljr2;

    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$3;->invoke(La66;Ljava/lang/Throwable;Ljr2;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$3;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$3;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "<get-lifecycle>(...)"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 23
    .line 24
    invoke-static {p1, v0}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$3;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 31
    .line 32
    invoke-static {p1}, Lteam/opay/sme/store/user/UserOtpFragment;->K(Lteam/opay/sme/store/user/UserOtpFragment;)Lgvd;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p1, p1, Lgvd;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    iget-object v0, p0, Lteam/opay/sme/store/user/UserOtpFragment$startTimer$1$3;->this$0:Lteam/opay/sme/store/user/UserOtpFragment;

    .line 39
    .line 40
    sget v1, Lteam/opay/sme/store/R$string;->sme_store_resend:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sget v2, Lteam/opay/core/common/R$color;->mint:I

    .line 54
    .line 55
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sget v2, Lteam/opay/core/common/R$font;->roboto_500:I

    .line 71
    .line 72
    invoke-static {v0, v2, v1}, Lwie;->n(Landroid/content/Context;II)Landroid/graphics/Typeface;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 85
    .line 86
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1
.end method
