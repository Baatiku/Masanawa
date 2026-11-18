.class final Lteam/opay/pay/home/DexloadActivity$goNextPage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DexloadActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/DexloadActivity;->G()V
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
    c = "team.opay.pay.home.DexloadActivity$goNextPage$1"
    f = "DexloadActivity.kt"
    l = {
        0xb7
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/pay/home/DexloadActivity;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/DexloadActivity;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/DexloadActivity;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/DexloadActivity$goNextPage$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/DexloadActivity$goNextPage$1;->this$0:Lteam/opay/pay/home/DexloadActivity;

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
    new-instance p1, Lteam/opay/pay/home/DexloadActivity$goNextPage$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/home/DexloadActivity$goNextPage$1;->this$0:Lteam/opay/pay/home/DexloadActivity;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/pay/home/DexloadActivity$goNextPage$1;-><init>(Lteam/opay/pay/home/DexloadActivity;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/DexloadActivity$goNextPage$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/DexloadActivity$goNextPage$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/home/DexloadActivity$goNextPage$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/home/DexloadActivity$goNextPage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/home/DexloadActivity$goNextPage$1;->label:I

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
    goto/16 :goto_1

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
    iget-object p1, p0, Lteam/opay/pay/home/DexloadActivity$goNextPage$1;->this$0:Lteam/opay/pay/home/DexloadActivity;

    .line 29
    .line 30
    invoke-interface {p1}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 35
    .line 36
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->g1()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-interface {p0}, Ljr2;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v6, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->e1(Lkotlin/coroutines/CoroutineContext;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_5

    .line 53
    .line 54
    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    sget-object v7, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 59
    .line 60
    if-eq v1, v7, :cond_4

    .line 61
    .line 62
    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-ltz v1, :cond_5

    .line 71
    .line 72
    sget-object v0, Lteam/opay/pay/home/LiveFaceDetectionConfig;->Companion:Lteam/opay/pay/home/LiveFaceDetectionConfig$Companion;

    .line 73
    .line 74
    invoke-virtual {v0}, Lteam/opay/pay/home/LiveFaceDetectionConfig$Companion;->a()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 81
    .line 82
    const-class v1, Lcom/opay/face/common/IFaceSoCheck;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcom/opay/face/common/IFaceSoCheck;

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    new-instance v1, Lteam/opay/pay/home/DexloadActivity$goNextPage$1$1$1;

    .line 93
    .line 94
    invoke-direct {v1, p1}, Lteam/opay/pay/home/DexloadActivity$goNextPage$1$1$1;-><init>(Lteam/opay/pay/home/DexloadActivity;)V

    .line 95
    .line 96
    .line 97
    const-string v2, "startuppage"

    .line 98
    .line 99
    const-string v3, "https://opayweb.onelink.me/hGhO/g4fwd4si"

    .line 100
    .line 101
    invoke-interface {v0, p1, v2, v3, v1}, Lcom/opay/face/common/IFaceSoCheck;->checkFaceSo(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/common/NextCallback;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    invoke-static {p1}, Lteam/opay/pay/home/DexloadActivity;->E(Lteam/opay/pay/home/DexloadActivity;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    new-instance p1, Landroidx/lifecycle/LifecycleDestroyedException;

    .line 112
    .line 113
    invoke-direct {p1}, Landroidx/lifecycle/LifecycleDestroyedException;-><init>()V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :cond_5
    new-instance v7, Lteam/opay/pay/home/DexloadActivity$goNextPage$1$invokeSuspend$$inlined$withResumed$1;

    .line 118
    .line 119
    invoke-direct {v7, p1}, Lteam/opay/pay/home/DexloadActivity$goNextPage$1$invokeSuspend$$inlined$withResumed$1;-><init>(Lteam/opay/pay/home/DexloadActivity;)V

    .line 120
    .line 121
    .line 122
    iput v2, p0, Lteam/opay/pay/home/DexloadActivity$goNextPage$1;->label:I

    .line 123
    .line 124
    move-object v8, p0

    .line 125
    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/WithLifecycleStateKt;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Ljr2;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-ne p1, v0, :cond_6

    .line 130
    .line 131
    return-object v0

    .line 132
    :cond_6
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 133
    .line 134
    return-object p1
.end method
