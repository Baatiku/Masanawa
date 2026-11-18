.class final Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KycTakePhotoViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1$a;
    }
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
    c = "team.opay.pay.kyc.task.KycTakePhotoViewModel$uploadPhoto$1$1"
    f = "KycTakePhotoViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $file:Ljava/io/File;

.field final synthetic $lifecycleOwner:Lag8;

.field final synthetic $req:Lteam/opay/pay/kyc/customer/UploadImageReq;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;Lteam/opay/pay/kyc/customer/UploadImageReq;Lag8;Ljava/io/File;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;",
            "Lteam/opay/pay/kyc/customer/UploadImageReq;",
            "Lag8;",
            "Ljava/io/File;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;->this$0:Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;->$req:Lteam/opay/pay/kyc/customer/UploadImageReq;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;->$lifecycleOwner:Lag8;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;->$file:Ljava/io/File;

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

.method public static synthetic c(Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;Ljava/io/File;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;->invokeSuspend$lambda$1(Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;Ljava/io/File;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$1(Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;Ljava/io/File;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1$a;->a:[I

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    aget v1, v2, v1

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    const/4 v3, 0x0

    .line 37
    if-eq v1, v2, :cond_2

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    if-eq v1, v2, :cond_1

    .line 41
    .line 42
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v2, Lteam/opay/pay/kyc/base/ErrorMsg;

    .line 51
    .line 52
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    const/4 v8, 0x4

    .line 61
    const/4 v9, 0x0

    .line 62
    const/4 v7, 0x0

    .line 63
    move-object v4, v2

    .line 64
    invoke-direct/range {v4 .. v9}, Lteam/opay/pay/kyc/base/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-static/range {p0 .. p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    new-instance v13, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1$1$3;

    .line 79
    .line 80
    invoke-direct {v13, v0, v3}, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1$1$3;-><init>(Ljava/io/File;Ljr2;)V

    .line 81
    .line 82
    .line 83
    const/4 v14, 0x2

    .line 84
    const/4 v15, 0x0

    .line 85
    const/4 v12, 0x0

    .line 86
    invoke-static/range {v10 .. v15}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Ljava/lang/String;

    .line 95
    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    invoke-static/range {p0 .. p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    new-instance v7, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1$1$2;

    .line 114
    .line 115
    invoke-direct {v7, v0, v3}, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1$1$2;-><init>(Ljava/io/File;Ljr2;)V

    .line 116
    .line 117
    .line 118
    const/4 v8, 0x2

    .line 119
    const/4 v9, 0x0

    .line 120
    const/4 v6, 0x0

    .line 121
    invoke-static/range {v4 .. v9}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 122
    .line 123
    .line 124
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 125
    .line 126
    return-object v0
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
    new-instance p1, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;->this$0:Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;->$req:Lteam/opay/pay/kyc/customer/UploadImageReq;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;->$lifecycleOwner:Lag8;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;->$file:Ljava/io/File;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;-><init>(Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;Lteam/opay/pay/kyc/customer/UploadImageReq;Lag8;Ljava/io/File;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;->this$0:Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;->A(Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;)Lcv7;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;->$req:Lteam/opay/pay/kyc/customer/UploadImageReq;

    .line 18
    .line 19
    invoke-interface {p1, v0}, Lcv7;->z(Lteam/opay/pay/kyc/customer/UploadImageReq;)Lretrofit2/Call;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;->this$0:Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;->$lifecycleOwner:Lag8;

    .line 30
    .line 31
    iget-object v1, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;->this$0:Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;

    .line 32
    .line 33
    iget-object v2, p0, Lteam/opay/pay/kyc/task/KycTakePhotoViewModel$uploadPhoto$1$1;->$file:Ljava/io/File;

    .line 34
    .line 35
    new-instance v3, Lteam/opay/pay/kyc/task/a;

    .line 36
    .line 37
    invoke-direct {v3, v1, v2}, Lteam/opay/pay/kyc/task/a;-><init>(Lteam/opay/pay/kyc/task/KycTakePhotoViewModel;Ljava/io/File;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0, v3}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method
