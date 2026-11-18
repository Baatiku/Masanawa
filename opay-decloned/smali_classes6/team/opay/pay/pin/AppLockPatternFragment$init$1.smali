.class final Lteam/opay/pay/pin/AppLockPatternFragment$init$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppLockPatternFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/pin/AppLockPatternFragment;->a0()V
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
    c = "team.opay.pay.pin.AppLockPatternFragment$init$1"
    f = "AppLockPatternFragment.kt"
    l = {
        0x61
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/pay/pin/AppLockPatternFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/pin/AppLockPatternFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/pin/AppLockPatternFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/pin/AppLockPatternFragment$init$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

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
    new-instance p1, Lteam/opay/pay/pin/AppLockPatternFragment$init$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/pay/pin/AppLockPatternFragment$init$1;-><init>(Lteam/opay/pay/pin/AppLockPatternFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/pin/AppLockPatternFragment$init$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/pin/AppLockPatternFragment$init$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/pin/AppLockPatternFragment$init$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/pin/AppLockPatternFragment$init$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1;->label:I

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
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Ls;->a(Landroid/content/Context;)Ls;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {p1, v1}, Lteam/opay/pay/pin/AppLockPatternFragment;->U(Lteam/opay/pay/pin/AppLockPatternFragment;Ls;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 42
    .line 43
    invoke-static {p1}, Lteam/opay/pay/pin/AppLockPatternFragment;->Q(Lteam/opay/pay/pin/AppLockPatternFragment;)Ls;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    const-string v4, "GesturePassword"

    .line 51
    .line 52
    invoke-virtual {v1, v4}, Ls;->d(Ljava/lang/String;)[B

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move-object v1, v3

    .line 58
    :goto_0
    invoke-static {p1, v1}, Lteam/opay/pay/pin/AppLockPatternFragment;->V(Lteam/opay/pay/pin/AppLockPatternFragment;[B)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 62
    .line 63
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lnf6;

    .line 68
    .line 69
    iget-object p1, p1, Lnf6;->b:Lteam/opay/pay/lockpattern/widget/LockPatternView;

    .line 70
    .line 71
    iget-object v1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 72
    .line 73
    invoke-static {v1}, Lteam/opay/pay/pin/AppLockPatternFragment;->S(Lteam/opay/pay/pin/AppLockPatternFragment;)Lteam/opay/pay/pin/AppLockPatternFragment$b;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p1, v1}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->setOnPatternListener(Lteam/opay/pay/lockpattern/widget/LockPatternView$a;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 81
    .line 82
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lnf6;

    .line 87
    .line 88
    iget-object p1, p1, Lnf6;->b:Lteam/opay/pay/lockpattern/widget/LockPatternView;

    .line 89
    .line 90
    iget-object v1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 91
    .line 92
    invoke-static {v1}, Lteam/opay/pay/pin/AppLockPatternFragment;->T(Lteam/opay/pay/pin/AppLockPatternFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lteam/opay/core/settings/SettingsStorage;->r()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {p1, v1}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->setHasTrack(Z)V

    .line 101
    .line 102
    .line 103
    sget-object p1, Ldfa;->a:Ldfa;

    .line 104
    .line 105
    iget-object v1, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 106
    .line 107
    invoke-static {v1}, Lteam/opay/pay/pin/AppLockPatternFragment;->T(Lteam/opay/pay/pin/AppLockPatternFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lteam/opay/core/settings/SettingsStorage;->K()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p1, v1}, Ldfa;->c(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-ne p1, v2, :cond_3

    .line 120
    .line 121
    const/4 p1, 0x1

    .line 122
    goto :goto_1

    .line 123
    :cond_3
    const/4 p1, 0x0

    .line 124
    :goto_1
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    new-instance v4, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;

    .line 129
    .line 130
    iget-object v5, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1;->this$0:Lteam/opay/pay/pin/AppLockPatternFragment;

    .line 131
    .line 132
    invoke-direct {v4, p1, v5, v3}, Lteam/opay/pay/pin/AppLockPatternFragment$init$1$1;-><init>(ZLteam/opay/pay/pin/AppLockPatternFragment;Ljr2;)V

    .line 133
    .line 134
    .line 135
    iput v2, p0, Lteam/opay/pay/pin/AppLockPatternFragment$init$1;->label:I

    .line 136
    .line 137
    invoke-static {v1, v4, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-ne p1, v0, :cond_4

    .line 142
    .line 143
    return-object v0

    .line 144
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 145
    .line 146
    return-object p1
.end method
