.class final Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TakePhotoWebDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate;->handleResult(Lcom/opay/webview/WebFoundationJsData;Landroid/net/Uri;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Ljava/lang/String;)V
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
    c = "team.opay.business.picture.h5Photo.TakePhotoWebDelegate$handleResult$1"
    f = "TakePhotoWebDelegate.kt"
    l = {
        0x6a,
        0x6c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $uri:Landroid/net/Uri;

.field final synthetic $webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

.field label:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/opay/webview/WebFoundationJsData;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/opay/webview/WebFoundationJsData;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1;->$uri:Landroid/net/Uri;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1;->$webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

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
    new-instance p1, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1;->$uri:Landroid/net/Uri;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1;->$webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1;-><init>(Landroid/net/Uri;Lcom/opay/webview/WebFoundationJsData;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lteam/opay/business/picture/helper/FileTypeUtils;->a:Lteam/opay/business/picture/helper/FileTypeUtils;

    .line 35
    .line 36
    iget-object v1, p0, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1;->$uri:Landroid/net/Uri;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    const-string v1, ""

    .line 45
    .line 46
    :cond_3
    iput v2, p0, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1;->label:I

    .line 47
    .line 48
    invoke-virtual {p1, v1, p0}, Lteam/opay/business/picture/helper/FileTypeUtils;->a(Ljava/lang/String;Ljr2;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-ne p1, v0, :cond_4

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 56
    .line 57
    sget-object v1, Lfk8;->c:Lfk8;

    .line 58
    .line 59
    const-string v2, "callback h5"

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-static {v1, v2, v4, v3, v4}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    new-instance v2, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1$1;

    .line 70
    .line 71
    iget-object v5, p0, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1;->$webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

    .line 72
    .line 73
    invoke-direct {v2, v5, p1, v4}, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1$1;-><init>(Lcom/opay/webview/WebFoundationJsData;Ljava/lang/String;Ljr2;)V

    .line 74
    .line 75
    .line 76
    iput v3, p0, Lteam/opay/business/picture/h5Photo/TakePhotoWebDelegate$handleResult$1;->label:I

    .line 77
    .line 78
    invoke-static {v1, v2, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-ne p1, v0, :cond_5

    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 86
    .line 87
    return-object p1
.end method
