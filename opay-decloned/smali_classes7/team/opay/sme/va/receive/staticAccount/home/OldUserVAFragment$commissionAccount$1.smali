.class final Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$commissionAccount$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OldUserVAFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->y0(Ljava/lang/String;)V
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
    c = "team.opay.sme.va.receive.staticAccount.home.OldUserVAFragment$commissionAccount$1"
    f = "OldUserVAFragment.kt"
    l = {
        0x147
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $rmStaticCode:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$commissionAccount$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$commissionAccount$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$commissionAccount$1;->$rmStaticCode:Ljava/lang/String;

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

.method public static synthetic c(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;Lteam/opay/core/http/HttpResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$commissionAccount$1;->invokeSuspend$lambda$1$lambda$0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;Lteam/opay/core/http/HttpResult;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$1$lambda$0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;Lteam/opay/core/http/HttpResult;)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lud;->a:Lud;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getOrNull()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lteam/opay/sme/va/receive/CommissionAccountResp;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/CommissionAccountResp;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    if-nez p0, :cond_1

    .line 22
    .line 23
    const-string p0, ""

    .line 24
    .line 25
    :cond_1
    move-object v2, p0

    .line 26
    const/4 v4, 0x4

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static/range {v0 .. v5}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
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
    new-instance p1, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$commissionAccount$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$commissionAccount$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$commissionAccount$1;->$rmStaticCode:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$commissionAccount$1;-><init>(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;Ljava/lang/String;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$commissionAccount$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$commissionAccount$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$commissionAccount$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$commissionAccount$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$commissionAccount$1;->label:I

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
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$commissionAccount$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 28
    .line 29
    invoke-virtual {p1}, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->R()Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v1, Lteam/opay/sme/va/receive/CommissionAccountReq;

    .line 34
    .line 35
    iget-object v3, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$commissionAccount$1;->$rmStaticCode:Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {v1, v3}, Lteam/opay/sme/va/receive/CommissionAccountReq;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iput v2, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$commissionAccount$1;->label:I

    .line 41
    .line 42
    invoke-virtual {p1, v1, p0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->t(Lteam/opay/sme/va/receive/CommissionAccountReq;Ljr2;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-ne p1, v0, :cond_2

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_2
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 50
    .line 51
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$commissionAccount$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "<get-lifecycle>(...)"

    .line 58
    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 63
    .line 64
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$commissionAccount$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 71
    .line 72
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getOrNull()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lteam/opay/sme/va/receive/CommissionAccountResp;

    .line 77
    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-virtual {v1}, Lteam/opay/sme/va/receive/CommissionAccountResp;->b()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    const/4 v1, 0x0

    .line 86
    :goto_1
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->u0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;)Lixd;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    iget-object v3, v3, Lixd;->y:Landroidx/appcompat/widget/AppCompatImageView;

    .line 91
    .line 92
    const-string v4, "posLevel"

    .line 93
    .line 94
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v3, v1}, Lle7;->c(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->u0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;)Lixd;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iget-object v3, v3, Lixd;->y:Landroidx/appcompat/widget/AppCompatImageView;

    .line 105
    .line 106
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    if-eqz v1, :cond_5

    .line 110
    .line 111
    invoke-static {v1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_4

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    const/4 v1, 0x0

    .line 119
    goto :goto_3

    .line 120
    :cond_5
    :goto_2
    const/4 v1, 0x1

    .line 121
    :goto_3
    xor-int/2addr v1, v2

    .line 122
    invoke-static {v3, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->u0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;)Lixd;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iget-object v1, v1, Lixd;->y:Landroidx/appcompat/widget/AppCompatImageView;

    .line 130
    .line 131
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance v2, Lteam/opay/sme/va/receive/staticAccount/home/a;

    .line 135
    .line 136
    invoke-direct {v2, v0, p1}, Lteam/opay/sme/va/receive/staticAccount/home/a;-><init>(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;Lteam/opay/core/http/HttpResult;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v1, v2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 140
    .line 141
    .line 142
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 143
    .line 144
    return-object p1
.end method
