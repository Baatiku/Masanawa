.class final Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KycTakePhotoViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;->F(Lag8;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "team.opay.pay.kyc.task.KycTakePhotoViewModel$uploadPhoto$1"
    f = "KycTakePhotoViewModel.kt"
    l = {
        0x28
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $imagePath:Ljava/lang/String;

.field final synthetic $lifecycleOwner:Lag8;

.field final synthetic $scene:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;Lag8;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;",
            "Lag8;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;->$imagePath:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;->$scene:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;->this$0:Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;->$lifecycleOwner:Lag8;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 6
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
    new-instance p1, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;->$imagePath:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;->$scene:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;->this$0:Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;->$lifecycleOwner:Lag8;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;Lag8;Ljr2;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;->label:I

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
    new-instance v7, Ljava/io/File;

    .line 28
    .line 29
    iget-object p1, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;->$imagePath:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, ""

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    move-object p1, v1

    .line 36
    :cond_2
    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;->$imagePath:Ljava/lang/String;

    .line 40
    .line 41
    if-nez p1, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    move-object v1, p1

    .line 45
    :goto_0
    invoke-static {v1}, Ljmf;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v3, "getName(...)"

    .line 54
    .line 55
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 v12, 0x6

    .line 66
    const/4 v13, 0x0

    .line 67
    const-string v9, "."

    .line 68
    .line 69
    const/4 v10, 0x0

    .line 70
    const/4 v11, 0x0

    .line 71
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->x0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    add-int/2addr v3, v2

    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v3, "substring(...)"

    .line 81
    .line 82
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v5, Lteam/opay/pay/kyc/customer/UploadImageReq;

    .line 86
    .line 87
    iget-object v3, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;->$scene:Ljava/lang/String;

    .line 88
    .line 89
    invoke-direct {v5, v3, v1, p1}, Lteam/opay/pay/kyc/customer/UploadImageReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    new-instance v1, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;

    .line 97
    .line 98
    iget-object v4, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;->this$0:Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;

    .line 99
    .line 100
    iget-object v6, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;->$lifecycleOwner:Lag8;

    .line 101
    .line 102
    const/4 v8, 0x0

    .line 103
    move-object v3, v1

    .line 104
    invoke-direct/range {v3 .. v8}, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;-><init>(Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;Lteam/opay/pay/kyc/customer/UploadImageReq;Lag8;Ljava/io/File;Ljr2;)V

    .line 105
    .line 106
    .line 107
    iput v2, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;->label:I

    .line 108
    .line 109
    invoke-static {p1, v1, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-ne p1, v0, :cond_4

    .line 114
    .line 115
    return-object v0

    .line 116
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 117
    .line 118
    return-object p1
.end method
