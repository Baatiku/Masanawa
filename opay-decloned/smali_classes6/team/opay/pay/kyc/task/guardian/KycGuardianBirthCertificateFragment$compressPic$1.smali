.class final Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KycGuardianBirthCertificateFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;->F0(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
    c = "team.opay.pay.kyc.task.guardian.KycGuardianBirthCertificateFragment$compressPic$1"
    f = "KycGuardianBirthCertificateFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $resultPicPath:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;->$resultPicPath:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 3
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
    new-instance p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;->$resultPicPath:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljr2;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "requireContext(...)"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "compress_"

    .line 23
    .line 24
    invoke-static {p1, v0}, Lkmf;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->c()Ljpc;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;->$resultPicPath:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljpc;->M0(Ljava/lang/String;)Ljpc;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->j0(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljpc;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljpc;->R0()Lwm6;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/graphics/Bitmap;

    .line 64
    .line 65
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 66
    .line 67
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 68
    .line 69
    new-instance v3, Ljava/io/FileOutputStream;

    .line 70
    .line 71
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 75
    .line 76
    .line 77
    const/16 v3, 0x3c

    .line 78
    .line 79
    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;

    .line 83
    .line 84
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    new-instance v4, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;

    .line 93
    .line 94
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;

    .line 95
    .line 96
    iget-object v3, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 97
    .line 98
    const/4 v5, 0x0

    .line 99
    invoke-direct {v4, p1, v0, v3, v5}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;-><init>(Ljava/io/File;Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;Lkotlin/jvm/functions/Function1;Ljr2;)V

    .line 100
    .line 101
    .line 102
    const/4 v5, 0x2

    .line 103
    const/4 v6, 0x0

    .line 104
    const/4 v3, 0x0

    .line 105
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    return-object p1

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 119
    .line 120
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1
.end method
