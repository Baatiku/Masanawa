.class final Lteam/opay/business/dialog/fragment/BizDialogFragment1$checkClose$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BizDialogFragment1.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/dialog/fragment/BizDialogFragment1;->i0()V
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
    c = "team.opay.business.dialog.fragment.BizDialogFragment1$checkClose$1"
    f = "BizDialogFragment1.kt"
    l = {
        0x9c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/business/dialog/fragment/BizDialogFragment1;


# direct methods
.method public constructor <init>(Lteam/opay/business/dialog/fragment/BizDialogFragment1;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/dialog/fragment/BizDialogFragment1;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/dialog/fragment/BizDialogFragment1$checkClose$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment1$checkClose$1;->this$0:Lteam/opay/business/dialog/fragment/BizDialogFragment1;

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
    new-instance p1, Lteam/opay/business/dialog/fragment/BizDialogFragment1$checkClose$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment1$checkClose$1;->this$0:Lteam/opay/business/dialog/fragment/BizDialogFragment1;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/business/dialog/fragment/BizDialogFragment1$checkClose$1;-><init>(Lteam/opay/business/dialog/fragment/BizDialogFragment1;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/dialog/fragment/BizDialogFragment1$checkClose$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/dialog/fragment/BizDialogFragment1$checkClose$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/dialog/fragment/BizDialogFragment1$checkClose$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/dialog/fragment/BizDialogFragment1$checkClose$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment1$checkClose$1;->label:I

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
    goto :goto_1

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
    new-instance p1, Lteam/opay/business/dialog/api/CheckStatusRequest;

    .line 28
    .line 29
    iget-object v1, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment1$checkClose$1;->this$0:Lteam/opay/business/dialog/fragment/BizDialogFragment1;

    .line 30
    .line 31
    invoke-virtual {v1}, Lteam/opay/business/dialog/fragment/BizDialogFragment1;->m0()Lteam/opay/business/dialog/api/DialogEntity;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1}, Lteam/opay/business/dialog/api/DialogEntity;->getCode()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v1, 0x0

    .line 43
    :goto_0
    if-nez v1, :cond_3

    .line 44
    .line 45
    const-string v1, ""

    .line 46
    .line 47
    :cond_3
    invoke-direct {p1, v1}, Lteam/opay/business/dialog/api/CheckStatusRequest;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object v1, Lw93;->f:Lw93;

    .line 51
    .line 52
    invoke-virtual {v1}, Lw93;->t()Lpv;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput v2, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment1$checkClose$1;->label:I

    .line 57
    .line 58
    invoke-interface {v1, p1, p0}, Lpv;->a(Lteam/opay/business/dialog/api/CheckStatusRequest;Ljr2;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-ne p1, v0, :cond_4

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_4
    :goto_1
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 66
    .line 67
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    if-eqz v0, :cond_7

    .line 71
    .line 72
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 73
    .line 74
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lteam/opay/business/dialog/api/CheckStatusResponse;

    .line 79
    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    invoke-virtual {p1}, Lteam/opay/business/dialog/api/CheckStatusResponse;->a()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    :cond_5
    iget-object p1, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment1$checkClose$1;->this$0:Lteam/opay/business/dialog/fragment/BizDialogFragment1;

    .line 87
    .line 88
    invoke-virtual {p1}, Lteam/opay/business/dialog/fragment/BizDialogFragment;->W()Lfa3;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-interface {p1, v1}, Lfa3;->a(Z)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_6

    .line 97
    .line 98
    if-eqz v1, :cond_8

    .line 99
    .line 100
    :cond_6
    iget-object p1, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment1$checkClose$1;->this$0:Lteam/opay/business/dialog/fragment/BizDialogFragment1;

    .line 101
    .line 102
    invoke-virtual {p1}, Lteam/opay/business/dialog/fragment/BizDialogFragment;->V()V

    .line 103
    .line 104
    .line 105
    sget-object p1, Lhre;->a:Lhre;

    .line 106
    .line 107
    iget-object v0, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment1$checkClose$1;->this$0:Lteam/opay/business/dialog/fragment/BizDialogFragment1;

    .line 108
    .line 109
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeDialogFragment;->getAppContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v1, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment1$checkClose$1;->this$0:Lteam/opay/business/dialog/fragment/BizDialogFragment1;

    .line 114
    .line 115
    invoke-virtual {v1}, Lteam/opay/business/dialog/fragment/BizDialogFragment1;->m0()Lteam/opay/business/dialog/api/DialogEntity;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const-string v2, "Home_pop_window_complete_close"

    .line 120
    .line 121
    invoke-virtual {p1, v0, v2, v1}, Lhre;->a(Landroid/content/Context;Ljava/lang/String;Lteam/opay/business/dialog/api/DialogEntity;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_7
    iget-object p1, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment1$checkClose$1;->this$0:Lteam/opay/business/dialog/fragment/BizDialogFragment1;

    .line 126
    .line 127
    invoke-virtual {p1}, Lteam/opay/business/dialog/fragment/BizDialogFragment;->W()Lfa3;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-interface {p1, v1}, Lfa3;->a(Z)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    invoke-static {p1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 136
    .line 137
    .line 138
    :cond_8
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 139
    .line 140
    return-object p1
.end method
