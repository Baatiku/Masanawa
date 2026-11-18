.class final Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MyBusinessFragmentV2.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->W1()V
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
    c = "team.opay.sme.va.v2.home.MyBusinessFragmentV2$startImageTransition$1"
    f = "MyBusinessFragmentV2.kt"
    l = {
        0x247
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $v2Info:Lteam/opay/sme/va/receive/TnCardInfo;

.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;Lteam/opay/sme/va/receive/TnCardInfo;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;",
            "Lteam/opay/sme/va/receive/TnCardInfo;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;->$v2Info:Lteam/opay/sme/va/receive/TnCardInfo;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic c(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;Landroid/animation/Animator;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;->invokeSuspend$lambda$0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;Landroid/animation/Animator;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;Landroid/animation/Animator;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object p1, Lbl8;->c:Lbl8;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x2

    .line 5
    const-string v2, "animV2 \u5706\u5f62\u63ed\u793a\u52a8\u753b\u7ed3\u675f\u5566"

    .line 6
    .line 7
    invoke-static {p1, v2, v0, v1, v0}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->D0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
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
    new-instance p1, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;->$v2Info:Lteam/opay/sme/va/receive/TnCardInfo;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;-><init>(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;Lteam/opay/sme/va/receive/TnCardInfo;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 28
    .line 29
    invoke-static {p1}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->u0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;)Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_4

    .line 34
    .line 35
    iget-object p1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 36
    .line 37
    iget-object v1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;->$v2Info:Lteam/opay/sme/va/receive/TnCardInfo;

    .line 38
    .line 39
    invoke-virtual {v1}, Lteam/opay/sme/va/receive/TnCardInfo;->b()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    const-string v1, ""

    .line 46
    .line 47
    :cond_2
    iput v2, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;->label:I

    .line 48
    .line 49
    invoke-static {p1, v1, p0}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->o0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;Ljava/lang/String;Ljr2;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-ne p1, v0, :cond_3

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_3
    :goto_0
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    :cond_4
    iget-object v0, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 59
    .line 60
    invoke-static {v0}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->p0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;)Lgxd;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    iget-object v0, v0, Lgxd;->h:Lyyd;

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    iget-object v0, v0, Lyyd;->h:Lteam/opay/sme/va/v2/CircleRevealView;

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lteam/opay/sme/va/v2/CircleRevealView;->setRevealImage(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    :cond_5
    iget-object p1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 78
    .line 79
    invoke-static {p1}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->p0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;)Lgxd;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    iget-object p1, p1, Lgxd;->h:Lyyd;

    .line 86
    .line 87
    if-eqz p1, :cond_6

    .line 88
    .line 89
    iget-object p1, p1, Lyyd;->h:Lteam/opay/sme/va/v2/CircleRevealView;

    .line 90
    .line 91
    if-eqz p1, :cond_6

    .line 92
    .line 93
    iget-object v0, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 94
    .line 95
    new-instance v1, Lteam/opay/sme/va/v2/home/b;

    .line 96
    .line 97
    invoke-direct {v1, v0}, Lteam/opay/sme/va/v2/home/b;-><init>(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v1}, Lteam/opay/sme/va/v2/CircleRevealView;->e(Lkotlin/jvm/functions/Function1;)V

    .line 101
    .line 102
    .line 103
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 104
    .line 105
    return-object p1
.end method
